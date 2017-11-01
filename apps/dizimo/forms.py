# from bootstrap_datepicker.widgets import DatePicker
from django import forms
from django.forms.models import inlineformset_factory

from .models import Dizimista, Telefone


class DizimistaForm(forms.ModelForm):
    # data_nascimento = forms.DateField(widget=DatePicker(options={"autoclose": True}))

    class Meta:
        model = Dizimista
        fields = '__all__'


class TelefoneForm(forms.ModelForm):
    class Meta:
        model = Telefone
        fields = ('numero', 'tipo', 'operadora')


# TelefoneFormSet = formset_factory(TelefoneForm, can_delete=True, extra=3)
TelefoneFormSet = inlineformset_factory(Dizimista, Telefone, fields=('numero', 'tipo', 'operadora'))


class ConsultaDizimistaForm(forms.Form):
    nome = forms.CharField(label='Nome', required=False)
    paroquia = forms.CharField(label='Paróquia', required=False)
    comunidade = forms.CharField(label='Comunidade', required=False)
