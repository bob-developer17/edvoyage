from django.db import models
from django.conf import settings


class MCQDay(models.Model):
    date = models.DateField(unique=True)

    def __str__(self):
        return self.date.strftime('%Y-%m-%d')


class MCQQuestion(models.Model):
    mcq_day = models.ForeignKey(MCQDay, related_name='questions', on_delete=models.CASCADE)
    question_text = models.TextField()

    def __str__(self):
        return f"{self.mcq_day} - {self.question_text[:50]}"


class MCQOption(models.Model):
    question = models.ForeignKey(MCQQuestion, related_name='options', on_delete=models.CASCADE)
    option_text = models.CharField(max_length=255)
    is_correct = models.BooleanField(default=False)

    def __str__(self):
        return f"Option: {self.option_text[:30]} ({'Correct' if self.is_correct else 'Wrong'})"



class Batch(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class StudentProfile(models.Model):
    full_name = models.CharField(max_length=150)
    profile_photo = models.ImageField(upload_to='profile_photos/')
    batch = models.ForeignKey(Batch, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.full_name


class StudentPost(models.Model):
    student = models.ForeignKey(StudentProfile, on_delete=models.CASCADE)
    content = models.TextField()
    image = models.ImageField(upload_to='student_posts/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.student.full_name} - {self.created_at.strftime('%Y-%m-%d')}"


class Like(models.Model):
    post = models.ForeignKey(StudentPost, on_delete=models.CASCADE, related_name='likes')
    student = models.ForeignKey(StudentProfile, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('post', 'student')


class Bookmark(models.Model):
    post = models.ForeignKey(StudentPost, on_delete=models.CASCADE, related_name='bookmarks')
    student = models.ForeignKey(StudentProfile, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('post', 'student')


class Comment(models.Model):
    post = models.ForeignKey(StudentPost, on_delete=models.CASCADE, related_name='comments')
    student = models.ForeignKey(StudentProfile, on_delete=models.CASCADE)
    text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)



class Profile(models.Model):
    DESIGNATION_CHOICES = [
        ('DR', 'Director'),
        ('ST', 'Student'),
        ('VR', 'Volunteer'),
    ]
    name = models.CharField(max_length=150)
    designation = models.CharField(max_length=2, choices=DESIGNATION_CHOICES)
    phone_number = models.CharField(max_length=15)

    def __str__(self):
        return f"{self.name} ({self.get_designation_display()})"




class Country(models.Model):
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name


class University(models.Model):
    UNIVERSITY_TYPE_CHOICES = [
        ('public', 'Public'),
        ('private', 'Private'),
    ]

    country = models.ForeignKey(Country, related_name='universities', on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    icon = models.ImageField(upload_to='university_icons/', blank=True, null=True)
    location = models.CharField(max_length=255)
    website_url = models.URLField(max_length=300)
    world_rank = models.PositiveIntegerField()
    university_type = models.CharField(max_length=7, choices=UNIVERSITY_TYPE_CHOICES)
    course_duration = models.CharField(max_length=100)  # e.g. "4 years", "2 years"
    course_fee = models.DecimalField(max_digits=12, decimal_places=2)  # e.g. 15000.00
    shortlisted_by = models.ManyToManyField(
        settings.AUTH_USER_MODEL,
        related_name='shortlisted_universities',
        blank=True,
        help_text="Users who have shortlisted this university"
    )

    def __str__(self):
        return f"{self.name} - {self.country.name}"

    def is_shortlisted_by(self, user):
        return self.shortlisted_by.filter(id=user.id).exists()