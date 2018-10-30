from bootstrap_datepicker.widgets import DatePicker
from django import forms
from django.contrib.auth.models import User
from django.forms.models import inlineformset_factory
from django_select2.forms import ModelSelect2Widget

from apps.comum.form_fields import MesAnoField

from .models import Dizimista, Telefone, Oferta, Dizimo, Batismo, Doacao,\
    Paroquia, TipoPagamento, Pagamento


###########################################################
#  DIZIMISTAS                                             #
###########################################################

class DizimistaForm(forms.ModelForm):
    class Meta:
        model = Dizimista
        exclude = ('paroquia',)


class DizimistaAdminForm(DizimistaForm):
    class Meta:
        model = Dizimista
        fields = '__all__'


class TelefoneForm(forms.ModelForm):
    class Meta:
        model = Telefone
        fields = ('numero', 'tipo', 'operadora')


TelefoneFormSet = inlineformset_factory(Dizimista, Telefone, fields=('numero', 'tipo', 'operadora'))


class ConsultaDizimistaForm(forms.Form):
    pk = forms.IntegerField(label='Nº Cad.', required=False)
    nome = forms.CharField(label='Nome', required=False)
    comunidade = forms.CharField(label='Comunidade', required=False)


class ConsultaDizimistaAdminForm(ConsultaDizimistaForm):
    paroquia = forms.ModelChoiceField(label='Paróquia', required=False, queryset=Paroquia.objects.all())


###########################################################
#  OFERTAS                                                #
###########################################################

class ConsultaOfertaForm(forms.Form):
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(ConsultaOfertaForm, self).__init__(*args, **kwargs)
        if perfil:
            self.fields['usuario'].queryset = User.objects.filter(perfil__paroquia=perfil.paroquia)


class OfertaForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True)
    data = forms.DateField(label='Data', required=True, widget=DatePicker(options={"autoclose": True}))

    class Meta:
        model = Oferta
        fields = ('valor', 'data')
        localized_fields = ('valor', )


###########################################################
#  DIZIMOS                                                #
###########################################################

class DizimoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True, required=True)
    referencia = MesAnoField(label='Referência (Mês/Ano)', required=True)
    dizimista = forms.ModelChoiceField(
        queryset=Dizimista.objects.all(),
        label='Dizimista', widget=ModelSelect2Widget(
            model=Dizimista,
            search_fields=['nome__icontains'],
        )
    )

    class Meta:
        model = Dizimo
        fields = ('dizimista', 'referencia', 'valor')
        localized_fields = ('valor', )

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(DizimoForm, self).__init__(*args, **kwargs)
        if perfil:
            self.fields['dizimista'].widget.queryset = Dizimista.objects.filter(paroquia=perfil.paroquia)


class ConsultaDizimoForm(forms.Form):
    dizimista = forms.CharField(label='Dizimista', required=False)
    referencia = forms.ChoiceField(label='Referência', required=False, choices=[])
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(ConsultaDizimoForm, self).__init__(*args, **kwargs)
        lista_referencia = [['', '---------']]
        for referencia in Dizimo.objects.values_list('referencia', flat=True).order_by('-referencia').distinct():
            lista_referencia.append([referencia.strftime('%m/%Y'), referencia.strftime('%m/%Y')])
        self.fields['referencia'].choices = lista_referencia
        if perfil:
            self.fields['usuario'].queryset = User.objects.filter(perfil__paroquia=perfil.paroquia)


###########################################################
#  BATISMOS                                               #
###########################################################

class BatismoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True, required=True)
    data_batismo = forms.DateField(label='Data do batismo', required=True, widget=DatePicker(options={"autoclose": True}))

    class Meta:
        model = Batismo
        fields = ('nome_batizando', 'nome_solicitante', 'data_batismo', 'hora_batismo', 'valor')
        localized_fields = ('valor', )


class ConsultaBatismoForm(forms.Form):
    nome_batizando = forms.CharField(label='Batizando', required=False)
    nome_solicitante = forms.CharField(label='Solicitante', required=False)
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(ConsultaBatismoForm, self).__init__(*args, **kwargs)
        if perfil:
            self.fields['usuario'].queryset = User.objects.filter(perfil__paroquia=perfil.paroquia)


###########################################################
#  DOACOES                                                #
###########################################################

class DoacaoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True, required=True)
    data = forms.DateField(label='Data', required=True, widget=DatePicker(options={"autoclose": True}))

    class Meta:
        model = Doacao
        fields = ('valor', 'data', 'descricao')
        localized_fields = ('valor', )


class ConsultaDoacaoForm(forms.Form):
    descricao = forms.CharField(label='Descrição', required=False)
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(ConsultaDoacaoForm, self).__init__(*args, **kwargs)
        if perfil:
            self.fields['usuario'].queryset = User.objects.filter(perfil__paroquia=perfil.paroquia)


###########################################################
#  PAROQUIAS                                              #
###########################################################

class ParoquiaForm(forms.ModelForm):
    class Meta:
        model = Paroquia
        fields = '__all__'


class ConsultaParoquiaForm(forms.Form):
    nome = forms.CharField(label='Nome', required=False)


###########################################################
#  RELATORIOS                                             #
###########################################################

class RecebimentosPorPeriodoForm(forms.Form):
    data_inicio = forms.DateField(label='De', widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', widget=DatePicker(options={"autoclose": True}))


###########################################################
#  PAGAMENTOS                                             #
###########################################################

class TipoPagamentoForm(forms.ModelForm):
    class Meta:
        model = TipoPagamento
        exclude = ('paroquia', )


class PagamentoForm(forms.ModelForm):
    valor = forms.DecimalField(label='Valor (R$)', max_digits=10, decimal_places=2, localize=True)

    class Meta:
        model = Pagamento
        fields = ('tipo', 'valor', 'descricao')
        localized_fields = ('valor', )

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(PagamentoForm, self).__init__(*args, **kwargs)
        if perfil:
            self.fields['tipo'].queryset = TipoPagamento.objects.filter(paroquia=perfil.paroquia)


class ConsultaPagamentoForm(forms.Form):
    tipo = forms.ModelChoiceField(label='Tipo', required=False, queryset=TipoPagamento.objects.all())
    descricao = forms.CharField(label='Descrição', required=False)
    data_inicio = forms.DateField(label='De', required=False, widget=DatePicker(options={"autoclose": True}))
    data_fim = forms.DateField(label='Até', required=False, widget=DatePicker(options={"autoclose": True}))
    usuario = forms.ModelChoiceField(label='Usuário responsável', required=False, queryset=User.objects.all().order_by('username'))

    def __init__(self, *args, **kwargs):
        perfil = None
        if 'perfil' in kwargs:
            perfil = kwargs.pop('perfil')
        super(ConsultaPagamentoForm, self).__init__(*args, **kwargs)
        if perfil:
            self.fields['tipo'].queryset = TipoPagamento.objects.filter(paroquia=perfil.paroquia)
            self.fields['usuario'].queryset = User.objects.filter(perfil__paroquia=perfil.paroquia)
