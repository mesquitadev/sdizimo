from datetime import datetime
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.db.models import Sum
from django.shortcuts import redirect, render
from django.views.generic import CreateView, UpdateView, DetailView, DeleteView
from django.urls import reverse_lazy
from easy_pdf.views import PDFTemplateView, PDFTemplateResponseMixin
from search_views.search import SearchListView

from .models import Dizimista, Oferta, Dizimo, Batismo, Doacao, Paroquia, Igreja
from .filters import DizimistaFilter, RecebimentoFilter, ParoquiaFilter
from .forms import DizimistaForm, TelefoneFormSet, ConsultaDizimistaForm, ConsultaOfertaForm, OfertaForm, \
    DizimoForm, ConsultaDizimoForm, BatismoForm, ConsultaBatismoForm, DoacaoForm, ConsultaDoacaoForm, \
    RecebimentosPorPeriodoForm, ParoquiaForm, ConsultaParoquiaForm, IgrejaForm
from .utils import MESES


###########################################################
#  DIZIMISTAS                                             #
###########################################################

class ListaDizimistas(LoginRequiredMixin, PermissionRequiredMixin, SearchListView):
    model = Dizimista
    context_object_name = 'dizimistas'
    template_name = 'dizimistas.html'
    paginate_by = 20
    form_class = ConsultaDizimistaForm
    filter_class = DizimistaFilter
    permission_required = 'dizimo.list_dizimista'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class NovoDizimista(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'novo_dizimista.html'
    permission_required = 'dizimo.add_dizimista'
    raise_exception = True

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
            self.object = form.save()
            formset.instance = self.object
            formset.save()
            return redirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form))


