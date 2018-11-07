from datetime import datetime
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required, permission_required
from django.core.exceptions import PermissionDenied
from django.db.models import Sum
from django.shortcuts import redirect, render, get_object_or_404
from django.views.generic import CreateView, UpdateView, DetailView, DeleteView
from django.urls import reverse_lazy
from easy_pdf.views import PDFTemplateView, PDFTemplateResponseMixin
from search_views.search import SearchListView

from apps.comum.mixins import LoggedInPermissionsMixin
from .models import Dizimista, Oferta, Dizimo, Batismo, Doacao, Paroquia, \
    TipoPagamento, Pagamento
from .filters import DizimistaFilter, RecebimentoFilter, ParoquiaFilter, TipoPagamentoFilter
from .forms import DizimistaForm, TelefoneFormSet, ConsultaDizimistaForm, ConsultaOfertaForm, OfertaForm, \
    DizimoForm, ConsultaDizimoForm, BatismoForm, ConsultaBatismoForm, DoacaoForm, ConsultaDoacaoForm, \
    RecebimentosPorPeriodoForm, ParoquiaForm, ConsultaParoquiaForm, \
    TipoPagamentoForm, PagamentoForm, ConsultaPagamentoForm
from .utils import MESES


class ListFilterParoquiaByUserView(SearchListView):
    def get_object_list(self, request, search_errors=None):
        object_list = super().get_object_list(request, search_errors)
        # if request.user.perfil.eh_administrador():
        #     return object_list
        return object_list.filter(paroquia=request.user.perfil.paroquia)


###########################################################
#  DIZIMISTAS                                             #
###########################################################
class ListaDizimistas(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = Dizimista
    context_object_name = 'dizimistas'
    template_name = 'dizimistas/lista.html'
    paginate_by = 20
    form_class = ConsultaDizimistaForm
    filter_class = DizimistaFilter
    permission_required = 'dizimo.list_dizimista'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        kwargs['eh_admin'] = self.request.user.perfil.eh_administrador()
        return super().get_context_data(**kwargs)


class NovoDizimista(LoggedInPermissionsMixin, CreateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'dizimistas/novo.html'
    permission_required = 'dizimo.add_dizimista'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimista', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'dizimistas'
        if self.request.POST:
            context['formset'] = TelefoneFormSet(self.request.POST)
        else:
            context['formset'] = TelefoneFormSet()
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        formset = context['formset']
        if form.is_valid() and formset.is_valid():
            self.object = form.save(commit=False)
            self.object.paroquia = self.request.user.perfil.paroquia
            self.object.save()
            formset.instance = self.object
            formset.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))

    # def get_form_class(self):
    #     if self.request.user.perfil.eh_administrador():
    #         return DizimistaAdminForm
    #     else:
    #         return self.form_class


