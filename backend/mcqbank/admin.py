from django.contrib import admin
from .models import MCQQuestion

@admin.register(MCQQuestion)
class MCQQuestionAdmin(admin.ModelAdmin):
    list_display = ('topic', 'question_text')
    search_fields = ('question_text',)
