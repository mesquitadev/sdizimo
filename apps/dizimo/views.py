from django.shortcuts import render, redirect
from .models import Dizimista
from .forms import DizimistaForm


def dizimistas(request):
    dizimistas = Dizimista.objects.all().order_by('nome')
    context = {
        'dizimistas': dizimistas
    }
    return render(request, 'dizimo/dizimistas.html', context)


def novo_dizimista(request):
    if request.method == 'POST':
        form = DizimistaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('dizimo:dizimistas')
    else:
        form = DizimistaForm()

    return render(request, 'dizimo/novo_dizimista.html', {'form': form})
