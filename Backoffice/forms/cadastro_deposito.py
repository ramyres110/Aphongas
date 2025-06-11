from django.forms import ModelForm

from ..models import Deposito

class CadastroDepositoForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs.update({'class': 'form-control'})

    class Meta:
        model = Deposito
        fields = "__all__"