from django.urls import path

from .views import * 

urlpatterns = [
    path("", Index, name="Backoffice_Index"),
    
    path("produto/cadastrar", CadastrarProduto, name="Backoffice_Produto_Cadastrar"),
    path("produto/alterar/<int:id>", AlterarProduto, name="Backoffice_Produto_Alterar"),
    path("produto/excluir/<int:id>", ExcluirProduto, name="Backoffice_Produto_Excluir"),
    path("produto/", ListarProdutos, name="Backoffice_Produto"),

    path("movimentacao/cadastrar", CadastrarMovimentacao, name="Backoffice_Movimentacao_Cadastrar"),
    path("movimentacao/alterar/<int:id>", AlterarMovimentacao, name="Backoffice_Movimentacao_Alterar"),
    path("movimentacao/excluir/<int:id>", ExcluirMovimentacao, name="Backoffice_Movimentacao_Excluir"),
    path("movimentacao/", ListarMovimentacoes, name="Backoffice_Movimentacao"),
    
    path("deposito/cadastrar", CadastrarDeposito, name="Backoffice_Deposito_Cadastrar"),
    path("deposito/", ListarDepositos, name="Backoffice_Deposito"),
    
    path("fornecedor/cadastrar", CadastrarFornecedor, name="Backoffice_Fornecedor_Cadastrar"),
    path("fornecedor/", ListarFornecedores, name="Backoffice_Fornecedor"),
    
    path("usuario/cadastrar", CadastrarUsuario, name="Backoffice_Usuario_Cadastrar"),
    path("usuario/", ListarUsuarios, name="Backoffice_Usuario"),
]
