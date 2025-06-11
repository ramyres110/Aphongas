from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib import messages
from django.db.models import Sum

from ..models import Deposito
from ..forms.cadastro_deposito import CadastroDepositoForm

login_url = "Backoffice_Index"
model_name = "deposito"

@login_required
@permission_required(f"core.view_{model_name}", login_url=login_url)
def ListarDepositos(request):
    depositos = Deposito.objects.all()
    dados = {
        "page_title": "Depósitos",
        "depositos": depositos
    }
    return render(request, 'Backoffice/pages/deposito_lista.html', context=dados)

@login_required
@permission_required(f"core.add_{model_name}", login_url=login_url)
def CadastrarDeposito(request):
    if (request.method == "POST"):
        deposito = CadastroDepositoForm(request.POST)
        nova_deposito = deposito.save(commit=False)
        nova_deposito.updated_by = request.user
        
        try:
            nova_deposito.save()
            messages.info(request, "Depósito registrada com sucesso!")
        except Exception as e:
            messages.warning(request, f"Erro ao registrar a depósito! Error:{e}")
        
        return redirect("Backoffice_Movimentacao")

    form = CadastroDepositoForm()
    dados = {
        "page_title": "Cadastro de Depósito",
        "form": form
    }
    return render(request, 'Backoffice/pages/deposito_cadastro.html', context=dados)
