from django.contrib import admin
from .models import Projects, Recommendation
from django.contrib import admin
from django.db import models


@admin.register(Projects)
class ProjectsAdmin(admin.ModelAdmin):
    list_display = ('name', 'author', 'created_date','link',)
    fields = (('name', 'author',),'created_date','link','description','technology','screenshot',)
    list_filter = ('created_date', 'technology',)
    search_fields = ('technology', 'name')
    empty_value_display = '-empty-'

@admin.register(Recommendation)
class RecommendationAdmin(admin.ModelAdmin):
    list_display = ('name', 'recommendation',)
    fields = (('name', 'photo',),'recommendation',)
    list_filter = ('name',)
    search_fields = ('name',)