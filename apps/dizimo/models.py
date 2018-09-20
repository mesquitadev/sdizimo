from django.contrib.auth.models import User
from django.db import models
from localflavor.br.models import BRStateField
from sorl.thumbnail import ImageField


class Paroquia(models.Model):
    nome = models.CharField(max_length=250, blank=False, null=False, unique=True)
    endereco = models.CharField(max_length=250, blank=False, null=False, verbose_name='endereço')
    telefone = models.CharField(max_length=15, blank=False, null=False)

    class Meta:
        ordering = ('nome', )
        permissions = (
            ("view_paroquia", "Can view paroquia"),
            ("list_paroquia", "Can list paroquia"),
        )

    def __str__(self):
        return self.nome


class Dizimista(models.Model):
    SEXO = [
        ['M', u'Masculino'],
        ['F', u'Feminino'],
    ]

    ESTADO_CIVIL = [
        ['C', 'Casado'],
        ['S', 'Solteiro'],
        ['D', 'Divorciado'],
    ]

    nome = models.CharField(max_length=250, blank=False, null=False)
    endereco = models.CharField(max_length=250, blank=True, null=True, verbose_name='endereço')
    bairro = models.CharField(max_length=100, blank=True, null=True)
    cidade = models.CharField(max_length=100, blank=True, null=True)
    estado = BRStateField(blank=True, null=True)
    paroquia = models.ForeignKey(Paroquia, blank=False, null=False, verbose_name='paróquia')
    comunidade = models.CharField(max_length=100, blank=True, null=True)
    sexo = models.CharField(max_length=1, choices=SEXO, blank=False, null=False)
    estado_civil = models.CharField(max_length=1, choices=ESTADO_CIVIL, blank=True, null=True)
    data_nascimento = models.DateField(null=False, blank=False, verbose_name='data de nascimento')
    foto = ImageField(upload_to='dizimistas/fotos', null=True, blank=True)

    class Meta:
        ordering = ('nome', )
        permissions = (
            ("view_dizimista", "Can view dizimista"),
            ("list_dizimista", "Can list dizimista"),
        )

    def __str__(self):
        return self.nome


class Telefone(models.Model):
    TIPO = [
        ['CEL', u'Celular'],
        ['COM', u'Comercial'],
        ['RES', u'Residencial'],
    ]

    OPERADORA = [
        ['CLARO', u'Claro'],
        ['NET', u'Net'],
        ['OI', u'Oi'],
        ['TIM', u'Tim'],
        ['TVN', u'TVN'],
        ['VIVO', u'Vivo'],
    ]

    numero = models.CharField(max_length=15, blank=False, null=False, verbose_name='número')
    tipo = models.CharField(max_length=3, choices=TIPO, blank=False, null=False)
    operadora = models.CharField(max_length=5, choices=OPERADORA)
    dizimista = models.ForeignKey(Dizimista, related_name='telefones')

    def __str__(self):
        return '{0} ({1})'.format(self.numero, self.get_tipo_display())


class Recebimento(models.Model):
    cadastrado_em = models.DateTimeField(auto_now_add=True, verbose_name='cadastrado em')
    usuario = models.ForeignKey(User, verbose_name='usuário')
    valor = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        abstract = True


class Oferta(Recebimento):
    class Meta:
        ordering = ('-cadastrado_em', )
        permissions = (
            ("view_oferta", "Can view oferta"),
            ("list_oferta", "Can list oferta"),
        )

    def __str__(self):
        return 'R$ {0} - registrada em {1}'.format(self.valor, self.cadastrado_em)


class Dizimo(Recebimento):
    dizimista = models.ForeignKey(Dizimista, related_name='dizimos')
    referencia = models.DateField(verbose_name='referência', help_text='Mês/Ano')

    class Meta:
        ordering = ('-referencia', '-cadastrado_em')
        unique_together = ('dizimista', 'referencia')
        permissions = (
            ("view_dizimo", "Can view dizimo"),
            ("list_dizimo", "Can list dizimo"),
        )

    def __str__(self):
        return '{0}: R$ {1} - {2}'.format(self.dizimista, self.valor, self.referencia.strftime('%m/%Y'))


class Batismo(Recebimento):
    nome_batizando = models.CharField(max_length=250, verbose_name='nome do batizando')
    nome_solicitante = models.CharField(max_length=250, verbose_name='nome do solicitante')
    data_batismo = models.DateField(verbose_name='data do batismo')
    hora_batismo = models.TimeField(verbose_name='hora do batismo')

    class Meta:
        ordering = ('-data_batismo', '-hora_batismo')
        permissions = (
            ("view_batismo", "Can view batismo"),
            ("list_batismo", "Can list batismo"),
        )

    def __str__(self):
        return '{0} batizado em {1}'.format(self.nome_batizando, self.data_batismo.strftime('%d/%m/%Y'))


class Doacao(Recebimento):
    descricao = models.CharField(max_length=250, verbose_name='descrição')

    class Meta:
        ordering = ('-cadastrado_em', )
        permissions = (
            ("view_doacao", "Can view doacao"),
            ("list_doacao", "Can list doacao"),
        )

    def __str__(self):
        return 'R$ {0} - registrada em {1}'.format(self.valor, self.cadastrado_em)


class Igreja(models.Model):
    nome = models.CharField(max_length=250, blank=False, null=False)
    endereco = models.CharField(max_length=250, blank=False, null=False, verbose_name='endereço')
    telefone = models.CharField(max_length=15, blank=False, null=False)

    def __str__(self):
        return self.nome

    class Meta:
        permissions = (
            ("view_igreja", "Can view igreja"),
            ("list_igreja", "Can list igreja"),
        )


class TipoPagamento(models.Model):
    descricao = models.CharField(max_length=250, verbose_name='descrição')

    class Meta:
        ordering = ('descricao', )
        permissions = (
            ("view_tipopagamento", "Can view tipopagamento"),
            ("list_tipopagamento", "Can list tipopagamento"),
        )

    def __str__(self):
        return self.descricao


class Pagamento(models.Model):
    tipo = models.ForeignKey(TipoPagamento, related_name='pagamentos')
    valor = models.DecimalField(max_digits=10, decimal_places=2)
    descricao = models.CharField(max_length=250, verbose_name='descrição')
    cadastrado_em = models.DateTimeField(auto_now_add=True, verbose_name='cadastrado em')
    usuario = models.ForeignKey(User, verbose_name='usuário')

    class Meta:
        ordering = ('-cadastrado_em', )
        permissions = (
            ("view_pagamento", "Can view pagamento"),
            ("list_pagamento", "Can list pagamento"),
        )

    def __str__(self):
        return '{1} - R$ {0}'.format(self.valor, self.tipo)
