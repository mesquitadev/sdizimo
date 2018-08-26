import qsstats
from datetime import datetime, date
from django.contrib.auth.decorators import login_required
from django.db.models import Sum
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

    # graficos
    ano_atual = datetime.today().year
    inicio, fim = date(ano_atual, 1, 1), date(ano_atual, 12, 31)
    # pagamentos
    estatisticas_pagamentos = [float(r[1]) for r in gera_estatisticas(Pagamento.objects.filter(cadastrado_em__year=ano_atual), inicio, fim)]
    # recebimentos
    dizimos = [float(r[1]) for r in gera_estatisticas(Dizimo.objects.filter(cadastrado_em__year=ano_atual), inicio, fim)]
    ofertas = [float(r[1]) for r in gera_estatisticas(Oferta.objects.filter(cadastrado_em__year=ano_atual), inicio, fim)]
    batismos = [float(r[1]) for r in gera_estatisticas(Batismo.objects.filter(cadastrado_em__year=ano_atual), inicio, fim)]
    doacoes = [float(r[1]) for r in gera_estatisticas(Doacao.objects.filter(cadastrado_em__year=ano_atual), inicio, fim)]
    recebimentos = [dizimos, ofertas, batismos, doacoes]
    estatisticas_recebimentos = [sum(x) for x in zip(*recebimentos)]

    context = {
        'menu': 'inicio',
        'qtd_dizimistas': qtd_dizimistas,
        'qtd_dizimos': qtd_dizimos,
        'qtd_ofertas': qtd_ofertas,
        'qtd_batismos': qtd_batismos,
        'qtd_doacoes': qtd_doacoes,
        'qtd_pagamentos': qtd_pagamentos,
        'qtd_recebimentos': qtd_recebimentos,
        'qtd_aniversariantes': qtd_aniversariantes,
        'estatisticas_pagamentos': estatisticas_pagamentos,
        'estatisticas_recebimentos': estatisticas_recebimentos
    }
    return render(request, 'inicio.html', context)


def gera_estatisticas(queryset, inicio_intervalo, fim_intervalo):
    estatisticas = qsstats.QuerySetStats(queryset, 'cadastrado_em', aggregate=Sum('valor'))
    return estatisticas.time_series(inicio_intervalo, fim_intervalo, interval='months')