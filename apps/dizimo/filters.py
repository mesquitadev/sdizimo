from search_views.filters import BaseFilter


class DizimistaFilter(BaseFilter):
    search_fields = {
        'pk' : ['pk', ],
        'nome' : ['nome', ],
        'paroquia' : ['paroquia', ],
        'comunidade' : ['comunidade', ],
    }
