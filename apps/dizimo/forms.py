from bootstrap_datepicker.widgets import DatePicker
from django import forms
from django.contrib.auth.models import User
from django.forms.models import inlineformset_factory

from .models import Dizimista, Telefone, Oferta


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
    data_inicio = forms.DateTimeField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateTimeField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))


class OfertaForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True)

    class Meta:
        model = Oferta
        fields = ('valor', )
        localized_fields = ('valor', )
