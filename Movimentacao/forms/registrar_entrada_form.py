from django.forms import ModelForm, Select, NumberInput

from ..models import Movimentacao

class RegistraEntradaForm(ModelForm):
    
    class Meta:
        default_attrs = {"class":"mb-3 form-control"}
        model = Movimentacao
        fields = ["deposito", "produto", "fornecedor", "quantidade"]
        widgets = {
            "deposito": Select(attrs=default_attrs | {"autofocus":"true"}), 
            "produto": Select(attrs= default_attrs),
            "fornecedor": Select(attrs=default_attrs),
            "quantidade": NumberInput(attrs=default_attrs)
        }