from django.forms import ModelForm, TextInput, PasswordInput, Select
from django.contrib.auth.models import User

class CadastroUsuarioForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs.update({'class': 'form-control'})

    class Meta:
        model = User
        widgets = {
            "first_name": TextInput(attrs={"autofocus":"true"}),
            "last_name": TextInput(),
            "username": TextInput(),
            "password": TextInput(),
            "email": TextInput(),
            "groups": Select() 
        }
        fields = widgets.keys()