from django.contrib import admin
from django.urls import path, include
from helloworld import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path(
        "",
        include('django_prometheus.urls')),
    path("healthz/", views.healthz, name="healthz"),
    path('', views.index, name='index')
]
