from django.urls import path
from .views import PostListCreate, LikeCreate, CommentCreate

urlpatterns = [
    path('posts/', PostListCreate.as_view(), name='post-list-create'),
    path('likes/', LikeCreate.as_view(), name='like-create'),
    path('comments/', CommentCreate.as_view(), name='comment-create'),
]
