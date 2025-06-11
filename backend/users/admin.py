from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from .models import MCQDay, MCQQuestion, MCQOption, Batch, StudentProfile, StudentPost, Like, Bookmark, Comment

admin.site.register(MCQDay)
admin.site.register(MCQQuestion)
admin.site.register(MCQOption)
admin.site.register(Batch)
admin.site.register(StudentProfile)
admin.site.register(StudentPost)
admin.site.register(Like)
admin.site.register(Bookmark)
admin.site.register(Comment)
