"""
Notes app API views:
- Serves core learning content: videos, MCQs, clinical cases, flashcards.
- List and detail views for each content type.
"""

from rest_framework import generics
from .models import Video, MCQTopic, ClinicalCase, Flashcard
from .serializers import VideoSerializer, MCQTopicSerializer, ClinicalCaseSerializer, FlashcardSerializer

class VideoListView(generics.ListAPIView):
    queryset = Video.objects.all()
    serializer_class = VideoSerializer

class MCQTopicListView(generics.ListAPIView):
    queryset = MCQTopic.objects.all()
    serializer_class = MCQTopicSerializer

class ClinicalCaseListView(generics.ListAPIView):
    queryset = ClinicalCase.objects.all()
    serializer_class = ClinicalCaseSerializer

class FlashcardListView(generics.ListAPIView):
    queryset = Flashcard.objects.all()
    serializer_class = FlashcardSerializer
