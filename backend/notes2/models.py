from django.db import models

# Create your models here.

class FlashCardTopic(models.Model):
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name

class FlashCardContent(models.Model):
    title = models.ForeignKey(FlashCardTopic, on_delete=models.CASCADE, related_name='flashcards')
    question = models.CharField(max_length=200)
    flashcard = models.ImageField(upload_to='flashcard/', blank=True, null=True)

    def __str__(self):
        return self.title.name


class ClinicalCaseTopic(models.Model):
    name = models.CharField(max_length=100, unique=True)
    doctor= models.CharField(max_length=100)


    def __str__(self):
        return self.name

class ClinicalCaseContent(models.Model):
    topic = models.ForeignKey(ClinicalCaseTopic, on_delete=models.CASCADE, related_name='cases')
    tableofcontents = models.CharField(max_length=200)
    gatherquipments = models.CharField(max_length=200)
    introduction = models.TextField()
    generalinspections = models.TextField()
    clearinspection = models.TextField()
    palpation = models.TextField()
    finalexamination = models.TextField()
    references = models.TextField()

    def __str__(self):
        return self.topic.name + " - " + self.introduction

