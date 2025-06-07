from django.urls import path
from .views import ClinicalCaseDetailListCreate

urlpatterns = [
    path('details/', ClinicalCaseDetailListCreate.as_view(), name='clinicalcase-detail-list-create'),
]
