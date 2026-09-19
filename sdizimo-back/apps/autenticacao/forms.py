from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

from .models import Perfil
from apps.dizimo.models import Paroquia


class ConsultaUsuarioForm(forms.Form):
    nome = forms.CharField(label='Nome', required=False)
    perfil = forms.ChoiceField(label='Perfil', choices=Perfil.PAPEL_CHOICES_EMPTY, required=False)
    paroquia = forms.ModelChoiceField(label='Paróquia', queryset=Paroquia.objects.all(), required=False)


class NovoUsuarioForm(UserCreationForm):
    username = forms.CharField(max_length=150, required=True, label='Nome de usuário', help_text='Obrigatório. 150 caracteres ou menos. Letras, números e @/./+/-/_ apenas.')
    email = forms.CharField(max_length=254, required=True, widget=forms.EmailInput())

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2')


class EditaUsuarioForm(forms.ModelForm):
    username = forms.CharField(max_length=150, required=True, label='Nome de usuário', help_text='Obrigatório. 150 caracteres ou menos. Letras, números e @/./+/-/_ apenas.')
    email = forms.CharField(max_length=254, required=True, widget=forms.EmailInput())

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email')


class PerfilForm(forms.ModelForm):
    paroquia = forms.ModelChoiceField(label='Paróquia', queryset=Paroquia.objects.all())

    class Meta:
        model = Perfil
        fields = ('papel', 'paroquia', 'foto')


class MeuUsuarioForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email')


class MeuPerfilForm(forms.ModelForm):
    class Meta:
        model = Perfil
        fields = ('foto', )
