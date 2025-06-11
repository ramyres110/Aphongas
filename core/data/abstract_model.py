from django.db import models
from django.conf import settings

class AbstractModel(models.Model):
    STATUS = {
        "A": "Ativo",
        "I": "Inativo"
    }

    status = models.CharField(max_length=1, choices=STATUS, default="A")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    created_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.SET_NULL, related_name='%(class)s_created_by', blank=True, null=True)
    updated_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.SET_NULL, related_name='%(class)s_updated_by', blank=True, null=True)
    
    class Meta:
        abstract = True