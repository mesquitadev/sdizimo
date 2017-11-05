from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^dizimistas/$', views.ListaDizimistas.as_view(), name='dizimistas'),
    url(r'^dizimistas/novo/$', views.NovoDizimista.as_view(), name='novo_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/edita/$', views.EditaDizimista.as_view(), name='edita_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/exibe/$', views.ExibeDizimista.as_view(), name='exibe_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/exclui/$', views.ExcluiDizimista.as_view(), name='exclui_dizimista'),

    url(r'^ofertas/$', views.ListaOfertas.as_view(), name='ofertas'),
    url(r'^ofertas/nova/$', views.NovaOferta.as_view(), name='nova_oferta'),
    # url(r'^ofertas/(?P<pk>\d+)/edita/$', views.EditaOferta.as_view(), name='edita_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/exibe/$', views.ExibeOferta.as_view(), name='exibe_oferta'),
    url(r'^ofertas/(?P<pk>\d+)/exclui/$', views.ExcluiOferta.as_view(), name='exclui_oferta'),
]
