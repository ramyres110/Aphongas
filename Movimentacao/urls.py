from django.urls import path

from .views import Index, Produtos, RegistrarEntrada, RegistrarSaida, Perfil

urlpatterns = [
    path("", Index, name="Movimentacao_Index"),
    path("produtos/", Produtos, name="Movimentacao_Produtos"),
    path("registro/entrada", RegistrarEntrada, name="Movimentacao_Reg_Entrada"),
    path("registro/saida", RegistrarSaida, name="Movimentacao_Reg_Saída"),
    path("perfil", Perfil, name="Movimentacao_Perfil"),
]
