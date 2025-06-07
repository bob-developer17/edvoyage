"""
Serializers for Notes app:
- Serializes core learning content like Video, MCQTopic, ClinicalCase, Flashcard.
"""

from rest_framework import serializers
from .models import Video, MCQTopic, ClinicalCase, Flashcard

class VideoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Video
        fields = '__all__'

class MCQTopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = MCQTopic
        fields = '__all__'

class ClinicalCaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = ClinicalCase
        fields = '__all__'

class FlashcardSerializer(serializers.ModelSerializer):
    class Meta:
        model = Flashcard
        fields = '__all__'
