from django.db import models

from .data.deposito_model import DepositoModel
from .data.fornecedor_model import FornecedorModel
from .data.produto_model import ProdutoModel
from .data.movimentacao_model import MovimentacaoModel

class Deposito(DepositoModel):
    class Meta:
        db_table = "depositos"


class Fornecedor(FornecedorModel):
    class Meta:
        db_table = "fornecedores"


class Produto(ProdutoModel):
    fornecedor_padrao = models.ForeignKey(Fornecedor, on_delete=models.SET_NULL, blank=True, null=True)
    deposito_padrao = models.ForeignKey(Deposito, on_delete=models.SET_NULL, blank=True, null=True)

    def get_total_estoque(self):
        total_estoque = Movimentacao.objects.filter(produto_id=self.id).aggregate(models.Sum("quantidade"))
        return total_estoque["quantidade__sum"] or 0

    class Meta:
        db_table = "produtos"


class Movimentacao(MovimentacaoModel):
    produto = models.ForeignKey(Produto, on_delete=models.PROTECT)
    deposito = models.ForeignKey(Deposito, on_delete=models.PROTECT)
    fornecedor = models.ForeignKey(Fornecedor, on_delete=models.SET_NULL, blank=True, null=True)
    
    class Meta:
        db_table = "movimentacoes"