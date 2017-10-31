# from bootstrap_datepicker.widgets import DatePicker
from django import forms
from django.forms.models import inlineformset_factory, formset_factory

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
TelefoneFormSet = inlineformset_factory(Dizimista, Telefone, fields = ('numero', 'tipo', 'operadora'))
