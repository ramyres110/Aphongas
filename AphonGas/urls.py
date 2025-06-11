from django.contrib import admin
from django.urls import path, include
from django.contrib.auth import logout
from django.shortcuts import redirect

def _logout(request):
    logout(request)
    return redirect("/")

urlpatterns = [
    path("", include('Movimentacao.urls')),
    path("backoffice/", include('Backoffice.urls')),
    path('admin/', admin.site.urls),
    path('login/', admin.site.login, name="login"),
    path('logout/', _logout, name="logout")
]