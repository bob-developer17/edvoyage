from django.contrib import admin
from django.urls import path, include
from notes.views import get_all_video_topics, get_video_contents_by_topic_post
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('admin/', admin.site.urls),
 path('api-auth/', include('rest_framework.urls')),
    path('api/users/', include('users.urls')),
     path('api/video-topics/', get_all_video_topics, name='get_video_topics'),
    path('api/video-topics/contents/', get_video_contents_by_topic_post, name='get_video_contents_by_topic'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

