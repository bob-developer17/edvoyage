"""
Serializers for Flashcards app:
- Serializes flashcard images and related info.
"""

from rest_framework import serializers
from .models import FlashcardImage

class FlashcardImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = FlashcardImage
        fields = '__all__'
