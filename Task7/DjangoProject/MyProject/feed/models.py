from django.db import models

class Back(models.Model):
    name = models.CharField('Имя', max_length=20)
    email = models.EmailField('Почта')
    comment = models.TextField('Комментарий')

    def __str__(self):
        return self.email

    class Meta:
        verbose_name = 'Обратная связь'
        verbose_name_plural = 'Обратная связь'
