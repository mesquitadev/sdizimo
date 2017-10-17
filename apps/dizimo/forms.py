from django import forms
from .models import Dizimista

class DizimistaForm(forms.ModelForm):
    class Meta:
        model = Dizimista
        fields = '__all__'
