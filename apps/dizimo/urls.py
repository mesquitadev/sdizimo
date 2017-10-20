from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^dizimistas/$', views.dizimistas, name='dizimistas'),
    url(r'^dizimistas/novo/$', views.NovoDizimista.as_view(), name='novo_dizimista'),
    url(r'^dizimistas/(?P<pk>\d+)/edita/$', views.EditaDizimista.as_view(), name='edita_dizimista'),
]
