from django.shortcuts import render

# Create your views here.
def dashboard(request):
    context = {
        'welcome': 'Welcome!!!'
    }
    return render(request, 'dashboard.html', context)
