from django.conf.urls import url
from . import views


urlpatterns = [
    # dizimistas
    url(r'^dizimistas/$', views.ListaDizimistas.as_view(), name='dizimistas'),
    url(r'^dizimistas/novo/$', views.NovoDizimista.as_view(), name='novo_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/edita/$', views.EditaDizimista.as_view(), name='edita_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/exibe/$', views.ExibeDizimista.as_view(), name='exibe_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/exclui/$', views.ExcluiDizimista.as_view(), name='exclui_dizimista'),
    url(r'^dizimistas/aniversariantes/$', views.aniversariantes, name='aniversariantes'),
    url(r'^dizimistas/relatorios/dizimistas/$', views.relatorio_dizimistas, name='relatorio_dizimistas'),
    url(r'^dizimistas/relatorios/dizimistas/pdf$', views.RelatorioDizimistasPDF.as_view(), name='relatorio_dizimistas_pdf'),
    # ofertas
    url(r'^ofertas/$', views.ListaOfertas.as_view(), name='ofertas'),
    url(r'^ofertas/nova/$', views.NovaOferta.as_view(), name='nova_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/edita/$', views.EditaOferta.as_view(), name='edita_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/exibe/$', views.ExibeOferta.as_view(), name='exibe_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/exclui/$', views.ExcluiOferta.as_view(), name='exclui_oferta'),
    # dizimos
    url(r'^dizimos/$', views.ListaDizimos.as_view(), name='dizimos'),
    url(r'^dizimos/novo/$', views.NovoDizimo.as_view(), name='novo_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/edita/$', views.EditaDizimo.as_view(), name='edita_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/exibe/$', views.ExibeDizimo.as_view(), name='exibe_dizimo'),
    url(r'^dizimos/(?P<pk>\d+)/exclui/$', views.ExcluiDizimo.as_view(), name='exclui_dizimo'),
    # batismos
    url(r'^batismos/$', views.ListaBatismos.as_view(), name='batismos'),
    url(r'^batismos/novo/$', views.NovoBatismo.as_view(), name='novo_batismo'),
    url(r'^batismos/(?P<pk>\d+)/edita/$', views.EditaBatismo.as_view(), name='edita_batismo'),
    url(r'^batismos/(?P<pk>\d+)/exibe/$', views.ExibeBatismo.as_view(), name='exibe_batismo'),
    url(r'^batismos/(?P<pk>\d+)/exclui/$', views.ExcluiBatismo.as_view(), name='exclui_batismo'),
    # doacoes
    url(r'^doacoes/$', views.ListaDoacoes.as_view(), name='doacoes'),
    url(r'^doacoes/nova/$', views.NovaDoacao.as_view(), name='nova_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/edita/$', views.EditaDoacao.as_view(), name='edita_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/exibe/$', views.ExibeDoacao.as_view(), name='exibe_doacao'),
    url(r'^doacoes/(?P<pk>\d+)/exclui/$', views.ExcluiDoacao.as_view(), name='exclui_doacao'),
    # relatorios
    url(r'^recimentos/por-periodo/$', views.recebimentos_por_periodo, name='recebimentos_por_periodo'),
]
