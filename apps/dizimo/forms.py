from bootstrap_datepicker.widgets import DatePicker
from django import forms
from django.contrib.auth.models import User
from django.forms.models import inlineformset_factory

from apps.comum.form_fields import MesAnoField

from .models import Dizimista, Telefone, Oferta, Dizimo, Batismo


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
    paroquia = forms.CharField(label='Paróquia', required=False)
    comunidade = forms.CharField(label='Comunidade', required=False)


###########################################################
#  OFERTAS                                                #
###########################################################

class ConsultaOfertaForm(forms.Form):
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))


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

    class Meta:
        model = Dizimo
        fields = ('dizimista', 'referencia', 'valor')
        localized_fields = ('valor', )


class ConsultaDizimoForm(forms.Form):
    dizimista = forms.CharField(label='Dizimista', required=False)
    referencia = forms.ChoiceField(label='Referência', required=False, choices=[])
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))

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
    nome_solicitante = forms.ChoiceField(label='Solicitante', required=False, choices=[])
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
