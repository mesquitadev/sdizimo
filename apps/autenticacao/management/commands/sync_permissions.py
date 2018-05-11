# -*- coding: utf-8 -*-

"""
``APP/permissions.xml`` template:

<groups>
    <group>
        <name>suap_operador</name>
        <models>
            <model>
                <app>comum</app>
                <name>sala</name>
                <permissions>
                    <permission>can_add_sala</permission>
                    <permission>can_change_sala</permission>
                    <permission>can_delete_sala</permission>
                </permissions>
            </model>
        </models>
    </group>
</groups>
"""
from os.path import isfile

from django.apps import apps as loader
from django.conf import settings
from django.contrib.auth.models import Group
from django.utils import termcolors

from apps.autenticacao.management.permission import GroupPermission
from apps.autenticacao.management.commands import BaseCommandPlus
from apps.autenticacao.models import GerenciamentoGrupo
from apps.autenticacao.utils import sync_groups_and_permissions


class Command(BaseCommandPlus):

    """
    https://docs.djangoproject.com/en/1.3/ref/django-admin/#django-admin-option---verbosity
    Use --verbosity to specify the amount of notification and debug information that django-admin.py should print to the console.
        0 means no output.
        1 means normal output (default).
        2 means verbose output.
        3 means very verbose output.
    """
    grupos_no_permisions_xml = []

    def handle(self, *args, **options):
        # O trecho abaixo é necessário para funcionar no django 1.0.4
        options['verbosity'] = options.get('verbosity', '1')
        apps = []
        if len(args):
            for arg in args:
                if arg[0:3] == 'app':
                    apps = arg.split('=')[1].split(',')

        group_permission = GroupPermission()
        permissoes = []
        permissoes_list = []
        module_permissions = []
        for app in settings.PROJECT_APPS:

            # recupera todas as permissões dos arquivos de permissions do app
            permissoes.append(self.processar_group_permission(app, apps, options, group_permission))

            # recupera todas as permissões dos modelos do app
            try:
                for model in list(loader.get_app_config(app).get_models()):
                    for permissao in model._meta.permissions:
                        if permissao not in module_permissions:
                            module_permissions.append('{0}.{1}.{2}'.format(app, model.__name__.lower(), permissao[0]))
            except:
                pass

        # verfica se tem alguma permissao no xml mas não no modelo
        permissao_xml = False
        permissao_modelo = False
        for grupo in permissoes:
            if grupo:
                for permissao in grupo:
                    permissoes_list.append(permissao)
                    perm = permissao.split('.')[1]
                    if not self.model_exist(permissao):
                        if not permissao_modelo:
                            self.stderr.write('>>> Modelo inexistente no módulo:')
                            permissao_xml = True
                        self.stderr.write(permissao)
                    elif '.add_{0}'.format(perm) not in permissao and '.view_{0}'.format(perm) not in permissao and '.delete_{0}'.format(perm) not in permissao and '.change_{0}'.format(perm) not in permissao:
                        if permissao not in module_permissions:
                            if not permissao_xml:
                                self.stderr.write('>>> Permissões no xml inexistentes no modelo:')
                                permissao_xml = True
                            self.stderr.write(permissao)

        # verifica se tem alguma permissao no modelo mas não no xml
        permissao_modelo = False
        for permissao in module_permissions:
            perm = permissao.split('.')[1]
            if permissao not in permissoes_list and '.add_{0}'.format(perm) not in permissao and '.view_{0}'.format(perm) not in permissao and '.delete_{0}'.format(perm) not in permissao and '.change_{0}'.format(perm) not in permissao:
                if not permissao_modelo:
                    self.stderr.write('>>> Permissões no modelo inexistentes no xml:')
                    permissao_modelo = True
                self.stderr.write(permissao)

        self.limpar_permissoes_dos_grupos(group_permission)
        sync_groups_and_permissions(group_permission.obter_dicionario())
        # self.processar_grupo_gerenciador(group_permission)
        if options['verbosity']:
            if Group.objects.exclude(id__in=self.grupos_no_permisions_xml).exists():
                self.stdout.write(termcolors.make_style(fg='yellow')('[warning] grupos não existentes nos permissions.xml: {0}'.format(list(Group.objects.exclude(id__in=self.grupos_no_permisions_xml).values_list('id', 'name')))))
            self.stdout.write(termcolors.make_style(fg='green')('[sync_permissions] finished'))

    def processar_group_permission(self, app, apps, options, groupPermission):
        permissoes = []
        if len(apps) == 0 or app in apps:
            app_path = app
            if '.' in app:
                app_path = app.replace('.', '/')
            permissionFileName = '{0}/permissions.xml'.format(app_path)

            # if settings.LPS:
            #     permissionFileName_lps = '{0}/lps/{1}/permissions.xml'.format(app, settings.LPS)
            #     if isfile(permissionFileName_lps):
            #         permissionFileName = permissionFileName_lps

            if isfile(permissionFileName) and (len(apps) == 0 or app in apps):
                if options['verbosity'] in ('2', '3'):
                    self.stdout.write(termcolors.make_style(fg='yellow')('Processing {0}'.format(permissionFileName)))
                try:
                    permissoes = groupPermission.processar(permissionFileName, app)
                except Exception as e:
                    print('Falha ao processar arquivo {0}. Erro: {1}'.format(permissionFileName, e))
        return permissoes

    def model_exist(self, permission):
        try:
            permission_app = permission.split('.')[0]
            permission_model = permission.split('.')[1]
            loader.get_model(permission_app, permission_model)
            return True
        except:
            return False

    def processar_grupo_gerenciador(self, groupPermission):
        """
        Criar um grupo gerenciador de nome 'APP GerenciamentoGrupo.NOME_GRUPO_GERENCIADOR_FORMAT' e coloca ele como gerenciador de todos os grupos da APP, inclusive ele;
        Se o grupo gerenciador já existir ele apenas refaz o processo, limpando todos os grupos gerenciados e colocando de novo um a um
        """
        for nome_app, app in groupPermission.apps.items():
            if '.' in nome_app:
                nome_app = nome_app.replace('apps.', '').capitalize()
            grupo_gerenciador = Group.objects.get_or_create(name=GerenciamentoGrupo.NOME_GRUPO_GERENCIADOR_FORMAT.format(nome_app))[0]
            gerenciamento_grupo = GerenciamentoGrupo.objects.get_or_create(grupo_gerenciador=grupo_gerenciador)[0]
            gerenciamento_grupo.grupos_gerenciados.clear()
            for nome_grupo in app.grupos:
                grupo = Group.objects.get(name=nome_grupo)
                gerenciamento_grupo.grupos_gerenciados.add(grupo)
                self.grupos_no_permisions_xml.append(grupo.id)

            gerenciamento_grupo.grupos_gerenciados.add(grupo_gerenciador)
            self.grupos_no_permisions_xml.append(grupo_gerenciador.id)

    def limpar_permissoes_dos_grupos(self, group_permission):
        """
        Remove todas as permissões dos grupos para que após o processamento eles só tenham as permissões definidas nos permissions.xml
        """
        for grupo in group_permission.obter_grupos():
            nome_grupo = grupo.nome
            grupo = Group.objects.filter(name=nome_grupo)
            if grupo.exists():
                grupo = grupo[0]
                grupo.permissions.clear()
