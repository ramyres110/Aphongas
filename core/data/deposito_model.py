from django.db import models

from .abstract_model import AbstractModel

# Create your models here.
class DepositoModel(AbstractModel):
    MODELO_PROPIO = "P"
    MODELO_TERCEIRIZADO = "T"
    MODELO_HIBRIDO = "H"
    MODELOS = {
        MODELO_PROPIO:  "Própio",
        MODELO_TERCEIRIZADO:  "Terceirizado",
        MODELO_HIBRIDO:  "Híbrido",
    }

    TIPOS = {
        "S": "Silo", 
        "T": "Tanque", 
        "R": "Rack", 
        "P": "Porta-palete", 
        "F": "Flow-rack", 
        "E": "Estante", 
        "D": "Divisorias", 
        "O": "Outro"
    }

    descricao = models.CharField(max_length=100)
    endereco = models.TextField(max_length=250)
    capacidade_m3 = models.FloatField(default=0)
    modelo = models.CharField(
        max_length=1,
        choices=MODELOS,
        default=MODELO_PROPIO
    )
    tipo = models.CharField(
        max_length=1,
        choices=TIPOS,
        default="E"   
    )
    
    def __str__(self):
        return f'{self.id} - {self.descricao}'

    class Meta:
        abstract = True