from django.db import models
from django.contrib.auth.models import User, Group
from django_cleanup.signals import cleanup_pre_delete
from sorl.thumbnail import ImageField

from apps.dizimo.models import Paroquia


class Perfil(models.Model):
    ADMINISTRADOR = 1
    OPERADOR = 2
    SUPERVISOR = 3
    PAPEL_CHOICES = [
        (ADMINISTRADOR, 'Administrador'),
        (OPERADOR, 'Operador'),
        (SUPERVISOR, 'Supervisor'),
    ]
    PAPEL_CHOICES_EMPTY = [('', '---------')] + PAPEL_CHOICES

    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    papel = models.PositiveSmallIntegerField(choices=PAPEL_CHOICES, default=ADMINISTRADOR)
    foto = ImageField(upload_to='usuarios/fotos', null=True, blank=True)
    paroquia = models.ForeignKey(Paroquia, on_delete=models.CASCADE)

    class Meta:
        permissions = (
            ("view_perfil", "Can view perfil"),
            ("list_perfil", "Can list perfil"),
        )

    def __str__(self):
        return self.usuario.username

    def save(self, *args, **kwargs):
        # remove todos os grupos do usuario
        self.usuario.groups.clear()
        # adiciona grupo do usuario conforme o papel
        if self.papel == self.ADMINISTRADOR:
            # adiciona administrador dizimos e administrador autenticacao
            admin_usuarios = Group.objects.get(name='Administrador Usuários')
            admin_dizimos = Group.objects.get(name='Administrador Dízimos')
            self.usuario.groups.add(admin_usuarios)
            self.usuario.groups.add(admin_dizimos)
            # add_user_group_permissions(admin_usuarios, self.usuario)
            # add_user_group_permissions(admin_dizimos, self.usuario)
        elif self.papel == self.SUPERVISOR:
            # adiciona supervisor
            supervisor = Group.objects.get(name='Supervisor Dízimos')
            self.usuario.groups.add(supervisor)
            # add_user_group_permissions(supervisor, self.usuario)
        elif self.papel == self.OPERADOR:
            # adiciona operador
            operador = Group.objects.get(name='Operador Dízimos')
            self.usuario.groups.add(operador)
            # add_user_group_permissions(operador, self.usuario)
        super(Perfil, self).save(*args, **kwargs)

    def eh_administrador(self):
        return self.papel == self.ADMINISTRADOR


def get_name(self):
    return self.get_full_name()


User.add_to_class("__str__", get_name)


def add_user_group_permissions(group, user):
    user.user_permissions.clear()
    for p in group.permissions.all():
        user.user_permissions.add(p)


def sorl_delete(**kwargs):
    from sorl.thumbnail import delete
    delete(kwargs['file'])


cleanup_pre_delete.connect(sorl_delete)

# @receiver(post_save, sender=User)
# def cria_perfil_usuario(sender, instance, created, **kwargs):
#     if created:
#         Perfil.objects.create(usuario=instance)


# @receiver(post_save, sender=User)
# def salva_perfil_usuario(sender, instance, **kwargs):
#     instance.perfil.save()


class GerenciamentoGrupo(models.Model):
    grupo_gerenciador = models.ForeignKey(Group, related_name='grupo_gerenciador_set', on_delete=models.CASCADE)
    grupos_gerenciados = models.ManyToManyField(Group, related_name='grupos_gerenciados_set')
    eh_local = models.BooleanField(u'É Local?', default=False)

    NOME_GRUPO_GERENCIADOR_FORMAT = u'{} Administrador'

    class Meta:
        verbose_name = u"Gerenciamento de Grupo"
        verbose_name_plural = u"Gerenciamento de Grupos"

    def __unicode__(self):
        return u"{}".format(self.grupo_gerenciador.name)

    @classmethod
    def user_can_manage(cls, user):
        return user.is_superuser or cls.objects.filter(grupo_gerenciador__in=user.groups.all()).exists()
