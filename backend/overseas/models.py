from django.db import models
from django.conf import settings

class Country(models.Model):
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name


class University(models.Model):
    name = models.CharField(max_length=255)
    country = models.ForeignKey(Country, related_name='universities', on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.name} ({self.country.name})"


class CounselingBooking(models.Model):
    student = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    university = models.ForeignKey(University, on_delete=models.CASCADE)
    preferred_date = models.DateField()
    preferred_time = models.TimeField()
    notes = models.TextField(blank=True, null=True)
    booked_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.student.username} - {self.university.name} on {self.preferred_date}"
