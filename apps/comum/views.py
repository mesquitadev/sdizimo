from datetime import datetime
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.shortcuts import render

from apps.dizimo.models import Dizimista, Dizimo, Oferta, Batismo, Doacao


@login_required
def inicio(request):
    qtd_dizimistas = Dizimista.objects.count()
    qtd_dizimos = Dizimo.objects.count()
    qtd_ofertas = Oferta.objects.count()
    qtd_batismos = Batismo.objects.count()
    qtd_doacoes = Doacao.objects.count()
    qtd_usuarios = User.objects.count()

    qtd_recebimentos = qtd_dizimos + qtd_batismos + qtd_doacoes + qtd_ofertas

    qtd_aniversariantes = Dizimista.objects.filter(data_nascimento__month=datetime.today().month).count()

    context = {
        'menu': 'inicio',
        'qtd_dizimistas': qtd_dizimistas,
        'qtd_dizimos': qtd_dizimos,
        'qtd_ofertas': qtd_ofertas,
        'qtd_batismos': qtd_batismos,
        'qtd_doacoes': qtd_doacoes,
        'qtd_usuarios': qtd_usuarios,
        'qtd_recebimentos': qtd_recebimentos,
        'qtd_aniversariantes': qtd_aniversariantes
    }
    return render(request, 'inicio.html', context)
