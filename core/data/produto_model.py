from django.db import models
from .abstract_model import AbstractModel

from core.utils import upload_path_and_rename

# Create your models here.
class ProdutoModel(AbstractModel):
    UNIDADES = {
        "UN": "Unidade",
        "CX": "Caixa",
        "MG": "Miligrama",
        "G": "Grama",
        "KG": "Quilograma",
        "L": "Litro",
        "ML": "Mililitros",
        "M": "Metro",
        "M3": "Volume",
    }

    TIPOS_PRODUTO = {
        "Água": "Água",
        "Alimento": "Alimento",
        "Bebida": "Bebida",
        "Ferramenta": "Ferramenta",
        "Gás": "Gás",
        "Higiene": "Higiene",
        "Informática": "Informática",
        "Limpeza": "Limpeza",
        "Papelaria": "Papelaria",
        "Tabaco": "Tabaco",
        "Outros": "Outros",
    }

    descricao = models.CharField(max_length=255)
    tipo = models.CharField(max_length=15, choices=TIPOS_PRODUTO, default="Outros")
    marca = models.CharField(max_length=100, blank=True, null=True)
    qtd_embalagem = models.FloatField(default=0)
    unidade = models.CharField(max_length=2, choices=UNIDADES)
    fotografia = models.ImageField(upload_to=upload_path_and_rename, blank=True, null=True)
    altura = models.FloatField(blank=True, null=True)
    largura = models.FloatField(blank=True, null=True)
    profundidade = models.FloatField(blank=True, null=True)
    peso = models.FloatField(blank=True, null=True, db_comment="Peso em Kg")
    observacoes = models.TextField(blank=True, null=True)
    codigo_de_barras = models.CharField(max_length=200, default="", blank=True, null=True)
    
    def __str__(self):
        return f'{self.id} - {self.descricao}'
    
    def get_fotografia_filename(self):
        return self.fotografia.__str__().split("/").pop()

    class Meta:
        abstract = True