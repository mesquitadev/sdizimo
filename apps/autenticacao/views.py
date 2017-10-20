from django.contrib.auth import login as auth_login
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.views.generic import UpdateView
from django.shortcuts import render, redirect
from django.urls import reverse_lazy

from .forms import SignUpForm


def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            auth_login(request, user)
            return redirect('inicio')
    else:
        form = SignUpForm()
    return render(request, 'autenticacao/signup.html', {'form': form})


class EditaUsuario(LoginRequiredMixin, UpdateView):
    model = User
    fields = ('first_name', 'last_name', 'email', )
    template_name = 'autenticacao/perfil_usuario.html'
    success_url = reverse_lazy('perfil_usuario')

    def get_object(self, queryset=None):
        return self.request.user
