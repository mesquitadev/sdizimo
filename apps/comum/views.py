from django.shortcuts import render

# Create your views here.
def inicio(request):
    context = {
        'welcome': 'Welcome!!!'
    }
    return render(request, 'inicio.html', context)
