from django.forms import ModelForm, Select, NumberInput, TextInput

from ..models import Movimentacao

class RegistraSaidaForm(ModelForm):
    
    class Meta:
        default_attrs = {"class":"mb-3 form-control"}
        model = Movimentacao
        fields = ["deposito", "produto", "nome_cliente", "quantidade"]
        widgets = {
            "deposito": Select(attrs= default_attrs | {"autofocus":"true"}),
            "produto": Select(attrs=default_attrs), 
            "nome_cliente": TextInput(attrs=default_attrs),
            "quantidade": NumberInput(attrs=default_attrs)
        }