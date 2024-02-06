from django.shortcuts import render, redirect
from .forms import BackForm

def feedback(request):
    error = ''
    if request.method == 'POST':
        form = BackForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('feedback')
        else:
            error = 'Форма была неверна'


    form = BackForm()
    data = {
        'form': form
    }
    return render(request, 'feed/feedback.html', data)
