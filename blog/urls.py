from django.conf.urls import url
from django.urls import path, re_path
from . import views

app_name = 'blog'

urlpatterns = [
    path('', views.PostListView.as_view(), name='post_list'),
    path('<slug:slug>', views.post_detail, name = 'post_detail'),
    path('<int:post_id>/share/', views.share_post, name='share_post'),
]
