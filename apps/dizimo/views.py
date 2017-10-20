from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.views.generic import CreateView, UpdateView
from django.urls import reverse_lazy

from .models import Dizimista
from .forms import DizimistaForm


@login_required
def dizimistas(request):
    dizimistas = Dizimista.objects.all().order_by('nome')
    context = {
        'dizimistas': dizimistas
    }
    return render(request, 'dizimo/dizimistas.html', context)


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
