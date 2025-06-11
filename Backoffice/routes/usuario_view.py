from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib import messages
from django.contrib.auth.models import User

from ..forms.cadastro_usuario import CadastroUsuarioForm

login_url = "Backoffice_Index"

@login_required
@permission_required(f"auth.view_user", login_url=login_url)
def ListarUsuarios(request):
    users = User.objects.all()
    dados = {
        "page_title": "Usuários",
        "users": users
    }
    return render(request, 'Backoffice/pages/deposito_lista.html', context=dados)


@login_required
@permission_required(f"auth.add_user", login_url=login_url)
def CadastrarUsuario(request):
    if (request.method == "POST"):
        usuario = CadastroUsuarioForm(request.POST)
        nova_usuario = usuario.save(commit=False)
        nova_usuario.updated_by = request.user
        
        try:
            nova_usuario.save()
            messages.info(request, "Usuário registrada com sucesso!")
        except Exception as e:
            messages.warning(request, f"Erro ao registrar a usuário! Error:{e}")
        
        return redirect("Backoffice_Movimentacao")

    form = CadastroUsuarioForm()
    dados = {
        "page_title": "Cadastro de usuário",
        "form": form
    }
    return render(request, 'Backoffice/pages/usuario_cadastro.html', context=dados)
