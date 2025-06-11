from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.db.models import Q
from django.contrib import messages

from .models import Produto
from .forms.pesquisa_produto_form import PesquisaProdutoForm
from .forms.registrar_entrada_form import RegistraEntradaForm
from .forms.registrar_saida_form import RegistraSaidaForm

# Create your views here.
def Index(request):
    return render(request,"Movimentacao/index.html")

@login_required()
def Produtos(request):
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

    form = PesquisaProdutoForm({"q":filtro_pesquisa})

    data = {"produtos": produtos, "form": form}
    return render(request,"Movimentacao/produtos.html", context=data)


@login_required()
def RegistrarEntrada(request):
    #Todo: Implementar registro de entada, tipo = E e valor positivo!
    form = RegistraEntradaForm()
    data = {"form": form}
    return render(request,"Movimentacao/entrada.html", context=data)


@login_required()
def RegistrarSaida(request):
    if request.method == "POST":
        #Todo: Adicionar validacao de quantidade de produto para permitir saida
        saida = RegistraSaidaForm(request.POST)
        nova_saida = saida.save(commit=False)
        nova_saida.tipo = "S"
        nova_saida.created_by = request.user
        nova_saida.updated_by = request.user
        nova_saida.quantidade = nova_saida.quantidade * -1 
        try:
            nova_saida.save()
            messages.info(request, "Saída registrada com sucesso!")
        except Exception as e:
            messages.warning(request, f"Erro ao registrar a saída! Error:{e}")

    form = RegistraSaidaForm()
    data = {"form": form}
    return render(request,"Movimentacao/saida.html", context=data)

@login_required()
def Perfil(request):
    return render(request,"Movimentacao/perfil.html")
