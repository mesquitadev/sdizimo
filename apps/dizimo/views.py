from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import CreateView, UpdateView, ListView
from django.urls import reverse_lazy

from .models import Dizimista
from .forms import DizimistaForm


class ListaDizimistas(LoginRequiredMixin, ListView):
    model = Dizimista
    context_object_name = 'dizimistas'
    template_name = 'dizimo/dizimistas.html'
    paginate_by = 20


class NovoDizimista(LoginRequiredMixin, CreateView):
    model = Dizimista
    form_class = DizimistaForm
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'dizimo/novo_dizimista.html'


class EditaDizimista(LoginRequiredMixin, UpdateView):
    model = Dizimista
    form_class = DizimistaForm
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'dizimo/edita_dizimista.html'
    context_object_name = 'dizimista'
