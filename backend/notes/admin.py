from django.contrib import admin
from .models import (
    VideoTopic, VideoContent,
    MCQTopic, MCQContent, MCQQuestion,
    

)

admin.site.register(VideoTopic)
admin.site.register(VideoContent)
admin.site.register(MCQTopic)
admin.site.register(MCQContent)
admin.site.register(MCQQuestion)




