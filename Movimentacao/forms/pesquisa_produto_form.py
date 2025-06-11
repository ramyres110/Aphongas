from django import forms


class PesquisaProdutoForm(forms.Form):
    q = forms.CharField(required=False, label="")
    q.widget.attrs["class"] = "form-control"
    q.widget.attrs["placeholder"] = "Pesquisar"
    q.widget.attrs["autofocus"] = "true"