class EditaDizimista(LoggedInPermissionsMixin, UpdateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'dizimistas/edita.html'
    context_object_name = 'dizimista'
    permission_required = 'dizimo.change_dizimista'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimista', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'dizimistas'
        if self.request.POST:
            context['formset'] = TelefoneFormSet(self.request.POST, instance=self.object)
            context['formset'].full_clean()
        else:
            context['formset'] = TelefoneFormSet(instance=self.object)
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        formset = context['formset']
        if form.is_valid() and formset.is_valid():
            self.object = form.save()
            formset.instance = self.object
            formset.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))

    # def get_form_class(self):
    #     if self.request.user.perfil.eh_administrador():
    #         return DizimistaAdminForm
    #     else:
    #         return self.form_class

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExibeDizimista(LoggedInPermissionsMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'dizimistas/exibe.html'
    permission_required = 'dizimo.view_dizimista'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExibeDizimistaPDF(LoggedInPermissionsMixin, PDFTemplateResponseMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'relatorios/exibe_dizimista_pdf.html'
    download_filename = 'ficha_cadastral_dizimista.pdf'
    permission_required = 'dizimo.view_dizimista'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        kwargs['titulo_relatorio'] = 'Ficha cadastral de {0}'.format(self.object)
        kwargs['user'] = self.request.user

        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExcluiDizimista(LoggedInPermissionsMixin, DeleteView):
    model = Dizimista
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'dizimistas/exclui.html'
    context_object_name = 'dizimista'
    permission_required = 'dizimo.delete_dizimista'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


@login_required
@permission_required('dizimo.list_dizimista', raise_exception=True)
def aniversariantes(request):
    mes_escolhido = int(request.GET.get('mes', datetime.today().month))

    lista_aniversariantes = Dizimista.objects.filter(paroquia=request.user.perfil.paroquia, data_nascimento__month=mes_escolhido).order_by('data_nascimento', 'nome')

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'lista_aniversariantes',
        'mes_escolhido': mes_escolhido,
        'meses': MESES,
        'aniversariantes': lista_aniversariantes,
    }
    return render(request, 'aniversariantes.html', context)


###########################################################
#  OFERTAS                                                #
###########################################################

class ListaOfertas(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = Oferta
    context_object_name = 'ofertas'
    template_name = 'ofertas/lista.html'
    paginate_by = 20
    form_class = ConsultaOfertaForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_oferta'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = super().get_object_list(request, search_errors)
        self.form = ConsultaOfertaForm(request.GET, perfil=request.user.perfil)
        if self.form and self.form.is_valid():
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(data__gte=data_inicio)
            if data_fim:
                object_list = object_list.filter(data__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list

    def get_form_kwargs(self):
        kwargs = super(ListaOfertas, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class NovaOferta(LoggedInPermissionsMixin, CreateView):
    model = Oferta
    form_class = OfertaForm
    template_name = 'ofertas/nova.html'
    permission_required = 'dizimo.add_oferta'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_oferta', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'ofertas'
        return context

    def form_valid(self, form):
        if form.is_valid():
            self.object = form.save(commit=False)
            self.object.usuario = self.request.user
            self.object.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class EditaOferta(LoggedInPermissionsMixin, UpdateView):
    model = Oferta
    form_class = OfertaForm
    template_name = 'ofertas/edita.html'
    context_object_name = 'oferta'
    permission_required = 'dizimo.change_oferta'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_oferta', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'ofertas'
        return context

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExibeOferta(LoggedInPermissionsMixin, DetailView):
    model = Oferta
    context_object_name = 'oferta'
    template_name = 'ofertas/exibe.html'
    permission_required = 'dizimo.view_oferta'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExcluiOferta(LoggedInPermissionsMixin, DeleteView):
    model = Oferta
    success_url = reverse_lazy('dizimo:ofertas')
    template_name = 'ofertas/exclui.html'
    context_object_name = 'oferta'
    permission_required = 'dizimo.delete_oferta'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ReciboOferta(LoggedInPermissionsMixin, DetailView):
    model = Oferta
    context_object_name = 'oferta'
    template_name = 'ofertas/recibo.html'
    permission_required = 'dizimo.view_oferta'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        kwargs['paroquia'] = self.get_object().paroquia
        kwargs['titulo_relatorio'] = 'Recibo'
        kwargs['user'] = self.request.user
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


###########################################################
#  DIZIMOS                                                #
###########################################################

class ListaDizimos(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = Dizimo
    context_object_name = 'dizimos'
    template_name = 'dizimos/lista.html'
    paginate_by = 20
    form_class = ConsultaDizimoForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_dizimo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = super().get_object_list(request, search_errors)
        self.form = ConsultaDizimoForm(request.GET, perfil=request.user.perfil)
        if self.form and self.form.is_valid():
            dizimista = self.form.cleaned_data['dizimista']
            referencia = self.form.cleaned_data['referencia']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if dizimista:
                object_list = object_list.filter(dizimista__nome__icontains=dizimista)
            if referencia:
                data_referencia = datetime.strptime(referencia, '%m/%Y')
                object_list = object_list.filter(referencia=data_referencia)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(cadastrado_em__gte=data_inicio)
            if data_fim:
                data_fim = datetime.combine(data_fim, datetime.max.time())
                object_list = object_list.filter(cadastrado_em__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list

    def get_form_kwargs(self):
        kwargs = super(ListaDizimos, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class NovoDizimo(LoggedInPermissionsMixin, CreateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'dizimos/novo.html'
    permission_required = 'dizimo.add_dizimo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'dizimos'
        return context

    def form_valid(self, form):
        if form.is_valid():
            self.object = form.save(commit=False)
            self.object.usuario = self.request.user
            self.object.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))

    def get_form_kwargs(self):
        kwargs = super(NovoDizimo, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class ClonaDizimo(LoggedInPermissionsMixin, CreateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'dizimos/novo.html'
    permission_required = 'dizimo.add_dizimo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'dizimos'
        return context

    def get_form_kwargs(self):
        kwargs = super(ClonaDizimo, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        if self.kwargs['ref']:
            novo_dizimo = get_object_or_404(Dizimo, pk=self.kwargs['ref'])
            novo_dizimo.pk = None
            kwargs['instance'] = novo_dizimo
        return kwargs


class EditaDizimo(LoggedInPermissionsMixin, UpdateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'dizimos/edita.html'
    context_object_name = 'dizimo'
    permission_required = 'dizimo.change_dizimo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'dizimos'
        return context

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object

    def get_form_kwargs(self):
        kwargs = super(EditaDizimo, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class ExibeDizimo(LoggedInPermissionsMixin, DetailView):
    model = Dizimo
    context_object_name = 'dizimo'
    template_name = 'dizimos/exibe.html'
    permission_required = 'dizimo.view_dizimo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExcluiDizimo(LoggedInPermissionsMixin, DeleteView):
    model = Dizimo
    success_url = reverse_lazy('dizimo:dizimos')
    template_name = 'dizimos/exclui.html'
    context_object_name = 'dizimo'
    permission_required = 'dizimo.delete_dizimo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ReciboDizimo(LoggedInPermissionsMixin, DetailView):
    model = Dizimo
    context_object_name = 'dizimo'
    template_name = 'dizimos/recibo.html'
    permission_required = 'dizimo.view_dizimo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        kwargs['paroquia'] = self.get_object().paroquia
        kwargs['titulo_relatorio'] = 'Recibo'
        kwargs['user'] = self.request.user
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


###########################################################
#  BATISMOS                                               #
###########################################################

class ListaBatismos(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = Batismo
    context_object_name = 'batismos'
    template_name = 'batismos/lista.html'
    paginate_by = 20
    form_class = ConsultaBatismoForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_batismo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = super().get_object_list(request, search_errors)
        self.form = ConsultaBatismoForm(request.GET, perfil=request.user.perfil)
        if self.form and self.form.is_valid():
            nome_batizando = self.form.cleaned_data['nome_batizando']
            nome_solicitante = self.form.cleaned_data['nome_solicitante']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if nome_batizando:
                object_list = object_list.filter(nome_batizando__icontains=nome_batizando)
            if nome_solicitante:
                object_list = object_list.filter(nome_solicitante__icontains=nome_solicitante)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(data_batismo__gte=data_inicio)
            if data_fim:
                object_list = object_list.filter(data_batismo__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list

    def get_form_kwargs(self):
        kwargs = super(ListaBatismos, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class NovoBatismo(LoggedInPermissionsMixin, CreateView):
    model = Batismo
    form_class = BatismoForm
    template_name = 'batismos/novo.html'
    permission_required = 'dizimo.add_batismo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_batismo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'batismos'
        return context

    def form_valid(self, form):
        if form.is_valid():
            self.object = form.save(commit=False)
            self.object.usuario = self.request.user
            self.object.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class EditaBatismo(LoggedInPermissionsMixin, UpdateView):
    model = Batismo
    form_class = BatismoForm
    template_name = 'batismos/edita.html'
    context_object_name = 'batismo'
    permission_required = 'dizimo.change_batismo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_batismo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'batismos'
        return context

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExibeBatismo(LoggedInPermissionsMixin, DetailView):
    model = Batismo
    context_object_name = 'batismo'
    template_name = 'batismos/exibe.html'
    permission_required = 'dizimo.view_batismo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExcluiBatismo(LoggedInPermissionsMixin, DeleteView):
    model = Batismo
    success_url = reverse_lazy('dizimo:batismos')
    template_name = 'batismos/exclui.html'
    context_object_name = 'batismo'
    permission_required = 'dizimo.delete_batismo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ReciboBatismo(LoggedInPermissionsMixin, DetailView):
    model = Batismo
    context_object_name = 'batismo'
    template_name = 'batismos/recibo.html'
    permission_required = 'dizimo.view_batismo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        kwargs['paroquia'] = self.get_object().paroquia
        kwargs['titulo_relatorio'] = 'Recibo'
        kwargs['user'] = self.request.user
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


###########################################################
#  DOACOES                                                #
###########################################################

class ListaDoacoes(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = Doacao
    context_object_name = 'doacoes'
    template_name = 'doacoes/lista.html'
    paginate_by = 20
    form_class = ConsultaDoacaoForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_doacao'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = super().get_object_list(request, search_errors)
        self.form = ConsultaDoacaoForm(request.GET, perfil=request.user.perfil)
        if self.form and self.form.is_valid():
            descricao = self.form.cleaned_data['descricao']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if descricao:
                object_list = object_list.filter(descricao__icontains=descricao)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(data__gte=data_inicio)
            if data_fim:
                object_list = object_list.filter(data__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list

    def get_form_kwargs(self):
        kwargs = super(ListaDoacoes, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class NovaDoacao(LoggedInPermissionsMixin, CreateView):
    model = Doacao
    form_class = DoacaoForm
    template_name = 'doacoes/nova.html'
    permission_required = 'dizimo.add_doacao'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_doacao', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'doacoes'
        return context

    def form_valid(self, form):
        if form.is_valid():
            self.object = form.save(commit=False)
            self.object.usuario = self.request.user
            self.object.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class EditaDoacao(LoggedInPermissionsMixin, UpdateView):
    model = Doacao
    form_class = DoacaoForm
    template_name = 'doacoes/edita.html'
    context_object_name = 'doacao'
    permission_required = 'dizimo.change_doacao'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_doacao', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'doacoes'
        return context

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExibeDoacao(LoggedInPermissionsMixin, DetailView):
    model = Doacao
    context_object_name = 'doacao'
    template_name = 'doacoes/exibe.html'
    permission_required = 'dizimo.view_doacao'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExcluiDoacao(LoggedInPermissionsMixin, DeleteView):
    model = Doacao
    success_url = reverse_lazy('dizimo:doacoes')
    template_name = 'doacoes/exclui.html'
    context_object_name = 'doacao'
    permission_required = 'dizimo.delete_doacao'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ReciboDoacao(LoggedInPermissionsMixin, DetailView):
    model = Doacao
    context_object_name = 'doacao'
    template_name = 'doacoes/recibo.html'
    permission_required = 'dizimo.view_doacao'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        kwargs['paroquia'] = self.get_object().paroquia
        kwargs['titulo_relatorio'] = 'Recibo'
        kwargs['user'] = self.request.user
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


###########################################################
#  PAROQUIAS                                              #
###########################################################

class ListaParoquias(LoggedInPermissionsMixin, SearchListView):
    model = Paroquia
    context_object_name = 'paroquias'
    template_name = 'paroquias/lista.html'
    paginate_by = 20
    form_class = ConsultaParoquiaForm
    filter_class = ParoquiaFilter
    permission_required = 'dizimo.list_paroquia'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'cadastros'
        kwargs['menu_dropdown'] = 'paroquias'
        return super().get_context_data(**kwargs)


class NovaParoquia(LoggedInPermissionsMixin, CreateView):
    model = Paroquia
    form_class = ParoquiaForm
    template_name = 'paroquias/nova.html'
    permission_required = 'dizimo.add_paroquia'

    def get_success_url(self):
        return reverse_lazy('dizimo:paroquias')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'cadastros'
        context['menu_dropdown'] = 'paroquias'
        return context


class EditaParoquia(LoggedInPermissionsMixin, UpdateView):
    model = Paroquia
    form_class = ParoquiaForm
    template_name = 'paroquias/edita.html'
    context_object_name = 'paroquia'
    permission_required = 'dizimo.change_paroquia'

    def get_success_url(self):
        return reverse_lazy('dizimo:paroquias')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'cadastros'
        context['menu_dropdown'] = 'paroquias'
        return context


class ExcluiParoquia(LoggedInPermissionsMixin, DeleteView):
    model = Paroquia
    success_url = reverse_lazy('dizimo:paroquias')
    template_name = 'paroquias/exclui.html'
    context_object_name = 'paroquia'
    permission_required = 'dizimo.delete_paroquia'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'cadastros'
        context['menu_dropdown'] = 'paroquias'
        return context


###########################################################
#  TIPOS DE PAGAMENTOS                                    #
###########################################################

class ListaTiposPagamentos(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = TipoPagamento
    context_object_name = 'tipos_pagamentos'
    template_name = 'tipos_pagamentos/lista.html'
    paginate_by = 20
    form_class = TipoPagamentoForm
    filter_class = TipoPagamentoFilter
    permission_required = 'dizimo.list_tipopagamento'

    def get_context_data(self, **kwargs):
        kwargs['title'] = 'Tipos de Pagamentos'
        kwargs['menu'] = 'cadastros'
        kwargs['menu_dropdown'] = 'tipos_pagamentos'
        return super().get_context_data(**kwargs)


class NovoTipoPagamento(LoggedInPermissionsMixin, CreateView):
    model = TipoPagamento
    form_class = TipoPagamentoForm
    template_name = 'tipos_pagamentos/novo.html'
    permission_required = 'dizimo.add_tipopagamento'

    def get_success_url(self):
        return reverse_lazy('dizimo:tipos_pagamentos')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Novo tipo de pagamento'
        context['menu'] = 'cadastros'
        context['menu_dropdown'] = 'tipos_pagamentos'
        return context

    def form_valid(self, form):
        if form.is_valid():
            self.object = form.save(commit=False)
            self.object.paroquia = self.request.user.perfil.paroquia
            self.object.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class EditaTipoPagamento(LoggedInPermissionsMixin, UpdateView):
    model = TipoPagamento
    form_class = TipoPagamentoForm
    template_name = 'tipos_pagamentos/edita.html'
    context_object_name = 'tipo_pagamento'
    permission_required = 'dizimo.change_tipopagamento'

    def get_success_url(self):
        return reverse_lazy('dizimo:tipos_pagamentos')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Editando {0}'.format(self.object)
        context['menu'] = 'cadastros'
        context['menu_dropdown'] = 'tipos_pagamentos'
        return context

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ExcluiTipoPagamento(LoggedInPermissionsMixin, DeleteView):
    model = TipoPagamento
    success_url = reverse_lazy('dizimo:tipos_pagamentos')
    template_name = 'tipos_pagamentos/exclui.html'
    context_object_name = 'tipo_pagamento'
    permission_required = 'dizimo.delete_tipopagamento'

    def get_context_data(self, **kwargs):
        kwargs['title'] = 'Excluindo {0}'.format(self.object)
        kwargs['menu'] = 'cadastros'
        kwargs['menu_dropdown'] = 'tipos_pagamentos'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


###########################################################
#  PAGAMENTOS                                             #
###########################################################

class ListaPagamentos(LoggedInPermissionsMixin, ListFilterParoquiaByUserView):
    model = Pagamento
    context_object_name = 'pagamentos'
    template_name = 'pagamentos/lista.html'
    paginate_by = 20
    form_class = ConsultaPagamentoForm
    filter_class = TipoPagamentoFilter
    permission_required = 'dizimo.list_pagamento'

    def get_context_data(self, **kwargs):
        kwargs['title'] = 'Pagamentos'
        kwargs['menu'] = 'pagamentos'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = super().get_object_list(request, search_errors)
        self.form = ConsultaPagamentoForm(request.GET, perfil=request.user.perfil)
        if self.form and self.form.is_valid():
            tipo = self.form.cleaned_data['tipo']
            descricao = self.form.cleaned_data['descricao']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if descricao:
                object_list = object_list.filter(descricao__icontains=descricao)
            if tipo:
                object_list = object_list.filter(tipo=tipo)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(data__gte=data_inicio)
            if data_fim:
                object_list = object_list.filter(data__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list

    def get_form_kwargs(self):
        kwargs = super(ListaPagamentos, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class NovoPagamento(LoggedInPermissionsMixin, CreateView):
    model = Pagamento
    form_class = PagamentoForm
    template_name = 'pagamentos/novo.html'
    permission_required = 'dizimo.add_pagamento'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_pagamento', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Novo pagamento'
        context['menu'] = 'pagamentos'
        return context

    def form_valid(self, form):
        if form.is_valid():
            self.object = form.save(commit=False)
            self.object.usuario = self.request.user
            self.object.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))

    def get_form_kwargs(self):
        kwargs = super(NovoPagamento, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class ExibePagamento(LoggedInPermissionsMixin, DetailView):
    model = Pagamento
    context_object_name = 'pagamento'
    template_name = 'pagamentos/exibe.html'
    permission_required = 'dizimo.view_pagamento'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'pagamentos'
        kwargs['title'] = self.object
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class EditaPagamento(LoggedInPermissionsMixin, UpdateView):
    model = Pagamento
    form_class = PagamentoForm
    template_name = 'pagamentos/edita.html'
    context_object_name = 'pagamento'
    permission_required = 'dizimo.change_pagamento'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_pagamento', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Editando {0}'.format(self.object)
        context['menu'] = 'pagamentos'
        return context

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object

    def get_form_kwargs(self):
        kwargs = super(EditaPagamento, self).get_form_kwargs()
        kwargs.update({'perfil': self.request.user.perfil})
        return kwargs


class ExcluiPagamento(LoggedInPermissionsMixin, DeleteView):
    model = Pagamento
    success_url = reverse_lazy('dizimo:pagamentos')
    template_name = 'pagamentos/exclui.html'
    context_object_name = 'pagamento'
    permission_required = 'dizimo.delete_pagamento'

    def get_context_data(self, **kwargs):
        kwargs['title'] = 'Excluindo {0}'.format(self.object)
        kwargs['menu'] = 'pagamentos'
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


class ReciboPagamento(LoggedInPermissionsMixin, DetailView):
    model = Pagamento
    context_object_name = 'pagamento'
    template_name = 'pagamentos/recibo.html'
    permission_required = 'dizimo.view_pagamento'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'pagamentos'
        kwargs['paroquia'] = self.get_object().paroquia
        kwargs['titulo_relatorio'] = 'Recibo'
        kwargs['user'] = self.request.user
        return super().get_context_data(**kwargs)

    def get_object(self, queryset=None):
        object = super().get_object(queryset)
        if not self.request.user.perfil.eh_administrador():
            if not self.request.user.perfil.paroquia == object.paroquia:
                raise PermissionDenied
        return object


###########################################################
#  RELATORIOS                                             #
###########################################################

def get_batismos(usuario, data_inicio, data_fim):
    if usuario.perfil.eh_administrador():
        return Batismo.objects.filter(data_batismo__gte=data_inicio, data_batismo__lte=data_fim).order_by('data_batismo', 'nome_batizando')
    return Batismo.objects.filter(paroquia=usuario.perfil.paroquia, data_batismo__gte=data_inicio, data_batismo__lte=data_fim).order_by('data_batismo', 'nome_batizando')


def get_dizimos(usuario, data_inicio, data_fim):
    if usuario.perfil.eh_administrador():
        return Dizimo.objects.filter(cadastrado_em__date__gte=data_inicio, cadastrado_em__date__lte=data_fim).order_by('referencia', 'dizimista__nome')
    return Dizimo.objects.filter(paroquia=usuario.perfil.paroquia, cadastrado_em__date__gte=data_inicio, cadastrado_em__date__lte=data_fim).order_by('referencia', 'dizimista__nome')


def get_doacoes(usuario, data_inicio, data_fim):
    if usuario.perfil.eh_administrador():
        return Doacao.objects.filter(data__gte=data_inicio, data__lte=data_fim).order_by('data')
    return Doacao.objects.filter(paroquia=usuario.perfil.paroquia, data__gte=data_inicio, data__lte=data_fim).order_by('data')


def get_ofertas(usuario, data_inicio, data_fim):
    if usuario.perfil.eh_administrador():
        return Oferta.objects.filter(data__gte=data_inicio, data__lte=data_fim).order_by('data')
    return Oferta.objects.filter(paroquia=usuario.perfil.paroquia, data__gte=data_inicio, data__lte=data_fim).order_by('data')


def get_pagamentos(usuario, data_inicio, data_fim):
    if usuario.perfil.eh_administrador():
        return Pagamento.objects.filter(data__gte=data_inicio, data__lte=data_fim).order_by('data')
    return Pagamento.objects.filter(paroquia=usuario.perfil.paroquia, data__gte=data_inicio, data__lte=data_fim).order_by('data')


@login_required
@permission_required('dizimo.list_batismo', raise_exception=True)
def relatorio_batismos(request):
    batismos = []

    form = RecebimentosPorPeriodoForm(request.POST or None)

    if request.method == 'POST':
        form = RecebimentosPorPeriodoForm(request.POST)
        if form.is_valid():
            data_inicio = form.cleaned_data['data_inicio']
            data_fim = form.cleaned_data['data_fim']

            # consulta batismos
            batismos = get_batismos(request.user, data_inicio, data_fim)
            if not batismos.exists():
                messages.warning(request, 'Nenhum resultado encontrado!')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_batismos',
        'form': form,
        'titulo': 'Relatório de batismos',
        'url_relatorio': 'dizimo:relatorio_batismos_pdf',
        'batismos': batismos
    }
    return render(request, 'relatorios/relatorio_recebimentos.html', context)


@login_required
@permission_required('dizimo.list_dizimo', raise_exception=True)
def relatorio_dizimos(request):
    dizimos = []

    form = RecebimentosPorPeriodoForm(request.POST or None)

    if request.method == 'POST':
        form = RecebimentosPorPeriodoForm(request.POST)
        if form.is_valid():
            data_inicio = form.cleaned_data['data_inicio']
            data_fim = form.cleaned_data['data_fim']

            # consulta dizimos
            dizimos = get_dizimos(request.user, data_inicio, data_fim)
            if not dizimos.exists():
                messages.warning(request, 'Nenhum resultado encontrado!')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_dizimos',
        'form': form,
        'titulo': 'Relatório de Dízimos',
        'url_relatorio': 'dizimo:relatorio_dizimos_pdf',
        'dizimos': dizimos
    }
    return render(request, 'relatorios/relatorio_recebimentos.html', context)


@login_required
@permission_required('dizimo.list_doacao', raise_exception=True)
def relatorio_doacoes(request):
    doacoes = []

    form = RecebimentosPorPeriodoForm(request.POST or None)

    if request.method == 'POST':
        form = RecebimentosPorPeriodoForm(request.POST)
        if form.is_valid():
            data_inicio = form.cleaned_data['data_inicio']
            data_fim = form.cleaned_data['data_fim']

            # consulta doacoes
            doacoes = get_doacoes(request.user, data_inicio, data_fim)
            if not doacoes.exists():
                messages.warning(request, 'Nenhum resultado encontrado!')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_doacoes',
        'form': form,
        'titulo': 'Relatório de Doações',
        'url_relatorio': 'dizimo:relatorio_doacoes_pdf',
        'doacoes': doacoes
    }
    return render(request, 'relatorios/relatorio_recebimentos.html', context)


@login_required
@permission_required('dizimo.list_oferta', raise_exception=True)
def relatorio_ofertas(request):
    ofertas = []

    form = RecebimentosPorPeriodoForm(request.POST or None)

    if request.method == 'POST':
        form = RecebimentosPorPeriodoForm(request.POST)
        if form.is_valid():
            data_inicio = form.cleaned_data['data_inicio']
            data_fim = form.cleaned_data['data_fim']

            # consulta ofertas
            ofertas = get_ofertas(request.user, data_inicio, data_fim)
            if not ofertas.exists():
                messages.warning(request, 'Nenhum resultado encontrado!')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_ofertas',
        'form': form,
        'titulo': 'Relatório de Ofertas',
        'url_relatorio': 'dizimo:relatorio_ofertas_pdf',
        'ofertas': ofertas
    }
    return render(request, 'relatorios/relatorio_recebimentos.html', context)


@login_required
@permission_required('dizimo.list_dizimo', raise_exception=True)
def relatorio_geral_recebimentos(request):
    dizimos = []
    ofertas = []
    batismos = []
    doacoes = []

    form = RecebimentosPorPeriodoForm(request.POST or None)

    if request.method == 'POST':
        form = RecebimentosPorPeriodoForm(request.POST)
        if form.is_valid():
            data_inicio = form.cleaned_data['data_inicio']
            data_fim = form.cleaned_data['data_fim']

            # consulta dizimos
            dizimos = get_dizimos(request.user, data_inicio, data_fim)
            # consulta ofertas
            ofertas = get_ofertas(request.user, data_inicio, data_fim)
            # consulta batismos
            batismos = get_batismos(request.user, data_inicio, data_fim)
            # consulta doacoes
            doacoes = get_doacoes(request.user, data_inicio, data_fim)
            if not batismos.exists() and not dizimos.exists() and not ofertas.exists() and not doacoes.exists():
                messages.warning(request, 'Nenhum resultado encontrado!')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_geral_recebimentos',
        'form': form,
        'titulo': 'Relatório Geral de Recebimentos',
        'url_relatorio': 'dizimo:relatorio_geral_recebimentos_pdf',
        'dizimos': dizimos,
        'ofertas': ofertas,
        'batismos': batismos,
        'doacoes': doacoes
    }
    return render(request, 'relatorios/relatorio_recebimentos.html', context)


@login_required
@permission_required('dizimo.list_pagamento', raise_exception=True)
def relatorio_pagamentos(request):
    pagamentos = []

    form = RecebimentosPorPeriodoForm(request.POST or None)

    if request.method == 'POST':
        form = RecebimentosPorPeriodoForm(request.POST)
        if form.is_valid():
            data_inicio = form.cleaned_data['data_inicio']
            data_fim = form.cleaned_data['data_fim']

            # consulta pagamentos
            pagamentos = get_pagamentos(request.user, data_inicio, data_fim)
            if not pagamentos.exists():
                messages.warning(request, 'Nenhum resultado encontrado!')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_pagamentos',
        'form': form,
        'titulo': 'Relatório de Pagamentos',
        'url_relatorio': 'dizimo:relatorio_pagamentos_pdf',
        'pagamentos': pagamentos,
    }
    return render(request, 'relatorios/relatorio_pagamentos.html', context)


class RelatorioPagamentosPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_pagamentos_pdf.html'
    download_filename = 'relatorio_pagamentos.pdf'
    permission_required = 'dizimo.list_pagamento'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        dt_inicio = self.request.GET.get('data_ini')
        dt_fim = self.request.GET.get('data_fim')

        # converte datas
        if dt_inicio:
            data_inicio = datetime.strptime(dt_inicio, '%d/%m/%Y')
        if dt_fim:
            data_fim = datetime.strptime(dt_fim, '%d/%m/%Y')

        # consulta pagamentos
        pagamentos = get_pagamentos(self.request.user, data_inicio, data_fim)
        total_pagamentos = pagamentos.aggregate(total=Sum('valor'))

        context['titulo_relatorio'] = 'Relatório de pagamentos relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['pagamentos'] = pagamentos
        context['total_pagamentos'] = total_pagamentos
        return context


class RelatorioBatismosPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_batismos.pdf'
    permission_required = 'dizimo.list_batismo'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        dt_inicio = self.request.GET.get('data_ini')
        dt_fim = self.request.GET.get('data_fim')

        # converte datas
        if dt_inicio:
            data_inicio = datetime.strptime(dt_inicio, '%d/%m/%Y')
        if dt_fim:
            data_fim = datetime.strptime(dt_fim, '%d/%m/%Y')

        # consulta batismos
        batismos = get_batismos(self.request.user, data_inicio, data_fim)
        total_batismos = batismos.aggregate(total=Sum('valor'))

        # somatorio
        total_geral = 0
        if batismos:
            total_geral += total_batismos['total']

        context['titulo_relatorio'] = 'Relatório de batismos relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['batismos'] = batismos
        context['total_batismos'] = total_batismos
        context['total_geral'] = total_geral
        return context


class RelatorioDizimosPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_dizimos.pdf'
    permission_required = 'dizimo.list_dizimo'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        dt_inicio = self.request.GET.get('data_ini')
        dt_fim = self.request.GET.get('data_fim')

        # converte datas
        if dt_inicio:
            data_inicio = datetime.strptime(dt_inicio, '%d/%m/%Y')
        if dt_fim:
            data_fim = datetime.strptime(dt_fim, '%d/%m/%Y')

        # consulta dizimos
        dizimos = get_dizimos(self.request.user, data_inicio, data_fim)
        total_dizimos = dizimos.aggregate(total=Sum('valor'))

        # somatorio
        total_geral = 0
        if dizimos:
            total_geral += total_dizimos['total']

        context['titulo_relatorio'] = 'Relatório de dízimos relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['dizimos'] = dizimos
        context['total_dizimos'] = total_dizimos
        context['total_geral'] = total_geral
        return context


class RelatorioDoacoesPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_doacoes.pdf'
    permission_required = 'dizimo.list_doacao'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        dt_inicio = self.request.GET.get('data_ini')
        dt_fim = self.request.GET.get('data_fim')

        # converte datas
        if dt_inicio:
            data_inicio = datetime.strptime(dt_inicio, '%d/%m/%Y')
        if dt_fim:
            data_fim = datetime.strptime(dt_fim, '%d/%m/%Y')

        # consulta doacoes
        doacoes = get_doacoes(self.request.user, data_inicio, data_fim)
        total_doacoes = doacoes.aggregate(total=Sum('valor'))
        # somatorio
        total_geral = 0
        if doacoes:
            total_geral += total_doacoes['total']

        context['titulo_relatorio'] = 'Relatório de doações relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['doacoes'] = doacoes
        context['total_doacoes'] = total_doacoes
        context['total_geral'] = total_geral
        return context


class RelatorioOfertasPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_ofertas.pdf'
    permission_required = 'dizimo.list_oferta'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        dt_inicio = self.request.GET.get('data_ini')
        dt_fim = self.request.GET.get('data_fim')

        # converte datas
        if dt_inicio:
            data_inicio = datetime.strptime(dt_inicio, '%d/%m/%Y')
        if dt_fim:
            data_fim = datetime.strptime(dt_fim, '%d/%m/%Y')

        # consulta ofertas
        ofertas = get_ofertas(self.request.user, data_inicio, data_fim)
        total_ofertas = ofertas.aggregate(total=Sum('valor'))
        # somatorio
        total_geral = 0
        if ofertas:
            total_geral += total_ofertas['total']

        context['titulo_relatorio'] = 'Relatório de ofertas relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['ofertas'] = ofertas
        context['total_ofertas'] = total_ofertas
        context['total_geral'] = total_geral
        return context


class RelatorioGeralRecebimentosPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_geral_recebimentos.pdf'
    permission_required = 'dizimo.list_dizimo'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        dt_inicio = self.request.GET.get('data_ini')
        dt_fim = self.request.GET.get('data_fim')

        # converte datas
        if dt_inicio:
            data_inicio = datetime.strptime(dt_inicio, '%d/%m/%Y')
        if dt_fim:
            data_fim = datetime.strptime(dt_fim, '%d/%m/%Y')

        # consulta dizimos
        dizimos = get_dizimos(self.request.user, data_inicio, data_fim)
        total_dizimos = dizimos.aggregate(total=Sum('valor'))
        # consulta ofertas
        ofertas = get_ofertas(self.request.user, data_inicio, data_fim)
        total_ofertas = ofertas.aggregate(total=Sum('valor'))
        # consulta batismos
        batismos = get_batismos(self.request.user, data_inicio, data_fim)
        total_batismos = batismos.aggregate(total=Sum('valor'))
        # consulta doacoes
        doacoes = get_doacoes(self.request.user, data_inicio, data_fim)
        total_doacoes = doacoes.aggregate(total=Sum('valor'))
        # somatorio
        total_geral = 0
        if dizimos:
            total_geral += total_dizimos['total']
        if ofertas:
            total_geral += total_ofertas['total']
        if batismos:
            total_geral += total_batismos['total']
        if doacoes:
            total_geral += total_doacoes['total']

        context['titulo_relatorio'] = 'Relatório geral de recebimentos relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['dizimos'] = dizimos
        context['ofertas'] = ofertas
        context['batismos'] = batismos
        context['doacoes'] = doacoes
        context['total_dizimos'] = total_dizimos
        context['total_ofertas'] = total_ofertas
        context['total_batismos'] = total_batismos
        context['total_doacoes'] = total_doacoes
        context['total_geral'] = total_geral
        return context


class RelatorioAniversariantesPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_aniversariantes_pdf.html'
    download_filename = 'relatorio_aniversariantes.pdf'
    base_url = 'file://' + settings.STATIC_ROOT
    permission_required = 'dizimo.list_dizimista'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        mes_escolhido = int(self.request.GET.get('mes', datetime.today().month))
        mes = MESES[mes_escolhido-1]
        lista_aniversariantes = Dizimista.objects.filter(
            data_nascimento__month=mes_escolhido,
            paroquia=self.request.user.perfil.paroquia).order_by('data_nascimento', 'nome')

        context['titulo_relatorio'] = 'Relatório de Aniversariantes de {0}'.format(mes['nome'])
        context['aniversariantes'] = lista_aniversariantes
        context['user'] = self.request.user
        return context


@login_required
@permission_required('dizimo.list_dizimista', raise_exception=True)
def relatorio_dizimistas(request):
    dizimistas = Dizimista.objects.filter(paroquia=request.user.perfil.paroquia)
    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_dizimistas',
        'titulo_relatorio': 'Relatório de Dizimistas',
        'dizimistas': dizimistas
    }
    return render(request, 'relatorios/relatorio_dizimistas.html', context)


class RelatorioDizimistasPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_dizimistas_pdf.html'
    download_filename = 'relatorio_dizimistas.pdf'
    base_url = 'file://' + settings.STATIC_ROOT
    permission_required = 'dizimo.list_dizimista'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['titulo_relatorio'] = 'Relatório de Dizimistas'
        context['dizimistas'] = Dizimista.objects.filter(paroquia=self.request.user.perfil.paroquia)
        context['user'] = self.request.user
        return context


class FichaCadastralDizimistaPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/ficha_cadastral_dizimista_pdf.html'
    download_filename = 'ficha_cadastral_dizimista.pdf'
    permission_required = 'dizimo.view_dizimista'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'relatorios'
        kwargs['titulo_relatorio'] = 'Ficha cadastral de Dizimista'
        kwargs['user'] = self.request.user

        return super().get_context_data(**kwargs)


class FichaCadastralBatismoPDF(LoggedInPermissionsMixin, PDFTemplateView):
    template_name = 'relatorios/ficha_cadastral_batismo_pdf.html'
    download_filename = 'ficha_cadastral_batismo.pdf'
    permission_required = 'dizimo.view_batismo'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'relatorios'
        kwargs['titulo_relatorio'] = 'Ficha cadastral de Batismo'
        kwargs['user'] = self.request.user

        return super().get_context_data(**kwargs)


class RelatorioIndividualDizimistaPDF(LoggedInPermissionsMixin, PDFTemplateResponseMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_individual_dizimista.pdf'
    permission_required = 'dizimo.view_dizimista'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        # consulta dizimos
        dizimos = self.object.dizimos.filter(paroquia=self.request.user.perfil.paroquia).order_by('referencia')
        total_dizimos = dizimos.aggregate(total=Sum('valor'))

        # somatorio
        total_geral = 0
        if dizimos:
            total_geral += total_dizimos['total']

        context['titulo_relatorio'] = 'Relatório individual do dizimista {0}'.format(self.object)
        context['user'] = self.request.user
        context['dizimos'] = dizimos
        context['total_dizimos'] = total_dizimos
        context['total_geral'] = total_geral
        return context
