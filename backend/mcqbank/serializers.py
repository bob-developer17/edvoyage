"""
Serializers for MCQ Bank app:
- Serializes MCQ questions with options.
"""

from rest_framework import serializers
from .models import MCQQuestion

class MCQQuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = MCQQuestion
        fields = ['id', 'title', 'timer', 'status', 'questions']
