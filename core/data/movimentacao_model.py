from django.db import models

from .abstract_model import AbstractModel

# Create your models here.
class MovimentacaoModel(AbstractModel):
    TIPO_MOVIMENTACAO = {
        "E": "Entrada",
        "S": "Saída"
    }

    quantidade = models.FloatField(default=1) 
    tipo = models.CharField(max_length=1, choices=TIPO_MOVIMENTACAO) 
    nome_cliente = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        abstract = True