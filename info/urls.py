from django.conf.urls import url
from django.urls import path, re_path
from . import views

app_name = 'info'

urlpatterns = [
path('', views.about_me, name='about_me'),
]
