from bootstrap_datepicker.widgets import DatePicker
from django import forms
from .models import Dizimista

class DizimistaForm(forms.ModelForm):
    # data_nascimento = forms.DateField(widget=DatePicker(options={"autoclose": True}))

    class Meta:
        model = Dizimista
        fields = '__all__'
