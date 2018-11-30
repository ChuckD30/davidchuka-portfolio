from django.conf.urls import url
from django.urls import path, re_path
from . import views
from .feeds import LatestPostsFeed

app_name = 'blog'

urlpatterns = [
    path('', views.post_list, name='post_list'),
    path('<slug:post_slug>', views.post_detail, name = 'post_detail'),
    path('tag/<slug:tag_slug>', views.post_list, name='post_list_by_tag'),
    # path('<int:post_id>/share/', views.share_post, name='share_post'),
    # path('feed/', LatestPostsFeed(), name='post_feed'),
]
