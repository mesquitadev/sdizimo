from django.db import models
from localflavor.br.models import BRStateField


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
    endereco = models.CharField(max_length=250, blank=False, null=False, verbose_name='endereço')
    bairro = models.CharField(max_length=100, blank=False, null=False)
    cidade = models.CharField(max_length=100, blank=False, null=False)
    estado = BRStateField(blank=False, null=False)
    paroquia = models.CharField(max_length=100, blank=False, null=False, verbose_name='paróquia')
    comunidade = models.CharField(max_length=100, blank=False, null=False)
    sexo = models.CharField(max_length=1, choices=SEXO, blank=False, null=False)
    estado_civil = models.CharField(max_length=1, choices=ESTADO_CIVIL, blank=False, null=False)
    data_nascimento = models.DateField(null=False, blank=False, verbose_name='data de nascimento')
    # TODO: falta colocar a foto, analisar uso do grappelli

    class Meta:
        ordering = ('nome', )

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
