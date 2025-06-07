from django.contrib import admin
from .models import FlashcardImage

@admin.register(FlashcardImage)
class FlashcardImageAdmin(admin.ModelAdmin):
    list_display = ('flashcard', 'image')
