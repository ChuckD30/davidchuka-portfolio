from django.contrib import admin
from django.db import models

from .models import Post, Comment, PinnedPost
from djrichtextfield.widgets import RichTextWidget
# from mediumeditor.admin import MediumEditorAdmin
# Register your models here.

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    date_hierarchy = 'created'
    list_display = ('title', 'author', 'body', 'status', 'slug',)
    fields = (('title', 'status',),'slug','body','tags', 'author', 'header',)
    list_filter = ('status', 'created', 'publish', 'author')
    search_fields = ('title', 'body')
    prepopulated_fields = {'slug': ('title',)}
    raw_id_fields = ('author',)
    ordering = ['status', 'publish']
    empty_value_display = '-empty-'
    # mediumeditor_fields = ('body',)
    formfield_overrides = { 
        models.TextField: {'widget': RichTextWidget},
                    }

@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    fields = (('post','body',), 'name', 'email',)
    list_display = ('post', 'name', 'body')
    list_filter = ('active',)
    search_field = ('name', 'email', 'body')
    readonly_fields = ('post',)

@admin.register(PinnedPost)
class PinnedPostAdmin(admin.ModelAdmin):
    fields = ('pinned_post',)
