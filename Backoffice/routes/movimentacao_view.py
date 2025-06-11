from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib import messages
from django.db.models import Sum

from ..models import Movimentacao
from ..forms.cadastro_movimentacao import CadastroMovimentacaoForm

login_url = "Backoffice_Index"
model_name = 'movimentacao'

@login_required
@permission_required(f"core.view_{model_name}", login_url=login_url)
def ListarMovimentacoes(request):
    filtro = request.GET.get("filtro")
    if not filtro:
        movimentacoes_entrada = Movimentacao.objects.filter(tipo="E")
        movimentacoes_saida = Movimentacao.objects.filter(tipo="S")
        movimentacoes = movimentacoes_entrada | movimentacoes_saida
        dados = {
            "page_title": "Movimentações",
            "movimentacoes": movimentacoes,
            "qtde_entradas": movimentacoes_entrada.count(),
            "total_entradas": int(movimentacoes_entrada.aggregate(Sum("quantidade"))["quantidade__sum"]),
            "qtde_saidas": movimentacoes_saida.count(),
            "total_saidas": int(movimentacoes_saida.aggregate(Sum("quantidade"))["quantidade__sum"] * (-1))
        }
        return render(request, 'Backoffice/pages/movimentacao_lista.html', context=dados)
    elif filtro in ["E", "S"]:
        movimentacoes = Movimentacao.objects.filter(tipo=filtro)
        dados = {
            "page_title": "Movimentações",
            "movimentacoes": movimentacoes,
            "filtro": filtro
        }
        return render(request, 'Backoffice/pages/movimentacao_lista.html', context=dados)
    else:
        redirect(login_url)


@login_required
@permission_required(f"core.add_{model_name}", login_url=login_url)
def CadastrarMovimentacao(request):
    if (request.method == "POST"):
        movimentacao = CadastroMovimentacaoForm(request.POST)
        nova_movimentacao = movimentacao.save(commit=False)
        nova_movimentacao.updated_by = request.user
        
        fator = 1 if nova_movimentacao.tipo == "E" else -1
        nova_movimentacao.quantidade = nova_movimentacao.quantidade * fator 
        
        try:
            nova_movimentacao.save()
            messages.info(request, "Movimentação registrada com sucesso!")
        except Exception as e:
            messages.warning(request, f"Erro ao registrar a movimentação! Error:{e}")
        
        return redirect("Backoffice_Movimentacao")

    form = CadastroMovimentacaoForm()
    dados = {
        "page_title": "Cadastro de Movimentação",
        "form": form
    }
    return render(request, 'Backoffice/pages/movimentacao_cadastro.html', context=dados)

@login_required
@permission_required(f"core.change_{model_name}", login_url=login_url)
def AlterarMovimentacao(request, id):
    movimentacao = Movimentacao.objects.get(pk=id)
    
    if request.method == "POST":
        movimentacao = CadastroMovimentacaoForm(request.POST, instance=movimentacao)
        try:
            movimentacao.save()
            messages.info(request, "Movimentação alterada com sucesso!")
        except Exception as e:
            messages.warning(request, f"Erro ao alterar a movimentação! Error:{e}")
        return redirect("Backoffice_Movimentacao")
    
    form = CadastroMovimentacaoForm(instance=movimentacao)
    dados = {
        "page_title": "Alterar Movimentação",
        "form": form
    }
    return render(request, 'Backoffice/pages/movimentacao_cadastro.html', context=dados)

@login_required
@permission_required(f"core.delete_{model_name}", login_url=login_url)
def ExcluirMovimentacao(request, id):
    movimentacao = get_object_or_404(Movimentacao, pk=id)
    try:
        movimentacao.delete()
        messages.info(request, "Movimentação excluída com sucesso!")
    except Exception as e:
        messages.warning(request, f"Erro ao excluir a movimentação! Error:{e}")
    
    return redirect("Backoffice_Movimentacao")
    