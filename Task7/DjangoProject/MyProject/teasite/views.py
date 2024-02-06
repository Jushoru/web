from django.shortcuts import render

def index(request):
    return render(request, 'teasite/index.html')

def about(request):
    return render(request, 'teasite/about.html')

def services(request):
    return render(request, 'teasite/services.html')
