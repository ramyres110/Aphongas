from django.contrib import admin

from .models import Deposito, Fornecedor, Produto, Movimentacao

class DepositoAdmin(admin.ModelAdmin):
    list_display = ('id', 'descricao','endereco','capacidade_m3','modelo','tipo','created_at','created_by','updated_at','updated_by')
    list_filter = ('modelo', 'tipo', 'created_by')

class FornecedorAdmin(admin.ModelAdmin):
    list_display = ('id', 'nome','tipo','documento','telefone','endereco','responsavel')
    list_filter = ()

class ProdutoAdmin(admin.ModelAdmin):
    list_display = ('id', 'descricao','tipo','marca','status','qtd_embalagem','unidade','altura','largura','profundidade','peso','observacoes','fornecedor_padrao','deposito_padrao', 'codigo_de_barras', 'fotografia', 'created_at','created_by','updated_at','updated_by')
    list_filter = ('tipo', 'marca', 'status')

class MovimentacaoAdmin(admin.ModelAdmin):
    list_display = ('id', 'quantidade','tipo','nome_cliente','fornecedor', 'deposito', 'created_at','created_by','updated_at','updated_by')
    list_filter = ('tipo', 'deposito', 'status')

# Register your models here.
admin.site.register(Deposito, DepositoAdmin)
admin.site.register(Fornecedor, FornecedorAdmin)
admin.site.register(Produto, ProdutoAdmin)
admin.site.register(Movimentacao, MovimentacaoAdmin)