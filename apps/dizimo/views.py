from django.shortcuts import render
from .models import Dizimista


def dizimistas(request):
    dizimistas = Dizimista.objects.all().order_by('nome')
    context = {
        'dizimistas': dizimistas
    }
    return render(request, 'dizimo/dizimistas.html', context)


def novo_dizimista(request):
    context = {
        'msg': 'novo dizimista'
    }
    return render(request, 'dizimo/novo_dizimista.html', context)
