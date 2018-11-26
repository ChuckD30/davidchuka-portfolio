from django.conf.urls import url
from django.urls import path, re_path
from . import views

app_name = 'projects'

urlpatterns = [
    path('', views.projects_and_testimonials, name='projects'),
]
