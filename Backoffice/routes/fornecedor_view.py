from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib import messages
from django.db.models import Sum

from ..models import Fornecedor
from ..forms.cadastro_fornecedor import CadastroFornecedorForm

login_url = "Backoffice_Index"
model_name = "fornecedor"

@login_required
@permission_required(f"core.view_{model_name}", login_url=login_url)
def ListarFornecedores(request):
    fornecedores = Fornecedor.objects.all()
    dados = {
        "page_title": "Fornecedores",
        "fornecedores": fornecedores
    }
    return render(request, 'Backoffice/pages/deposito_lista.html', context=dados)

@login_required
@permission_required(f"core.add_{model_name}", login_url=login_url)
def CadastrarFornecedor(request):
    if (request.method == "POST"):
        fornecedor = CadastroFornecedorForm(request.POST)
        nova_fornecedor = fornecedor.save(commit=False)
        nova_fornecedor.updated_by = request.user
        
        try:
            nova_fornecedor.save()
            messages.info(request, "Fornecedor registrada com sucesso!")
        except Exception as e:
            messages.warning(request, f"Erro ao registrar a fornecedor! Error:{e}")
        
        return redirect("Backoffice_Movimentacao")

    form = CadastroFornecedorForm()
    dados = {
        "page_title": "Cadastro de Fornecedor",
        "form": form
    }
    return render(request, 'Backoffice/pages/fornecedor_cadastro.html', context=dados)
