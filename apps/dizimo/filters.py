from search_views.filters import BaseFilter


class DizimistaFilter(BaseFilter):
    search_fields = {
        'pk' : ['pk', ],
        'nome' : ['nome', ],
        'paroquia' : ['paroquia', ],
        'comunidade' : ['comunidade', ],
    }


class OfertaFilter(BaseFilter):
    search_fields = {
        'usuario' : ['usuario', ],
        'data_inicio' : {'operator' : '__gte', 'fields' : ['recebida_em']},
        'data_fim' : {'operator' : '__lte', 'fields' : ['recebida_em']},
    }
