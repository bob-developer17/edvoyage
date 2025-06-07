from django.contrib import admin
from .models import ClinicalCaseDetail

@admin.register(ClinicalCaseDetail)
class ClinicalCaseDetailAdmin(admin.ModelAdmin):
    list_display = ('case', 'title')
    search_fields = ('title',)
