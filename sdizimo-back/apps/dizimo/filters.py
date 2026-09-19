from search_views.filters import BaseFilter


class DizimistaFilter(BaseFilter):
    search_fields = {
        'pk': ['pk', ],
        'nome': {'operator': '__icontains', 'fields': ['nome']},
        'paroquia': {'operator': '__exact', 'fields': ['paroquia']},
        'comunidade': {'operator': '__icontains', 'fields': ['comunidade']},
    }


class RecebimentoFilter(BaseFilter):
    search_fields = {
        'usuario': {'operator': '__exact', 'fields': ['usuario']},
    }


class ParoquiaFilter(BaseFilter):
    search_fields = {
        'nome': {'operator': '__icontains', 'fields': ['nome']},
    }


class TipoPagamentoFilter(BaseFilter):
    search_fields = {
        'descricao': {'operator': '__icontains', 'fields': ['descricao']},
    }
