from django.contrib.auth.decorators import login_required
from django.shortcuts import render


@login_required
def inicio(request):
    context = {
        'menu': 'inicio'
    }
    return render(request, 'comum/inicio.html', context)
