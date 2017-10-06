from django.db import models


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

    numero = models.CharField(max_length=9, blank=False, null=False)
    tipo = models.CharField(max_length=3, choices=TIPO, blank=False, null=False)
    operadora = models.CharField(max_length=5, choices=OPERADORA)

    def __str__(self):
        return '{0} ({1})'.format(self.numero, self.get_tipo_display())


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
    endereco = models.CharField(max_length=250, blank=False, null=False)
    bairro = models.CharField(max_length=100, blank=False, null=False)
    cidade = models.CharField(max_length=100, blank=False, null=False)
    telefones = models.ManyToManyField(Telefone)
    paroquia = models.CharField(max_length=100, blank=False, null=False)
    comunidade = models.CharField(max_length=100, blank=False, null=False)
    sexo = models.CharField(max_length=1, choices=SEXO, blank=False, null=False)
    estado_civil = models.CharField(max_length=1, choices=ESTADO_CIVIL, blank=False, null=False)
    data_nascimento = models.DateField(null=False, blank=False)
    # TODO: falta colocar a foto, analisar uso do grappelli

    def __str__(self):
        return self.nome
