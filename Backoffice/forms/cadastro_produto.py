from django.forms import ModelForm, Select, TextInput, FileInput, NumberInput, Textarea

from ..models import Produto

class CadastroProdutoForm(ModelForm):
    class Meta:
        default_attrs = {"class":"mb-3 form-control"}
        model = Produto
        widgets = {
            "status": Select(attrs=default_attrs | {"autofocus":"true"} , choices=Produto.STATUS),
            "descricao": TextInput(attrs=default_attrs),
            "tipo": Select(attrs=default_attrs | {"autofocus":"true"} , choices=Produto.TIPOS_PRODUTO),
            "marca": TextInput(attrs=default_attrs),
            "qtd_embalagem": NumberInput(attrs=default_attrs),
            "unidade": Select(attrs=default_attrs, choices=Produto.UNIDADES),
            "fotografia": FileInput(attrs=default_attrs),
            "altura": NumberInput(attrs=default_attrs),
            "largura": NumberInput(attrs=default_attrs),
            "profundidade": NumberInput(attrs=default_attrs),
            "peso": NumberInput(attrs=default_attrs),
            "observacoes": Textarea(attrs=default_attrs),
            "codigo_de_barras": TextInput(attrs=default_attrs),
            "fornecedor_padrao": Select(attrs=default_attrs),
            "deposito_padrao": Select(attrs=default_attrs),
            "created_by": Select(attrs=default_attrs) 
        }
        labels = {
            "created_by": "Criado por"
        }
        fields = widgets.keys()