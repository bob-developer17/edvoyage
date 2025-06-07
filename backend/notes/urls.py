from django.urls import path
from .views import VideoListCreate, MCQTopicListCreate, ClinicalCaseListCreate, FlashcardListCreate

urlpatterns = [
    path('videos/', VideoListCreate.as_view(), name='video-list-create'),
    path('mcqtopics/', MCQTopicListCreate.as_view(), name='mcqtopic-list-create'),
    path('clinicalcases/', ClinicalCaseListCreate.as_view(), name='clinicalcase-list-create'),
    path('flashcards/', FlashcardListCreate.as_view(), name='flashcard-list-create'),
]
