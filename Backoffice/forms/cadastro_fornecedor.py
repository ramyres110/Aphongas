from django.forms import ModelForm

from ..models import Fornecedor

class CadastroFornecedorForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs.update({'class': 'form-control'})

    class Meta:
        model = Fornecedor
        fields = "__all__"