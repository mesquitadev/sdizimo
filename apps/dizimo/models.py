from django.contrib.auth.models import User
from django.db import models
from localflavor.br.models import BRStateField
from sorl.thumbnail import ImageField


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
    foto = ImageField(upload_to='dizimistas/fotos', null=True, blank=True)

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


class Recebimento(models.Model):
    recebida_em = models.DateTimeField(auto_now_add=True, verbose_name='recebida em')
    usuario = models.ForeignKey(User, verbose_name='usuário')
    valor = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        abstract = True


class Oferta(Recebimento):
    class Meta:
        ordering = ('-recebida_em', )

    def __str__(self):
        return 'R$ {0} - recebida em {1}'.format(self.valor, self.recebida_em)


class Dizimo(Recebimento):
    dizimista = models.ForeignKey(Dizimista, related_name='dizimos')
    referencia = models.DateField(verbose_name='referência', help_text='Mês/Ano')

    class Meta:
        ordering = ('-referencia', '-recebida_em')

    def __str__(self):
        return '{0}: R$ {1} - {2}'.format(self.dizimista, self.valor, self.referencia.strftime('%m/%Y'))


class Batismo(Recebimento):
    nome_batizando = models.CharField(max_length=250, verbose_name='nome do batizando')
    nome_solicitante = models.CharField(max_length=250, verbose_name='nome do solicitante')
    data_batismo = models.DateField(verbose_name='data do batismo')

    class Meta:
        ordering = ('-data_batismo', )

    def __str__(self):
        return '{0} batizado em {2}'.format(self.nome_batizando, self.data_batismo.strftime('%d/%m/%Y'))
