from bootstrap_datepicker.widgets import DatePicker
from django import forms
from django.contrib.auth.models import User
from django.forms.models import inlineformset_factory
from django_select2.forms import ModelSelect2Widget

from apps.comum.form_fields import MesAnoField

from .models import Dizimista, Telefone, Oferta, Dizimo, Batismo, Doacao,\
    Paroquia, Igreja, TipoPagamento, Pagamento


###########################################################
#  DIZIMISTAS                                             #
###########################################################

class DizimistaForm(forms.ModelForm):
    class Meta:
        model = Dizimista
        fields = '__all__'


class TelefoneForm(forms.ModelForm):
    class Meta:
        model = Telefone
        fields = ('numero', 'tipo', 'operadora')


TelefoneFormSet = inlineformset_factory(Dizimista, Telefone, fields=('numero', 'tipo', 'operadora'))


class ConsultaDizimistaForm(forms.Form):
    pk = forms.IntegerField(label='Nº Cad.', required=False)
    nome = forms.CharField(label='Nome', required=False)
    paroquia = forms.ModelChoiceField(label='Paróquia', required=False, queryset=Paroquia.objects.all().order_by('nome'))
    comunidade = forms.CharField(label='Comunidade', required=False)


###########################################################
#  OFERTAS                                                #
###########################################################

class ConsultaOfertaForm(forms.Form):
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))


class OfertaForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True)

    class Meta:
        model = Oferta
        fields = ('valor', )
        localized_fields = ('valor', )


###########################################################
#  DIZIMOS                                                #
###########################################################

class DizimoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True, required=True)
    referencia = MesAnoField(label='Referência (Mês/Ano)', required=True)
    dizimista = forms.ModelChoiceField(
        queryset=Dizimista.objects.all(), 
        label='Dizimista', widget=ModelSelect2Widget(
            model=Dizimista,
            search_fields=['nome__unaccent__icontains'],
        )
    )

    class Meta:
        model = Dizimo
        fields = ('dizimista', 'referencia', 'valor')
        localized_fields = ('valor', )


class ConsultaDizimoForm(forms.Form):
    dizimista = forms.CharField(label='Dizimista', required=False)
    referencia = forms.ChoiceField(label='Referência', required=False, choices=[])
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))

    def __init__(self, *args, **kwargs):
        super(ConsultaDizimoForm, self).__init__(*args, **kwargs)
        lista_referencia = [['', '---------']]
        for referencia in Dizimo.objects.values_list('referencia', flat=True).order_by('-referencia').distinct():
            lista_referencia.append([referencia.strftime('%m/%Y'), referencia.strftime('%m/%Y')])

        self.fields['referencia'].choices = lista_referencia


###########################################################
#  BATISMOS                                               #
###########################################################

class BatismoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True, required=True)
    data_batismo = forms.DateField(label='Data do batismo', required=True, widget=DatePicker(options={"autoclose": True}))

    class Meta:
        model = Batismo
        fields = ('nome_batizando', 'nome_solicitante', 'data_batismo', 'valor')
        localized_fields = ('valor', )


class ConsultaBatismoForm(forms.Form):
    nome_batizando = forms.CharField(label='Batizando', required=False)
    nome_solicitante = forms.CharField(label='Solicitante', required=False)
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))


###########################################################
#  DOACOES                                                #
###########################################################

class DoacaoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True, required=True)

    class Meta:
        model = Doacao
        fields = ('valor', 'descricao')
        localized_fields = ('valor', )


class ConsultaDoacaoForm(forms.Form):
    descricao = forms.CharField(label='Descrição', required=False)
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))


###########################################################
#  PAROQUIAS                                              #
###########################################################

class ParoquiaForm(forms.ModelForm):
    class Meta:
        model = Paroquia
        fields = '__all__'


class ConsultaParoquiaForm(forms.Form):
    nome = forms.CharField(label='Nome', required=False)


###########################################################
#  IGREJA                                             #
###########################################################

class IgrejaForm(forms.ModelForm):
    class Meta:
        model = Igreja
        fields = '__all__'


###########################################################
#  RELATORIOS                                             #
###########################################################

class RecebimentosPorPeriodoForm(forms.Form):
    data_inicio = forms.DateField(label='De', widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', widget=DatePicker(options={"autoclose": True}))


###########################################################
#  PAGAMENTOS                                             #
###########################################################

class TipoPagamentoForm(forms.ModelForm):
    class Meta:
        model = TipoPagamento
        fields = '__all__'


class PagamentoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True)

    class Meta:
        model = Pagamento
        fields = ('tipo', 'valor', 'descricao')
        localized_fields = ('valor', )


class ConsultaPagamentoForm(forms.Form):
    tipo = forms.ModelChoiceField(label='Tipo', required=False, queryset=TipoPagamento.objects.all())
    descricao = forms.CharField(label='Descrição', required=False)
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))
