from rest_framework import serializers
from .models import *

class PartSerializer(serializers.ModelSerializer):
    class Meta:
        model = Part
        fields = '__all__'

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'

class SubCategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = SubCategory
        fields = '__all__'

class VideoContentSerializer(serializers.ModelSerializer):
    class Meta:
        model = VideoContent
        fields = '__all__'

class MCQQuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = MCQQuestion
        fields = '__all__'

class MCQContentSerializer(serializers.ModelSerializer):
    questions = MCQQuestionSerializer(many=True, read_only=True)

    class Meta:
        model = MCQContent
        fields = '__all__'

class ClinicalCaseSectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = ClinicalCaseSection
        fields = '__all__'

class ClinicalCaseContentSerializer(serializers.ModelSerializer):
    sections = ClinicalCaseSectionSerializer(many=True, read_only=True)

    class Meta:
        model = ClinicalCaseContent
        fields = '__all__'

class FlashCardImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = FlashCardImage
        fields = '__all__'

class FlashCardContentSerializer(serializers.ModelSerializer):
    images = FlashCardImageSerializer(many=True, read_only=True)

    class Meta:
        model = FlashCardContent
        fields = '__all__'
