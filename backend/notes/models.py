from django.db import models

STATUS_CHOICES = (
    ('FREE', 'Free'),
    ('PREMIUM', 'Premium'),
)

### -------------------- VIDEO --------------------

class VideoTopic(models.Model):
    name = models.CharField(max_length=100, unique=True)  # e.g., Gametogenesis, Epithelium
    doctor= models.CharField(max_length=100)  # e.g., Dr. Ranhodas
    video_count= models.CharField(max_length=100) 

    def __str__(self):
        return self.name

class VideoContent(models.Model):
    topic = models.ForeignKey(VideoTopic, on_delete=models.CASCADE, related_name='videos')
    title = models.CharField(max_length=200)
    sub = models.CharField(max_length=100)  # e.g., Dr. Ranhodas
    timer = models.PositiveIntegerField(help_text="Duration in seconds")
    status = models.CharField(max_length=10, choices=STATUS_CHOICES)
    video_url = models.URLField()
    # a fied for image uplaoding
    videocontentpic = models.ImageField(upload_to='videocontentpic/', blank=True, null=True)


    def __str__(self):
        return self.title

### -------------------- MCQ --------------------

class MCQTopic(models.Model):
    name = models.CharField(max_length=100, unique=True)
    def __str__(self):
        return self.name

class MCQContent(models.Model):
    topic = models.ForeignKey(MCQTopic, on_delete=models.CASCADE, related_name='mcqs')
    title = models.CharField(max_length=200)
    timer = models.PositiveIntegerField()
    status = models.CharField(max_length=10, choices=STATUS_CHOICES)

    def __str__(self):
        return self.title

class MCQQuestion(models.Model):
    mcq_content = models.ForeignKey(MCQContent, on_delete=models.CASCADE, related_name='questions')
    question = models.TextField()
    option_1 = models.CharField(max_length=200)
    option_2 = models.CharField(max_length=200)
    option_3 = models.CharField(max_length=200)
    option_4 = models.CharField(max_length=200)
    correct_option = models.PositiveSmallIntegerField(choices=[(1, 'Option 1'), (2, 'Option 2'), (3, 'Option 3'), (4, 'Option 4')])

    def __str__(self):
        return self.question[:50]

### -------------------- CLINICAL CASE --------------------

class ClinicalCaseTopic(models.Model):
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name

class ClinicalCaseContent(models.Model):
    topic = models.ForeignKey(ClinicalCaseTopic, on_delete=models.CASCADE, related_name='cases')
    title = models.CharField(max_length=200)
    sub = models.CharField(max_length=100)

    def __str__(self):
        return self.title

class ClinicalCaseSection(models.Model):
    clinical_case = models.ForeignKey(ClinicalCaseContent, on_delete=models.CASCADE, related_name='sections')
    section_title = models.CharField(max_length=200)
    content = models.TextField()

    def __str__(self):
        return f"{self.clinical_case.title} - {self.section_title}"

### -------------------- FLASHCARDS --------------------

class FlashCardTopic(models.Model):
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name

class FlashCardContent(models.Model):
    topic = models.ForeignKey(FlashCardTopic, on_delete=models.CASCADE, related_name='flashcards')
    title = models.CharField(max_length=200)
    sub = models.CharField(max_length=100)

    def __str__(self):
        return self.title

class FlashCardImage(models.Model):
    flashcard = models.ForeignKey(FlashCardContent, on_delete=models.CASCADE, related_name='images')
    image = models.ImageField(upload_to='flashcards/')

    def __str__(self):
        return f"Image for {self.flashcard.title}"
