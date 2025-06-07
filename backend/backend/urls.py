from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
 path('api-auth/', include('rest_framework.urls')),
    # API routes for apps
    path('api/users/', include('users.urls')),
    path('api/notes/', include('notes.urls')),
    path('api/mcqbank/', include('mcqbank.urls')),
    path('api/cases/', include('cases.urls')),
    path('api/flashcards/', include('flashcards.urls')),
    path('api/social/', include('social.urls')),
]
