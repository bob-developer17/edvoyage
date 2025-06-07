from django.urls import path
from .views import FlashcardImageListCreate

urlpatterns = [
    path('images/', FlashcardImageListCreate.as_view(), name='flashcard-image-list-create'),
]
