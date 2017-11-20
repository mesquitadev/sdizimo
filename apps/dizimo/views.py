from datetime import datetime
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import redirect
from django.views.generic import CreateView, UpdateView, DetailView, DeleteView
from django.urls import reverse_lazy
from search_views.search import SearchListView

from .models import Dizimista, Oferta
from .filters import DizimistaFilter, OfertaFilter
from .forms import DizimistaForm, TelefoneFormSet, ConsultaDizimistaForm, ConsultaOfertaForm, OfertaForm


###########################################################
#  DIZIMISTAS                                             #
###########################################################

class ListaDizimistas(LoginRequiredMixin, SearchListView):
    model = Dizimista
    context_object_name = 'dizimistas'
    template_name = 'dizimo/dizimistas.html'
    paginate_by = 20
    form_class = ConsultaDizimistaForm
    filter_class = DizimistaFilter

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class NovoDizimista(LoginRequiredMixin, CreateView):
    model = Dizimista
    form_class = DizimistaForm
    template_name = 'dizimo/novo_dizimista.html'

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
    template_name = 'dizimo/edita_dizimista.html'
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
    template_name = 'dizimo/exibe_dizimista.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'dizimistas'
        return super().get_context_data(**kwargs)


class ExcluiDizimista(LoginRequiredMixin, DeleteView):
    model = Dizimista
    success_url = reverse_lazy('dizimo:dizimistas')
    template_name = 'dizimo/exclui_dizimista.html'
    context_object_name = 'dizimista'


###########################################################
#  OFERTAS                                                #
###########################################################

class ListaOfertas(LoginRequiredMixin, SearchListView):
    model = Oferta
    context_object_name = 'ofertas'
    template_name = 'dizimo/ofertas.html'
    paginate_by = 20
    form_class = ConsultaOfertaForm
    filter_class = OfertaFilter

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
    template_name = 'dizimo/nova_oferta.html'

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
    template_name = 'dizimo/edita_oferta.html'
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
    template_name = 'dizimo/exibe_oferta.html'

    def get_context_data(self, **kwargs):
        kwargs['menu'] = 'recebimentos'
        kwargs['menu_dropdown'] = 'ofertas'
        return super().get_context_data(**kwargs)


class ExcluiOferta(LoginRequiredMixin, DeleteView):
    model = Oferta
    success_url = reverse_lazy('dizimo:ofertas')
    template_name = 'dizimo/exclui_oferta.html'
    context_object_name = 'oferta'
