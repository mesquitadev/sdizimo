from django.db import models
from django.contrib.auth.models import User
from sorl.thumbnail import ImageField


class Perfil(models.Model):
    ADMINISTRADOR = 1
    OPERADOR = 2
    PAPEL_CHOICES = [
        (ADMINISTRADOR, 'Administrador'),
        (OPERADOR, 'Operador'),
    ]
    PAPEL_CHOICES_EMPTY = [('', '---------')] + PAPEL_CHOICES

    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    papel = models.PositiveSmallIntegerField(choices=PAPEL_CHOICES, default=ADMINISTRADOR)
    foto = ImageField(upload_to='usuarios/fotos', null=True, blank=True)

    def __str__(self):
        return self.usuario.username


# @receiver(post_save, sender=User)
# def cria_perfil_usuario(sender, instance, created, **kwargs):
#     if created:
#         Perfil.objects.create(usuario=instance)


# @receiver(post_save, sender=User)
# def salva_perfil_usuario(sender, instance, **kwargs):
#     instance.perfil.save()
