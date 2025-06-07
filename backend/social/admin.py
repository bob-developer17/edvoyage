from django.contrib import admin
from .models import Post, Like, Comment

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ('profile', 'content', 'created_at')
    search_fields = ('content',)

@admin.register(Like)
class LikeAdmin(admin.ModelAdmin):
    list_display = ('post', 'user')

@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ('post', 'user', 'content', 'created_at')
    search_fields = ('content',)
