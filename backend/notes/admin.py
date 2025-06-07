from django.contrib import admin
from .models import Video, MCQTopic, ClinicalCase, Flashcard

@admin.register(Video)
class VideoAdmin(admin.ModelAdmin):
    list_display = ('title', 'subject', 'timer', 'status')

@admin.register(MCQTopic)
class MCQTopicAdmin(admin.ModelAdmin):
    list_display = ('title', 'subject', 'timer', 'status')

@admin.register(ClinicalCase)
class ClinicalCaseAdmin(admin.ModelAdmin):
    list_display = ('title', 'subject', 'sub')

@admin.register(Flashcard)
class FlashcardAdmin(admin.ModelAdmin):
    list_display = ('title', 'subject', 'sub')
