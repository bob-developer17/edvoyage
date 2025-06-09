from django.contrib import admin
from .models import (
    VideoTopic, VideoContent,
    MCQTopic, MCQContent, MCQQuestion,
    ClinicalCaseTopic, ClinicalCaseContent, ClinicalCaseSection,
    FlashCardTopic, FlashCardContent, FlashCardImage
)

admin.site.register(VideoTopic)
admin.site.register(VideoContent)

admin.site.register(MCQTopic)
admin.site.register(MCQContent)
admin.site.register(MCQQuestion)

admin.site.register(ClinicalCaseTopic)
admin.site.register(ClinicalCaseContent)
admin.site.register(ClinicalCaseSection)

admin.site.register(FlashCardTopic)
admin.site.register(FlashCardContent)
admin.site.register(FlashCardImage)
