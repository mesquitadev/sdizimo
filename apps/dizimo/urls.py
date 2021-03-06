from django.conf.urls import url
from . import views


urlpatterns = [
    # dizimistas
    url(r'^dizimistas/$', views.ListaDizimistas.as_view(), name='dizimistas'),
    url(r'^dizimistas/novo/$', views.NovoDizimista.as_view(), name='novo_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/edita/$', views.EditaDizimista.as_view(), name='edita_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/exibe/$', views.ExibeDizimista.as_view(), name='exibe_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/exibe/pdf$', views.ExibeDizimistaPDF.as_view(), name='exibe_dizimista_pdf'),
    url(r'^dizimistas/(?P<pk>\d+)/exclui/$', views.ExcluiDizimista.as_view(), name='exclui_dizimista'),

    # ofertas
    url(r'^ofertas/$', views.ListaOfertas.as_view(), name='ofertas'),
    url(r'^ofertas/nova/$', views.NovaOferta.as_view(), name='nova_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/edita/$', views.EditaOferta.as_view(), name='edita_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/exibe/$', views.ExibeOferta.as_view(), name='exibe_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/exclui/$', views.ExcluiOferta.as_view(), name='exclui_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/recibo/$', views.ReciboOferta.as_view(), name='recibo_oferta'),

    # dizimos
    url(r'^dizimos/$', views.ListaDizimos.as_view(), name='dizimos'),
    url(r'^dizimos/novo/$', views.NovoDizimo.as_view(), name='novo_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/edita/$', views.EditaDizimo.as_view(), name='edita_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/exibe/$', views.ExibeDizimo.as_view(), name='exibe_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/exclui/$', views.ExcluiDizimo.as_view(), name='exclui_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/recibo/$', views.ReciboDizimo.as_view(), name='recibo_dizimo'),
    url(r'^dizimos/(?P<ref>\d+)/clona/$', views.ClonaDizimo.as_view(), name='clona_dizimo'),

    # batismos
    url(r'^batismos/$', views.ListaBatismos.as_view(), name='batismos'),
    url(r'^batismos/novo/$', views.NovoBatismo.as_view(), name='novo_batismo'),
    url(r'^batismos/(?P<pk>\d+)/edita/$', views.EditaBatismo.as_view(), name='edita_batismo'),
    url(r'^batismos/(?P<pk>\d+)/exibe/$', views.ExibeBatismo.as_view(), name='exibe_batismo'),
    url(r'^batismos/(?P<pk>\d+)/exclui/$', views.ExcluiBatismo.as_view(), name='exclui_batismo'),
    url(r'^batismos/(?P<pk>\d+)/recibo/$', views.ReciboBatismo.as_view(), name='recibo_batismo'),

    # doacoes
    url(r'^doacoes/$', views.ListaDoacoes.as_view(), name='doacoes'),
    url(r'^doacoes/nova/$', views.NovaDoacao.as_view(), name='nova_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/edita/$', views.EditaDoacao.as_view(), name='edita_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/exibe/$', views.ExibeDoacao.as_view(), name='exibe_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/exclui/$', views.ExcluiDoacao.as_view(), name='exclui_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/recibo/$', views.ReciboDoacao.as_view(), name='recibo_doacao'),

    # paroquias
    url(r'^paroquias/$', views.ListaParoquias.as_view(), name='paroquias'),
    url(r'^paroquias/nova/$', views.NovaParoquia.as_view(), name='nova_paroquia'),
    url(r'^paroquias/(?P<pk>\d+)/edita/$', views.EditaParoquia.as_view(), name='edita_paroquia'),
    url(r'^paroquias/(?P<pk>\d+)/exclui/$', views.ExcluiParoquia.as_view(), name='exclui_paroquia'),

    # tipos de pagamentos
    url(r'^tipos_pagamentos/$', views.ListaTiposPagamentos.as_view(), name='tipos_pagamentos'),
    url(r'^tipos_pagamentos/novo/$', views.NovoTipoPagamento.as_view(), name='novo_tipo_pagamento'),
    url(r'^tipos_pagamentos/(?P<pk>\d+)/edita/$', views.EditaTipoPagamento.as_view(), name='edita_tipo_pagamento'),
    url(r'^tipos_pagamentos/(?P<pk>\d+)/exclui/$', views.ExcluiTipoPagamento.as_view(), name='exclui_tipo_pagamento'),

    # pagamentos
    url(r'^pagamentos/$', views.ListaPagamentos.as_view(), name='pagamentos'),
    url(r'^pagamentos/novo/$', views.NovoPagamento.as_view(), name='novo_pagamento'),
    url(r'^pagamentos/(?P<pk>\d+)/exibe/$', views.ExibePagamento.as_view(), name='exibe_pagamento'),
    url(r'^pagamentos/(?P<pk>\d+)/edita/$', views.EditaPagamento.as_view(), name='edita_pagamento'),
    url(r'^pagamentos/(?P<pk>\d+)/exclui/$', views.ExcluiPagamento.as_view(), name='exclui_pagamento'),
    url(r'^pagamentos/(?P<pk>\d+)/recibo/$', views.ReciboPagamento.as_view(), name='recibo_pagamento'),

    # relatorios
    url(r'^dizimistas/relatorios/aniversariantes/$', views.aniversariantes, name='aniversariantes'),
    url(r'^dizimistas/relatorios/aniversariantes/pdf$', views.RelatorioAniversariantesPDF.as_view(), name='relatorio_aniversariantes_pdf'),
    url(r'^dizimistas/relatorios/dizimistas/$', views.relatorio_dizimistas, name='relatorio_dizimistas'),
    url(r'^dizimistas/relatorios/dizimistas/pdf$', views.RelatorioDizimistasPDF.as_view(), name='relatorio_dizimistas_pdf'),
    url(r'^dizimistas/relatorios/ficha_dizimista/pdf$', views.FichaCadastralDizimistaPDF.as_view(), name='ficha_cadastral_dizimista_pdf'),
    url(r'^dizimistas/relatorios/ficha_batismo/pdf$', views.FichaCadastralBatismoPDF.as_view(), name='ficha_cadastral_batismo_pdf'),
    url(r'^dizimistas/relatorios/(?P<pk>\d+)/individual/pdf$', views.RelatorioIndividualDizimistaPDF.as_view(), name='relatorio_individual_dizimista_pdf'),

    url(r'^relatorios/pagamentos/$', views.relatorio_pagamentos, name='relatorio_pagamentos'),
    url(r'^relatorios/pagamentos/pdf$', views.RelatorioPagamentosPDF.as_view(), name='relatorio_pagamentos_pdf'),
    url(r'^relatorios/recimentos/geral/$', views.relatorio_geral_recebimentos, name='relatorio_geral_recebimentos'),
    url(r'^relatorios/recimentos/geral/pdf$', views.RelatorioGeralRecebimentosPDF.as_view(), name='relatorio_geral_recebimentos_pdf'),
    url(r'^relatorios/recimentos/batismos/$', views.relatorio_batismos, name='relatorio_batismos'),
    url(r'^relatorios/recimentos/batismos/pdf$', views.RelatorioBatismosPDF.as_view(), name='relatorio_batismos_pdf'),
    url(r'^relatorios/recimentos/dizimos/$', views.relatorio_dizimos, name='relatorio_dizimos'),
    url(r'^relatorios/recimentos/dizimos/pdf$', views.RelatorioDizimosPDF.as_view(), name='relatorio_dizimos_pdf'),
    url(r'^relatorios/recimentos/doacoes/$', views.relatorio_doacoes, name='relatorio_doacoes'),
    url(r'^relatorios/recimentos/doacoes/pdf$', views.RelatorioDoacoesPDF.as_view(), name='relatorio_doacoes_pdf'),
    url(r'^relatorios/recimentos/ofertas/$', views.relatorio_ofertas, name='relatorio_ofertas'),
    url(r'^relatorios/recimentos/ofertas/pdf$', views.RelatorioOfertasPDF.as_view(), name='relatorio_ofertas_pdf'),
]
