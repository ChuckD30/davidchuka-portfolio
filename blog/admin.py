from django.contrib import admin
from django.db import models
from django_summernote.admin import SummernoteModelAdmin
from .models import Post, Comment

@admin.register(Post)
class PostAdmin(SummernoteModelAdmin):
    date_hierarchy = 'created'
    list_display = ('title', 'author', 'body', 'status', 'slug',)
    fields = (('title', 'status', 'pinned', ), 'slug', 'body', 'tags', 'author', 'header',)
    list_filter = ('status', 'created', 'publish', 'author')
    search_fields = ('title', 'body')
    prepopulated_fields = {'slug': ('title',)}
    raw_id_fields = ('author',)
    ordering = ['-publish', 'status']
    empty_value_display = '-empty-'
    summernote_fields = ('body',)

@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    fields = (('post', 'body',), 'name', 'email',)
    list_display = ('post', 'name', 'body')
    list_filter = ('active',)
    search_field = ('name', 'email', 'body')
    readonly_fields = ('post', )
