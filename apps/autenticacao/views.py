from django.contrib.auth import login as auth_login
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.views.generic import UpdateView, CreateView, DeleteView, DetailView
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from search_views.search import SearchListView

from .filters import UsuarioFilter
from .forms import ConsultaUsuarioForm, NovoUsuarioForm, PerfilForm
from .models import Perfil


class EditaMeuUsuario(LoginRequiredMixin, UpdateView):
    model = User
    fields = ('first_name', 'last_name', 'email', )
    template_name = 'autenticacao/perfil_usuario.html'
    success_url = reverse_lazy('perfil_usuario')
    context_object_name = 'user'

    def get_object(self, queryset=None):
        return self.request.user


class ListaUsuarios(LoginRequiredMixin, SearchListView):
    model = User
    context_object_name = 'usuarios'
    template_name = 'autenticacao/usuarios.html'
    paginate_by = 20
    form_class = ConsultaUsuarioForm
    filter_class = UsuarioFilter

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'usuarios'
        return super().get_context_data(**kwargs)


class NovoUsuario(LoginRequiredMixin, CreateView):
    model = User
    form_class = NovoUsuarioForm
    template_name = 'autenticacao/novo_usuario.html'

    def get_success_url(self):
        return reverse_lazy('exibe_usuario', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'usuarios'
        if self.request.POST:
            context['perfil_form'] = PerfilForm(self.request.POST)
        else:
            context['perfil_form'] = PerfilForm()
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        perfil_form = context['perfil_form']
        if perfil_form.is_valid():
            usuario = form.save()
            perfil = perfil_form.save(commit=False)
            perfil.usuario = usuario
            if perfil.papel == Perfil.ADMINISTRADOR:
                perfil.usuario.is_superuser = True
            perfil.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class ExibeUsuario(LoginRequiredMixin, DetailView):
    model = User
    context_object_name = 'usuario'
    template_name = 'autenticacao/exibe_usuario.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'usuarios'
        return super().get_context_data(**kwargs)


class ExcluiUsuario(LoginRequiredMixin, DeleteView):
    model = User
    success_url = reverse_lazy('usuarios')
    template_name = 'autenticacao/exclui_usuario.html'
    context_object_name = 'usuario'
