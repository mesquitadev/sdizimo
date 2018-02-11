from search_views.filters import BaseFilter


class DizimistaFilter(BaseFilter):
    search_fields = {
        'pk': ['pk', ],
        'nome': ['nome', ],
        'paroquia': {'operator': '__exact', 'fields': ['paroquia']},
        'comunidade': ['comunidade', ],
    }


class RecebimentoFilter(BaseFilter):
    search_fields = {
        'usuario': {'operator': '__exact', 'fields': ['usuario']},
        'data_inicio': {'operator': '__gte', 'fields': ['recebida_em']},
        'data_fim': {'operator': '__lte', 'fields': ['recebida_em']},
    }


class ParoquiaFilter(BaseFilter):
    search_fields = {
        'nome': ['nome', ],
    }
