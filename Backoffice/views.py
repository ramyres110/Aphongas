from django.shortcuts import render, HttpResponse
from django.contrib.auth.decorators import login_required, permission_required

from .routes.produto_view import *
from .routes.movimentacao_view import *
from .routes.deposito_view import *
from .routes.fornecedor_view import *
from .routes.usuario_view import *

# Create your views here.
@login_required
def Index(request):
    data = {}
    return render(request, 'Backoffice/index.html', context=data)


