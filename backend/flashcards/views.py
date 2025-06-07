"""
Flashcards API views:
- Handles images and related data for flashcards.
- List and detail views for flashcards.
"""

from rest_framework import generics
from .models import FlashcardImage
from .serializers import FlashcardImageSerializer

class FlashcardImageListView(generics.ListAPIView):
    queryset = FlashcardImage.objects.all()
    serializer_class = FlashcardImageSerializer

class FlashcardImageDetailView(generics.RetrieveAPIView):
    queryset = FlashcardImage.objects.all()
    serializer_class = FlashcardImageSerializer