class EditaDizimista(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'edita_dizimista.html'
    context_object_name = 'dizimista'
    permission_required = 'dizimo.change_dizimista'
    raise_exception = True

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


class ExibeDizimista(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'exibe_dizimista.html'
    permission_required = 'dizimo.view_dizimista'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class ExibeDizimistaPDF(LoginRequiredMixin, PDFTemplateResponseMixin, PermissionRequiredMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'relatorios/exibe_dizimista_pdf.html'
    download_filename = 'ficha_cadastral_dizimista.pdf'
    permission_required = 'dizimo.view_dizimista'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        kwargs['titulo_relatorio'] = 'Ficha cadastral de {0}'.format(self.object)
        kwargs['user'] = self.request.user

        return super().get_context_data(**kwargs)


class ExcluiDizimista(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    model = Dizimista
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'exclui_dizimista.html'
    context_object_name = 'dizimista'
    permission_required = 'dizimo.delete_dizimista'
    raise_exception = True


@login_required
@permission_required('dizimo.list_dizimista', raise_exception=True)
def aniversariantes(request):
    mes_escolhido = int(request.GET.get('mes', datetime.today().month))

    lista_aniversariantes = Dizimista.objects.filter(data_nascimento__month=mes_escolhido).order_by('data_nascimento', 'nome')

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

class ListaOfertas(LoginRequiredMixin, PermissionRequiredMixin, SearchListView):
    model = Oferta
    context_object_name = 'ofertas'
    template_name = 'ofertas.html'
    paginate_by = 20
    form_class = ConsultaOfertaForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_oferta'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = Oferta.objects.all()
        self.form = ConsultaOfertaForm(request.GET)
        if self.form and self.form.is_valid():
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(recebida_em__gte=data_inicio)
            if data_fim:
                data_fim = datetime.combine(data_fim, datetime.max.time())
                object_list = object_list.filter(recebida_em__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list


class NovaOferta(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    model = Oferta
    form_class = OfertaForm
    template_name = 'nova_oferta.html'
    permission_required = 'dizimo.add_oferta'
    raise_exception = True

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


class EditaOferta(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    model = Oferta
    form_class = OfertaForm
    template_name = 'edita_oferta.html'
    context_object_name = 'oferta'
    permission_required = 'dizimo.change_oferta'
    raise_exception = True

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_oferta', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'ofertas'
        return context


class ExibeOferta(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    model = Oferta
    context_object_name = 'oferta'
    template_name = 'exibe_oferta.html'
    permission_required = 'dizimo.view_oferta'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)


class ExcluiOferta(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    model = Oferta
    success_url = reverse_lazy('dizimo:ofertas')
    template_name = 'exclui_oferta.html'
    context_object_name = 'oferta'
    permission_required = 'dizimo.delete_oferta'
    raise_exception = True


###########################################################
#  DIZIMOS                                                #
###########################################################

class ListaDizimos(LoginRequiredMixin, PermissionRequiredMixin, SearchListView):
    model = Dizimo
    context_object_name = 'dizimos'
    template_name = 'dizimos.html'
    paginate_by = 20
    form_class = ConsultaDizimoForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_dizimo'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = Dizimo.objects.all()
        self.form = ConsultaDizimoForm(request.GET)
        if self.form and self.form.is_valid():
            dizimista = self.form.cleaned_data['dizimista']
            referencia = self.form.cleaned_data['referencia']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if dizimista:
                object_list = object_list.filter(dizimista__nome__unaccent__icontains=dizimista)
            if referencia:
                data_referencia = datetime.strptime(referencia, '%m/%Y')
                object_list = object_list.filter(referencia=data_referencia)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(recebida_em__gte=data_inicio)
            if data_fim:
                data_fim = datetime.combine(data_fim, datetime.max.time())
                object_list = object_list.filter(recebida_em__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list


class NovoDizimo(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'novo_dizimo.html'
    permission_required = 'dizimo.add_dizimo'
    raise_exception = True

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


class EditaDizimo(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'edita_dizimo.html'
    context_object_name = 'dizimo'
    permission_required = 'dizimo.change_dizimo'
    raise_exception = True

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'dizimos'
        return context


class ExibeDizimo(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    model = Dizimo
    context_object_name = 'dizimo'
    template_name = 'exibe_dizimo.html'
    permission_required = 'dizimo.view_dizimo'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        return super().get_context_data(**kwargs)


class ExcluiDizimo(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    model = Dizimo
    success_url = reverse_lazy('dizimo:dizimos')
    template_name = 'exclui_dizimo.html'
    context_object_name = 'dizimo'
    permission_required = 'dizimo.delete_dizimo'
    raise_exception = True


class ReciboDizimo(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateResponseMixin, DetailView):
    model = Dizimo
    context_object_name = 'dizimo'
    template_name = 'recibos/recibo_dizimo.html'
    download_filename = 'recibo.pdf'
    permission_required = 'dizimo.view_dizimo'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        kwargs['igreja'] = Igreja.objects.first()
        kwargs['titulo_relatorio'] = 'Recibo'
        kwargs['user'] = self.request.user
        return super().get_context_data(**kwargs)


###########################################################
#  BATISMOS                                               #
###########################################################

class ListaBatismos(LoginRequiredMixin, PermissionRequiredMixin, SearchListView):
    model = Dizimo
    context_object_name = 'batismos'
    template_name = 'batismos.html'
    paginate_by = 20
    form_class = ConsultaBatismoForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_batismo'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = Batismo.objects.all()
        self.form = ConsultaBatismoForm(request.GET)
        if self.form and self.form.is_valid():
            nome_batizando = self.form.cleaned_data['nome_batizando']
            nome_solicitante = self.form.cleaned_data['nome_solicitante']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if nome_batizando:
                object_list = object_list.filter(nome_batizando__unaccent__icontains=nome_batizando)
            if nome_solicitante:
                object_list = object_list.filter(nome_solicitante__unaccent__icontains=nome_solicitante)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(data_batismo__gte=data_inicio)
            if data_fim:
                object_list = object_list.filter(data_batismo__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list


class NovoBatismo(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    model = Batismo
    form_class = BatismoForm
    template_name = 'novo_batismo.html'
    permission_required = 'dizimo.add_batismo'
    raise_exception = True

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


class EditaBatismo(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    model = Batismo
    form_class = BatismoForm
    template_name = 'edita_batismo.html'
    context_object_name = 'batismo'
    permission_required = 'dizimo.change_batismo'
    raise_exception = True

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_batismo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'batismos'
        return context


class ExibeBatismo(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    model = Batismo
    context_object_name = 'batismo'
    template_name = 'exibe_batismo.html'
    permission_required = 'dizimo.view_batismo'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        return super().get_context_data(**kwargs)


class ExcluiBatismo(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    model = Batismo
    success_url = reverse_lazy('dizimo:batismos')
    template_name = 'exclui_batismo.html'
    context_object_name = 'batismo'
    permission_required = 'dizimo.delete_batismo'
    raise_exception = True


###########################################################
#  DOACOES                                                #
###########################################################

class ListaDoacoes(LoginRequiredMixin, PermissionRequiredMixin, SearchListView):
    model = Doacao
    context_object_name = 'doacoes'
    template_name = 'doacoes.html'
    paginate_by = 20
    form_class = ConsultaDoacaoForm
    filter_class = RecebimentoFilter
    permission_required = 'dizimo.list_doacao'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        return super().get_context_data(**kwargs)

    def get_object_list(self, request, search_errors=None):
        object_list = Doacao.objects.all()
        self.form = ConsultaDoacaoForm(request.GET)
        if self.form and self.form.is_valid():
            descricao = self.form.cleaned_data['descricao']
            usuario = self.form.cleaned_data['usuario']
            data_inicio = self.form.cleaned_data['data_inicio']
            data_fim = self.form.cleaned_data['data_fim']

            if descricao:
                object_list = object_list.filter(descricao__unaccent__icontains=descricao)
            if usuario:
                object_list = object_list.filter(usuario=usuario)
            if data_inicio:
                object_list = object_list.filter(recebida_em__gte=data_inicio)
            if data_fim:
                data_fim = datetime.combine(data_fim, datetime.max.time())
                object_list = object_list.filter(recebida_em__lte=data_fim)
        else:
            print(self.form.errors)
        return object_list


class NovaDoacao(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    model = Doacao
    form_class = DoacaoForm
    template_name = 'nova_doacao.html'
    permission_required = 'dizimo.add_doacao'
    raise_exception = True

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


class EditaDoacao(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    model = Doacao
    form_class = DoacaoForm
    template_name = 'edita_doacao.html'
    context_object_name = 'doacao'
    permission_required = 'dizimo.change_doacao'
    raise_exception = True

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_doacao', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'doacoes'
        return context


class ExibeDoacao(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    model = Doacao
    context_object_name = 'doacao'
    template_name = 'exibe_doacao.html'
    permission_required = 'dizimo.view_doacao'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        return super().get_context_data(**kwargs)


class ExcluiDoacao(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    model = Doacao
    success_url = reverse_lazy('dizimo:doacoes')
    template_name = 'exclui_doacao.html'
    context_object_name = 'doacao'
    permission_required = 'dizimo.delete_doacao'
    raise_exception = True


###########################################################
#  PAROQUIAS                                              #
###########################################################

class ListaParoquias(LoginRequiredMixin, PermissionRequiredMixin, SearchListView):
    model = Paroquia
    context_object_name = 'paroquias'
    template_name = 'paroquias.html'
    paginate_by = 20
    form_class = ConsultaParoquiaForm
    filter_class = ParoquiaFilter
    permission_required = 'dizimo.list_paroquia'
    raise_exception = True

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'configuracoes'
        kwargs['menu_dropdown'] = 'paroquias'
        return super().get_context_data(**kwargs)


class NovaParoquia(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    model = Paroquia
    form_class = ParoquiaForm
    template_name = 'nova_paroquia.html'
    permission_required = 'dizimo.add_paroquia'
    raise_exception = True

    def get_success_url(self):
        return reverse_lazy('dizimo:paroquias')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'configuracoes'
        context['menu_dropdown'] = 'paroquias'
        return context


class EditaParoquia(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    model = Paroquia
    form_class = ParoquiaForm
    template_name = 'edita_paroquia.html'
    context_object_name = 'paroquia'
    permission_required = 'dizimo.change_paroquia'
    raise_exception = True

    def get_success_url(self):
        return reverse_lazy('dizimo:paroquias')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'configuracoes'
        context['menu_dropdown'] = 'paroquias'
        return context


class ExcluiParoquia(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    model = Paroquia
    success_url = reverse_lazy('dizimo:paroquias')
    template_name = 'exclui_paroquia.html'
    context_object_name = 'paroquia'
    permission_required = 'dizimo.delete_paroquia'
    raise_exception = True


###########################################################
#  IGREJA                                                 #
###########################################################

@login_required
@permission_required('dizimo.change_igreja', raise_exception=True)
def dados_igreja(request):
    igreja = Igreja.objects.first()
    if request.method == 'POST':
        form = IgrejaForm(request.POST, instance=igreja)
        if form.is_valid():
            form.save()
            messages.success(request, 'Dados atualizados com sucesso!')
    else:
        form = IgrejaForm(instance=igreja)

    context = {
        'form': form,
        'menu': 'configuracoes',
        'menu_dropdown': 'dados_igreja',
        'igreja': igreja,
    }

    return render(request, 'dados_igreja.html', context)


###########################################################
#  RELATORIOS                                             #
###########################################################

def get_batismos(data_inicio, data_fim):
    return Batismo.objects.filter(data_batismo__gte=data_inicio, data_batismo__lte=data_fim).order_by('data_batismo', 'nome_batizando')


def get_dizimos(data_inicio, data_fim):
    return Dizimo.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('referencia', 'dizimista__nome')


def get_doacoes(data_inicio, data_fim):
    return Doacao.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('recebida_em')


def get_ofertas(data_inicio, data_fim):
    return Oferta.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('recebida_em')


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
            batismos = get_batismos(data_inicio, data_fim)
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
            dizimos = get_dizimos(data_inicio, data_fim)
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
            doacoes = get_doacoes(data_inicio, data_fim)
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
            ofertas = get_ofertas(data_inicio, data_fim)
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
            dizimos = get_dizimos(data_inicio, data_fim)
            # consulta ofertas
            ofertas = get_ofertas(data_inicio, data_fim)
            # consulta batismos
            batismos = get_batismos(data_inicio, data_fim)
            # consulta doacoes
            doacoes = get_doacoes(data_inicio, data_fim)
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


class RelatorioBatismosPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_batismos.pdf'
    permission_required = 'dizimo.list_batismo'
    raise_exception = True

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
        batismos = get_batismos(data_inicio, data_fim)
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


class RelatorioDizimosPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_dizimos.pdf'
    permission_required = 'dizimo.list_dizimo'
    raise_exception = True

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
        dizimos = get_dizimos(data_inicio, data_fim)
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


class RelatorioDoacoesPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_doacoes.pdf'
    permission_required = 'dizimo.list_doacao'
    raise_exception = True

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
        doacoes = get_doacoes(data_inicio, data_fim)
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


class RelatorioOfertasPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_ofertas.pdf'
    permission_required = 'dizimo.list_oferta'
    raise_exception = True

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
        ofertas = get_ofertas(data_inicio, data_fim)
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


class RelatorioGeralRecebimentosPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_geral_recebimentos.pdf'
    permission_required = 'dizimo.list_dizimo'
    raise_exception = True

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
        dizimos = get_dizimos(data_inicio, data_fim)
        total_dizimos = dizimos.aggregate(total=Sum('valor'))
        # consulta ofertas
        ofertas = get_ofertas(data_inicio, data_fim)
        total_ofertas = ofertas.aggregate(total=Sum('valor'))
        # consulta batismos
        batismos = get_batismos(data_inicio, data_fim)
        total_batismos = batismos.aggregate(total=Sum('valor'))
        # consulta doacoes
        doacoes = get_doacoes(data_inicio, data_fim)
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


class RelatorioAniversariantesPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_aniversariantes_pdf.html'
    download_filename = 'relatorio_aniversariantes.pdf'
    base_url = 'file://' + settings.STATIC_ROOT
    permission_required = 'dizimo.list_dizimista'
    raise_exception = True

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        mes_escolhido = int(self.request.GET.get('mes', datetime.today().month))
        mes = MESES[mes_escolhido-1]
        lista_aniversariantes = Dizimista.objects.filter(data_nascimento__month=mes_escolhido).order_by('data_nascimento', 'nome')

        context['titulo_relatorio'] = 'Relatório de Aniversariantes de {0}'.format(mes['nome'])
        context['aniversariantes'] = lista_aniversariantes
        context['user'] = self.request.user
        return context


@login_required
@permission_required('dizimo.list_dizimista', raise_exception=True)
def relatorio_dizimistas(request):
    dizimistas = Dizimista.objects.all()
    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_dizimistas',
        'titulo_relatorio': 'Relatório de Dizimistas',
        'dizimistas': dizimistas
    }
    return render(request, 'relatorios/relatorio_dizimistas.html', context)


class RelatorioDizimistasPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_dizimistas_pdf.html'
    download_filename = 'relatorio_dizimistas.pdf'
    base_url = 'file://' + settings.STATIC_ROOT
    permission_required = 'dizimo.list_dizimista'
    raise_exception = True

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['titulo_relatorio'] = 'Relatório de Dizimistas'
        context['dizimistas'] = Dizimista.objects.all()
        context['user'] = self.request.user
        return context


class FichaCadastralDizimistaPDF(LoginRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/ficha_cadastral_dizimista_pdf.html'
    download_filename = 'ficha_cadastral_dizimista.pdf'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'relatorios'
        kwargs['titulo_relatorio'] = 'Ficha cadastral de Dizimista'
        kwargs['user'] = self.request.user

        return super().get_context_data(**kwargs)


class RelatorioIndividualDizimistaPDF(LoginRequiredMixin, PermissionRequiredMixin, PDFTemplateResponseMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'relatorios/relatorio_recebimentos_pdf.html'
    download_filename = 'relatorio_individual_dizimista.pdf'
    permission_required = 'dizimo.view_dizimista'
    raise_exception = True

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        # consulta dizimos
        dizimos = self.object.dizimos.all().order_by('referencia')
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
