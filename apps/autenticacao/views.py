from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.views.generic import UpdateView, CreateView, DeleteView, DetailView
from django.shortcuts import redirect
from django.urls import reverse_lazy
from search_views.search import SearchListView

from .filters import UsuarioFilter
from .forms import ConsultaUsuarioForm, UsuarioForm, PerfilForm, MeuPerfilForm, MeuUsuarioForm
from .models import Perfil


class EditaMeuUsuario(LoginRequiredMixin, UpdateView):
    model = User
    form_class = MeuUsuarioForm
    template_name = 'autenticacao/perfil_usuario.html'
    success_url = reverse_lazy('perfil_usuario')
    context_object_name = 'user'

    def get_object(self, queryset=None):
        return self.request.user

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        if self.request.POST:
            context['perfil_form'] = MeuPerfilForm(self.request.POST, self.request.FILES, instance=self.object.perfil)
        else:
            context['perfil_form'] = MeuPerfilForm(instance=self.object.perfil)
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        perfil_form = context['perfil_form']
        if form.is_valid() and perfil_form.is_valid():
            form.save()
            perfil_form.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class ListaUsuarios(LoginRequiredMixin, SearchListView):
    model = User
    context_object_name = 'usuarios'
    template_name = 'autenticacao/usuarios.html'
    paginate_by = 20
    form_class = ConsultaUsuarioForm
    filter_class = UsuarioFilter
    ordering = 'username'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'usuarios'
        return super().get_context_data(**kwargs)


class NovoUsuario(LoginRequiredMixin, CreateView):
    model = User
    form_class = UsuarioForm
    template_name = 'autenticacao/novo_usuario.html'

    def get_success_url(self):
        return reverse_lazy('exibe_usuario', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'usuarios'
        if self.request.POST:
            context['perfil_form'] = PerfilForm(self.request.POST, self.request.FILES)
        else:
            context['perfil_form'] = PerfilForm()
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        perfil_form = context['perfil_form']
        if form.is_valid() and perfil_form.is_valid():
            self.object = form.save()
            perfil = perfil_form.save(commit=False)
            perfil.usuario = self.object
            if perfil.papel == Perfil.ADMINISTRADOR:
                perfil.usuario.is_superuser = True
            else:
                perfil.usuario.is_superuser = False
            perfil.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class EditaUsuario(LoginRequiredMixin, UpdateView):
    model = User
    form_class = UsuarioForm
    context_object_name = 'usuario'
    template_name = 'autenticacao/edita_usuario.html'

    def get_success_url(self):
        return reverse_lazy('exibe_usuario', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'usuarios'
        if self.request.POST:
            context['perfil_form'] = PerfilForm(self.request.POST, self.request.FILES, instance=self.object.perfil)
        else:
            context['perfil_form'] = PerfilForm(instance=self.object.perfil)
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        perfil_form = context['perfil_form']
        if form.is_valid() and perfil_form.is_valid():
            self.object = form.save()
            perfil = perfil_form.save(commit=False)
            perfil.usuario = self.object
            if perfil.papel == Perfil.ADMINISTRADOR:
                perfil.usuario.is_superuser = True
            else:
                perfil.usuario.is_superuser = False
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
