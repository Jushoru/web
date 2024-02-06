from .models import Back
from django.forms import ModelForm, TextInput, DateTimeInput, Textarea

class BackForm(ModelForm):
    class Meta:
        model = Back
        fields = ['name', 'email', 'comment']

        widgets = {
            "name": TextInput(attrs={
                'class': 'name',
                'placeholder': 'Имя'
            }),
            "email": TextInput(attrs={
                'class': 'email',
                'placeholder': 'Почта'
            }),
            "comment": Textarea(attrs={
                'class': 'comment',
                'placeholder': 'Комментарий'
            })
        }
