"""
Serializers for Clinical Cases app:
- Serializes detailed clinical case info including table of contents.
"""

from rest_framework import serializers
from .models import ClinicalCaseDetail

class ClinicalCaseDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = ClinicalCaseDetail
        fields = '__all__'
