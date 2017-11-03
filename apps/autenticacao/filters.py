from search_views.filters import BaseFilter


class UsuarioFilter(BaseFilter):
    search_fields = {
        'nome' : ['first_name', 'last_name'],
        'usuario' : ['username', ],
        'perfil' : ['perfil__papel', ],
    }
