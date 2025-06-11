from django.shortcuts import render, HttpResponse
from django.contrib.auth.decorators import login_required, permission_required

from ..forms.cadastro_produto import CadastroProdutoForm
from core.models import Produto

login_url = "Backoffice_Index"
model_name = "produto"

@login_required
@permission_required(f"core.view_{model_name}", login_url=login_url)
def ListarProdutos(request):
    filtro_pesquisa = ""
    if "q" in request.GET.keys():
        filtro_pesquisa = request.GET["q"]
    
    produtos = []
    if filtro_pesquisa == "":
        produtos_qs = Produto.objects.all()    
    else:
        #Todo: Adicionar codigo de barras para permitir filtrar
        produtos_qs = Produto.objects.filter(Q(descricao__icontains=filtro_pesquisa)|
                                            Q(tipo__icontains=filtro_pesquisa) |
                                            Q(marca__icontains=filtro_pesquisa) |
                                            Q(observacoes__icontains=filtro_pesquisa))
    
    for produto in produtos_qs:
            produto.fotografia = produto.get_fotografia_filename()
            produtos.append(produto)

    dado = {
        "page_title": "Produtos",
        "produtos": produtos
    }
    
    return render(request, 'Backoffice/pages/produto_lista.html', context=dado)

@login_required
@permission_required(f"core.add_{model_name}", login_url=login_url)
def CadastrarProduto(request):
    form = CadastroProdutoForm()
    dado = {
        "page_title": "Cadastro de Produtos",
        "form": form
    }
    return render(request, 'Backoffice/pages/produto_cadastro.html', context=dado)

@login_required
@permission_required(f"core.change_{model_name}", login_url=login_url)
def AlterarProduto(request, id):
    return render(request, 'Backoffice/index.html')

@login_required
@permission_required(f"core.delete_{model_name}", login_url=login_url)
def ExcluirProduto(request, id):
    return render(request, 'Backoffice/index.html')