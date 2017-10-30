from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import CreateView, UpdateView, ListView, DetailView, DeleteView
from django.urls import reverse_lazy

from .models import Dizimista
from .forms import DizimistaForm


class ListaDizimistas(LoginRequiredMixin, ListView):
    model = Dizimista
    context_object_name = 'dizimistas'
    template_name = 'dizimo/dizimistas.html'
    paginate_by = 20

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class NovoDizimista(LoginRequiredMixin, CreateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'dizimo/novo_dizimista.html'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimista', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class EditaDizimista(LoginRequiredMixin, UpdateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'dizimo/edita_dizimista.html'
    context_object_name = 'dizimista'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimista', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class ExibeDizimista(LoginRequiredMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'dizimo/exibe_dizimista.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        kwargs['form_readonly'] = True
        return super().get_context_data(**kwargs)


class ExcluiDizimista(LoginRequiredMixin, DeleteView):
    model = Dizimista
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'dizimo/exclui_dizimista.html'
    context_object_name = 'dizimista'
