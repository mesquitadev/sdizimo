from django.contrib import admin
from apps.dizimo.models import Dizimista, Telefone


class TelefoneInLine(admin.TabularInline):
    model = Telefone

# 
# @admin.register(Dizimista)
# class DizimistaAdmin(admin.ModelAdmin):
#     list_display = ('nome', 'endereco', 'bairro', 'cidade', 'paroquia', 'comunidade', 'data_nascimento')
#     search_fields = ('nome', 'endereco')
#     list_filter = ('sexo', 'estado_civil', 'paroquia', 'comunidade')
#     inlines = [TelefoneInLine, ]
