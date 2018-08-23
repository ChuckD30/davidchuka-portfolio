from django.contrib import admin
from .models import Post, Comment
from django.db import models
from djrichtextfield.widgets import RichTextWidget
# Register your models here.

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    date_hierarchy = 'created'
    list_display = ('title', 'author', 'body', 'status', 'slug',)
    fields = (('title', 'status'),'slug','body','tags', 'author')
    list_filter = ('status', 'created', 'publish', 'author')
    search_fields = ('title', 'body')
    prepopulated_fields = {'slug': ('title',)}
    raw_id_fields = ('author',)
    ordering = ['status', 'publish']
    empty_value_display = '-empty-'
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