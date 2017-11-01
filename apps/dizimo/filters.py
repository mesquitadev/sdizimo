from search_views.filters import BaseFilter


class DizimistaFilter(BaseFilter):
    search_fields = {
        'nome' : ['nome', ],
        'paroquia' : ['paroquia', ],           
        'comunidade' : ['comunidade', ],
    }