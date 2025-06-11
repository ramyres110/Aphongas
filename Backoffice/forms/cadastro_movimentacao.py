from django.forms import ModelForm, Select, NumberInput, TextInput

from ..models import Movimentacao

class CadastroMovimentacaoForm(ModelForm):
    class Meta:
        default_attrs = {"class":"mb-3 form-control"}
        model = Movimentacao
        widgets = {
            "tipo": Select(attrs=default_attrs | {"autofocus":"true"} , choices=Movimentacao.TIPO_MOVIMENTACAO),
            "deposito": Select(attrs=default_attrs), 
            "produto": Select(attrs= default_attrs),
            "fornecedor": Select(attrs=default_attrs),
            "nome_cliente": TextInput(attrs=default_attrs),
            "quantidade": NumberInput(attrs=default_attrs),
            "created_by": Select(attrs= default_attrs), 
        }
        labels = {
            "tipo": "Tipo da movimentação",
            "created_by": "Criado por"
        }
        fields = widgets.keys()