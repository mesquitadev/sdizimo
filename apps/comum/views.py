from datetime import datetime, date
from django.contrib.auth.decorators import login_required
from django.db.models import Sum
from django.shortcuts import render
import qsstats

from apps.comum.html.calendarios import Calendario
from apps.dizimo.models import Dizimista, Dizimo, Oferta, Batismo, Doacao, Pagamento


@login_required
def inicio(request):
    paroquia = request.user.perfil.paroquia
    mes_atual = datetime.today().month

    qtd_dizimistas = Dizimista.objects.filter(paroquia=paroquia).count()
    qtd_dizimos = Dizimo.objects.filter(cadastrado_em__month=mes_atual, paroquia=paroquia).count()
    qtd_ofertas = Oferta.objects.filter(cadastrado_em__month=mes_atual, paroquia=paroquia).count()
    qtd_batismos = Batismo.objects.filter(cadastrado_em__month=mes_atual, paroquia=paroquia).count()
    qtd_doacoes = Doacao.objects.filter(cadastrado_em__month=mes_atual, paroquia=paroquia).count()
    qtd_pagamentos = Pagamento.objects.filter(cadastrado_em__month=mes_atual, paroquia=paroquia).count()

    qtd_recebimentos = qtd_dizimos + qtd_batismos + qtd_doacoes + qtd_ofertas

    qtd_aniversariantes = Dizimista.objects.filter(data_nascimento__month=mes_atual, paroquia=paroquia).count()

    # grafico pagamentos x recebimentos
    ano_atual = datetime.today().year
    ini, fim = date(ano_atual, 1, 1), date(ano_atual, 12, 31)
    # pagamentos
    estatisticas_pagamentos = [float(r[1]) for r in gera_estatisticas(Pagamento.objects.filter(cadastrado_em__year=ano_atual, paroquia=paroquia), ini, fim)]
    # recebimentos
    dizimos = [float(r[1]) for r in gera_estatisticas(Dizimo.objects.filter(cadastrado_em__year=ano_atual, paroquia=paroquia), ini, fim)]
    ofertas = [float(r[1]) for r in gera_estatisticas(Oferta.objects.filter(cadastrado_em__year=ano_atual, paroquia=paroquia), ini, fim)]
    batismos = [float(r[1]) for r in gera_estatisticas(Batismo.objects.filter(cadastrado_em__year=ano_atual, paroquia=paroquia), ini, fim)]
    doacoes = [float(r[1]) for r in gera_estatisticas(Doacao.objects.filter(cadastrado_em__year=ano_atual, paroquia=paroquia), ini, fim)]
    recebimentos = [dizimos, ofertas, batismos, doacoes]
    estatisticas_recebimentos = [sum(x) for x in zip(*recebimentos)]

    # grafico dizimistas em dia
    estatisticas_dizimistas = gera_estatisticas_dizimistas_em_dia(qtd_dizimistas, ano_atual)

    # calendario mes atual
    cal = Calendario()
    cal.mostrar_mes_ano_cabecalho_mes = True
    # batismos
    batismos_mes_atual = Batismo.objects.filter(data_batismo__month=mes_atual, paroquia=paroquia).order_by('data_batismo', 'hora_batismo')
    adiciona_batismos_calendario(cal, batismos_mes_atual)
    # aniversariantes
    aniversariantes_mes_atual = Dizimista.objects.filter(paroquia=paroquia, data_nascimento__month=mes_atual).order_by('data_nascimento', 'nome')
    adiciona_aniversariantes_calendario(cal, aniversariantes_mes_atual, ano_atual)
    calendario_mes_atual = cal.formato_mes(ano_atual, mes_atual)

    # calendario proximo mes
    proximo_mes = mes_atual + 1
    if proximo_mes > 12:
            proximo_mes = 1
            ano_atual += 1
    cal2 = Calendario()
    cal2.mostrar_mes_ano_cabecalho_mes = True
    # batismos
    batismos_proximo_mes = Batismo.objects.filter(data_batismo__month=proximo_mes, paroquia=paroquia).order_by('data_batismo', 'hora_batismo')
    adiciona_batismos_calendario(cal2, batismos_proximo_mes)
    # aniversariantes
    aniversariantes_proximo_mes = Dizimista.objects.filter(paroquia=paroquia, data_nascimento__month=proximo_mes).order_by('data_nascimento', 'nome')
    adiciona_aniversariantes_calendario(cal2, aniversariantes_proximo_mes, ano_atual)
    calendario_proximo_mes = cal2.formato_mes(ano_atual, proximo_mes)

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
        'estatisticas_recebimentos': estatisticas_recebimentos,
        'estatisticas_dizimistas': estatisticas_dizimistas,
        'dizimistas_em_dia_mes_atual': estatisticas_dizimistas[mes_atual-1] if estatisticas_dizimistas else 0,
        'calendario_mes_atual': calendario_mes_atual,
        'calendario_proximo_mes': calendario_proximo_mes
    }
    return render(request, 'inicio.html', context)


def porcentagem(parte, total):
    return 100 * float(parte)/float(total)


def gera_estatisticas(queryset, inicio_intervalo, fim_intervalo):
    estatisticas = qsstats.QuerySetStats(queryset, 'cadastrado_em', aggregate=Sum('valor'))
    return estatisticas.time_series(inicio_intervalo, fim_intervalo, interval='months')


def gera_estatisticas_dizimistas_em_dia(qtd_dizimistas, ano):
    if qtd_dizimistas > 0:
        ini, fim = date(ano, 1, 1), date(ano, 12, 31)
        queryset = Dizimo.objects.filter(referencia__year=ano)
        estatisticas = qsstats.QuerySetStats(queryset, 'referencia')
        qtd_dizimos_por_mes = estatisticas.time_series(ini, fim, interval='months')
        return [int(porcentagem(x[1], qtd_dizimistas)) for x in qtd_dizimos_por_mes]


def adiciona_batismos_calendario(calendario, batismos):
    for batismo in batismos:
        calendario.adicionar_evento_calendario(batismo.data_batismo, batismo.data_batismo, 'Batismo de {0} às {1}'.format(batismo.nome_batizando, batismo.hora_batismo.strftime('%H:%M')), 'success')


def adiciona_aniversariantes_calendario(calendario, aniversariantes, ano):
    for dizimista in aniversariantes:
        data_aniversario = dizimista.data_nascimento.replace(year=ano)
        idade = data_aniversario.year - dizimista.data_nascimento.year
        calendario.adicionar_evento_calendario(data_aniversario, data_aniversario, 'Aniversário de {0} ({1} anos)'.format(dizimista.nome, idade), 'success')
