from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^dizimistas/$', views.dizimistas, name='dizimistas'),
    url(r'^dizimistas/novo/$', views.novo_dizimista, name='novo_dizimista'),
]
