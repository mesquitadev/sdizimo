from datetime import datetime
from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Sum
from django.shortcuts import redirect, render
from django.views.generic import CreateView, UpdateView, DetailView, DeleteView
from django.urls import reverse_lazy
from easy_pdf.views import PDFTemplateView, PDFTemplateResponseMixin
from search_views.search import SearchListView

from .models import Dizimista, Oferta, Dizimo, Batismo, Doacao
from .filters import DizimistaFilter, RecebimentoFilter
from .forms import DizimistaForm, TelefoneFormSet, ConsultaDizimistaForm, ConsultaOfertaForm, OfertaForm, \
    DizimoForm, ConsultaDizimoForm, BatismoForm, ConsultaBatismoForm, DoacaoForm, ConsultaDoacaoForm, \
    RecebimentosPorPeriodoForm
from .utils import MESES


###########################################################
#  DIZIMISTAS                                             #
###########################################################

class ListaDizimistas(LoginRequiredMixin, SearchListView):
    model = Dizimista
    context_object_name = 'dizimistas'
    template_name = 'dizimistas.html'
    paginate_by = 20
    form_class = ConsultaDizimistaForm
    filter_class = DizimistaFilter

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class NovoDizimista(LoginRequiredMixin, CreateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'novo_dizimista.html'

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


class EditaDizimista(LoginRequiredMixin, UpdateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'edita_dizimista.html'
    context_object_name = 'dizimista'

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


class ExibeDizimista(LoginRequiredMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'exibe_dizimista.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class ExibeDizimistaPDF(LoginRequiredMixin, PDFTemplateResponseMixin, DetailView):
    model = Dizimista
    context_object_name = 'dizimista'
    template_name = 'relatorios/exibe_dizimista_pdf.html'
    download_filename = 'ficha_cadastral_dizimista.pdf'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        kwargs['titulo_relatorio'] = 'Ficha cadastral de {0}'.format(self.object)
        kwargs['user'] = self.request.user

        return super().get_context_data(**kwargs)


class ExcluiDizimista(LoginRequiredMixin, DeleteView):
    model = Dizimista
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'exclui_dizimista.html'
    context_object_name = 'dizimista'


@login_required
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

class ListaOfertas(LoginRequiredMixin, SearchListView):
    model = Oferta
    context_object_name = 'ofertas'
    template_name = 'ofertas.html'
    paginate_by = 20
    form_class = ConsultaOfertaForm
    filter_class = RecebimentoFilter

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


class NovaOferta(LoginRequiredMixin, CreateView):
    model = Oferta
    form_class = OfertaForm
    template_name = 'nova_oferta.html'

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


class EditaOferta(LoginRequiredMixin, UpdateView):
    model = Oferta
    form_class = OfertaForm
    template_name = 'edita_oferta.html'
    context_object_name = 'oferta'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_oferta', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'ofertas'
        return context


class ExibeOferta(LoginRequiredMixin, DetailView):
    model = Oferta
    context_object_name = 'oferta'
    template_name = 'exibe_oferta.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)


class ExcluiOferta(LoginRequiredMixin, DeleteView):
    model = Oferta
    success_url = reverse_lazy('dizimo:ofertas')
    template_name = 'exclui_oferta.html'
    context_object_name = 'oferta'


###########################################################
#  DIZIMOS                                                #
###########################################################

class ListaDizimos(LoginRequiredMixin, SearchListView):
    model = Dizimo
    context_object_name = 'dizimos'
    template_name = 'dizimos.html'
    paginate_by = 20
    form_class = ConsultaDizimoForm
    filter_class = RecebimentoFilter

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
                object_list = object_list.filter(dizimista__nome__icontains=dizimista)
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


class NovoDizimo(LoginRequiredMixin, CreateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'novo_dizimo.html'

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


class EditaDizimo(LoginRequiredMixin, UpdateView):
    model = Dizimo
    form_class = DizimoForm
    template_name = 'edita_dizimo.html'
    context_object_name = 'dizimo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_dizimo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'dizimos'
        return context


class ExibeDizimo(LoginRequiredMixin, DetailView):
    model = Dizimo
    context_object_name = 'dizimo'
    template_name = 'exibe_dizimo.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'dizimos'
        return super().get_context_data(**kwargs)


class ExcluiDizimo(LoginRequiredMixin, DeleteView):
    model = Dizimo
    success_url = reverse_lazy('dizimo:dizimos')
    template_name = 'exclui_dizimo.html'
    context_object_name = 'dizimo'


###########################################################
#  BATISMOS                                               #
###########################################################

class ListaBatismos(LoginRequiredMixin, SearchListView):
    model = Dizimo
    context_object_name = 'batismos'
    template_name = 'batismos.html'
    paginate_by = 20
    form_class = ConsultaBatismoForm
    filter_class = RecebimentoFilter

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


class NovoBatismo(LoginRequiredMixin, CreateView):
    model = Batismo
    form_class = BatismoForm
    template_name = 'novo_batismo.html'

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


class EditaBatismo(LoginRequiredMixin, UpdateView):
    model = Batismo
    form_class = BatismoForm
    template_name = 'edita_batismo.html'
    context_object_name = 'batismo'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_batismo', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'batismos'
        return context


class ExibeBatismo(LoginRequiredMixin, DetailView):
    model = Batismo
    context_object_name = 'batismo'
    template_name = 'exibe_batismo.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'batismos'
        return super().get_context_data(**kwargs)


class ExcluiBatismo(LoginRequiredMixin, DeleteView):
    model = Batismo
    success_url = reverse_lazy('dizimo:batismos')
    template_name = 'exclui_batismo.html'
    context_object_name = 'batismo'


###########################################################
#  DOACOES                                                #
###########################################################

class ListaDoacoes(LoginRequiredMixin, SearchListView):
    model = Doacao
    context_object_name = 'doacoes'
    template_name = 'doacoes.html'
    paginate_by = 20
    form_class = ConsultaDoacaoForm
    filter_class = RecebimentoFilter

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
                object_list = object_list.filter(descricao__icontains=descricao)
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


class NovaDoacao(LoginRequiredMixin, CreateView):
    model = Doacao
    form_class = DoacaoForm
    template_name = 'nova_doacao.html'

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


class EditaDoacao(LoginRequiredMixin, UpdateView):
    model = Doacao
    form_class = DoacaoForm
    template_name = 'edita_doacao.html'
    context_object_name = 'doacao'

    def get_success_url(self):
        return reverse_lazy('dizimo:exibe_doacao', kwargs={'pk': self.object.pk})

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu'] = 'recebimentos'
        context['menu_dropdown'] = 'doacoes'
        return context


class ExibeDoacao(LoginRequiredMixin, DetailView):
    model = Doacao
    context_object_name = 'doacao'
    template_name = 'exibe_doacao.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'doacoes'
        return super().get_context_data(**kwargs)


class ExcluiDoacao(LoginRequiredMixin, DeleteView):
    model = Doacao
    success_url = reverse_lazy('dizimo:doacoes')
    template_name = 'exclui_doacao.html'
    context_object_name = 'doacao'


###########################################################
#  RELATORIOS                                             #
###########################################################

@login_required
def recebimentos_por_periodo(request):
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
            dizimos = Dizimo.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('referencia', 'dizimista__nome')
            # consulta ofertas
            ofertas = Oferta.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('recebida_em')
            # consulta batismos
            batismos = Batismo.objects.filter(data_batismo__gte=data_inicio, data_batismo__lte=data_fim).order_by('data_batismo', 'nome_batizando')
            # consulta doacoes
            doacoes = Doacao.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('recebida_em')
    else:
        form = RecebimentosPorPeriodoForm()

    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'recebimentos_periodo',
        'form': form,
        'dizimos': dizimos,
        'ofertas': ofertas,
        'batismos': batismos,
        'doacoes': doacoes
    }
    return render(request, 'recebimentos_por_periodo.html', context)


class RelatorioRecebimentosPorPeriodoPDF(LoginRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_recebimentos_por_periodo_pdf.html'
    download_filename = 'relatorio_recebimentos_por_periodo.pdf'

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
        dizimos = Dizimo.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('referencia', 'dizimista__nome')
        total_dizimos = dizimos.aggregate(total=Sum('valor'))
        # consulta ofertas
        ofertas = Oferta.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('recebida_em')
        total_ofertas = ofertas.aggregate(total=Sum('valor'))
        # consulta batismos
        batismos = Batismo.objects.filter(data_batismo__gte=data_inicio, data_batismo__lte=data_fim).order_by('data_batismo', 'nome_batizando')
        total_batismos = batismos.aggregate(total=Sum('valor'))
        # consulta doacoes
        doacoes = Doacao.objects.filter(recebida_em__gte=data_inicio, recebida_em__lte=data_fim).order_by('recebida_em')
        total_doacoes = doacoes.aggregate(total=Sum('valor'))

        context['titulo_relatorio'] = 'Relatório de Recebimentos relativo ao período de {0} a {1}'.format(dt_inicio, dt_fim)
        context['user'] = self.request.user
        context['dizimos'] = dizimos
        context['ofertas'] = ofertas
        context['batismos'] = batismos
        context['doacoes'] = doacoes
        context['total_dizimos'] = total_dizimos
        context['total_ofertas'] = total_ofertas
        context['total_batismos'] = total_batismos
        context['total_doacoes'] = total_doacoes
        context['total_geral'] = total_dizimos['total'] + total_ofertas['total'] + total_batismos['total'] + total_doacoes['total']
        return context


class RelatorioAniversariantesPDF(LoginRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_aniversariantes_pdf.html'
    download_filename = 'relatorio_aniversariantes.pdf'
    base_url = 'file://' + settings.STATIC_ROOT

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
def relatorio_dizimistas(request):
    dizimistas = Dizimista.objects.all()
    context = {
        'menu': 'relatorios',
        'menu_dropdown': 'relatorio_dizimistas',
        'titulo_relatorio': 'Relatório de Dizimistas',
        'dizimistas': dizimistas
    }
    return render(request, 'relatorios/relatorio_dizimistas.html', context)


class RelatorioDizimistasPDF(LoginRequiredMixin, PDFTemplateView):
    template_name = 'relatorios/relatorio_dizimistas_pdf.html'
    download_filename = 'relatorio_dizimistas.pdf'
    base_url = 'file://' + settings.STATIC_ROOT

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
