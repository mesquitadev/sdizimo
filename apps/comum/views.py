from django.contrib.auth.decorators import login_required
from django.shortcuts import render


@login_required
def inicio(request):
    context = {
        'welcome': 'Welcome!!!'
    }
    return render(request, 'comum/inicio.html', context)
