"""
MCQ Bank API views:
- Handles questions and options per MCQ topic.
- Provides question list and detail endpoints.
"""

from rest_framework import generics
from .models import MCQQuestion
from .serializers import MCQQuestionSerializer

class MCQQuestionListView(generics.ListAPIView):
    queryset = MCQQuestion.objects.all()
    serializer_class = MCQQuestionSerializer

class MCQQuestionDetailView(generics.RetrieveAPIView):
    queryset = MCQQuestion.objects.all()
    serializer_class = MCQQuestionSerializer
