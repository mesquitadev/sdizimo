from datetime import datetime
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from apps.dizimo.models import Dizimista, Dizimo, Oferta, Batismo, Doacao, Pagamento


@login_required
def inicio(request):
    mes_atual = datetime.today().month
    qtd_dizimistas = Dizimista.objects.count()
    qtd_dizimos = Dizimo.objects.filter(cadastrado_em__month=mes_atual).count()
    qtd_ofertas = Oferta.objects.filter(cadastrado_em__month=mes_atual).count()
    qtd_batismos = Batismo.objects.filter(cadastrado_em__month=mes_atual).count()
    qtd_doacoes = Doacao.objects.filter(cadastrado_em__month=mes_atual).count()
    qtd_pagamentos = Pagamento.objects.filter(cadastrado_em__month=mes_atual).count()

    qtd_recebimentos = qtd_dizimos + qtd_batismos + qtd_doacoes + qtd_ofertas

    qtd_aniversariantes = Dizimista.objects.filter(data_nascimento__month=mes_atual).count()

    context = {
        'menu': 'inicio',
        'qtd_dizimistas': qtd_dizimistas,
        'qtd_dizimos': qtd_dizimos,
        'qtd_ofertas': qtd_ofertas,
        'qtd_batismos': qtd_batismos,
        'qtd_doacoes': qtd_doacoes,
        'qtd_pagamentos': qtd_pagamentos,
        'qtd_recebimentos': qtd_recebimentos,
        'qtd_aniversariantes': qtd_aniversariantes
    }
    return render(request, 'inicio.html', context)
