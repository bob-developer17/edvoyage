from django.contrib import admin

from .models import FlashCardTopic, FlashCardContent, ClinicalCaseTopic, ClinicalCaseContent


# Register your models here.
admin.site.register(FlashCardTopic)
admin.site.register(FlashCardContent)
admin.site.register(ClinicalCaseTopic)
admin.site.register(ClinicalCaseContent)