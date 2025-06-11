from django.db import models

from .abstract_model import AbstractModel

# Create your models here.
class FornecedorModel(AbstractModel):
    TIPOS_P = {
        "PF": "Pessoa Física",
        "PJ": "Pessoa Jurídica"
    }

    nome = models.CharField(max_length=100)
    tipo = models.CharField(max_length=2, choices=TIPOS_P, default="PJ")
    documento = models.CharField(max_length=50, blank=True, null=True)
    telefone = models.CharField(max_length=20, blank=True, null=True)
    endereco = models.TextField(max_length=250)
    responsavel = models.CharField(max_length=100, blank=True, null=True)
    
    def __str__(self):
        return f'{self.id} - {self.nome}'
    
    class Meta:
        abstract = True