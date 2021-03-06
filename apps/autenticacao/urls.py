from django.conf.urls import url
from django.contrib.auth import views as auth_views

from . import views

urlpatterns = [
    url(r'^logout/$', auth_views.LogoutView.as_view(), name='logout'),
    url(r'^login/$', auth_views.LoginView.as_view(template_name='login.html'), name='login'),

    url(r'^reset/$', auth_views.PasswordResetView.as_view(template_name='password_reset.html', email_template_name='password_reset_email.html', subject_template_name='password_reset_subject.txt'), name='password_reset'),
    url(r'^reset/done/$', auth_views.PasswordResetDoneView.as_view(template_name='password_reset_done.html'), name='password_reset_done'),
    url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$', auth_views.PasswordResetConfirmView.as_view(template_name='password_reset_confirm.html'), name='password_reset_confirm'),
    url(r'^reset/complete/$', auth_views.PasswordResetCompleteView.as_view(template_name='password_reset_complete.html'), name='password_reset_complete'),

    url(r'^usuarios/$', views.ListaUsuarios.as_view(), name='usuarios'),
    url(r'^usuarios/novo/$', views.NovoUsuario.as_view(), name='novo_usuario'),
    url(r'^usuarios/(?P<pk>\d+)/exibe/$', views.ExibeUsuario.as_view(), name='exibe_usuario'),
    url(r'^usuarios/(?P<pk>\d+)/edita/$', views.EditaUsuario.as_view(), name='edita_usuario'),
    url(r'^usuarios/(?P<pk>\d+)/exclui/$', views.ExcluiUsuario.as_view(), name='exclui_usuario'),
    url(r'^usuarios/(?P<user_id>\d+)/edita/senha/$', views.altera_senha_usuario, name='altera_senha_usuario'),
    # url(r'^usuario/novo/$', views.signup, name='signup'),
    url(r'^usuario/perfil/$', views.EditaMeuUsuario.as_view(), name='perfil_usuario'),
    url(r'^usuario/senha/$', auth_views.PasswordChangeView.as_view(template_name='password_change.html'), name='password_change'),
    url(r'^usuario/senha/alterada/$', auth_views.PasswordChangeDoneView.as_view(template_name='password_change_done.html'), name='password_change_done'),
]
