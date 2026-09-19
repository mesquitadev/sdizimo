from search_views.filters import BaseFilter


class UsuarioFilter(BaseFilter):
    search_fields = {
        'nome': ['username', 'first_name', 'last_name'],
        'perfil': ['perfil__papel', ],
        'paroquia': {'operator': '__exact', 'fields': ['perfil__paroquia__pk']},
    }
