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
    title = models.CharField(max_length=200, null=True, blank=True) 
    status = models.CharField(max_length=10, choices=STATUS_CHOICES)
    mcqcontentpic = models.ImageField(upload_to='mcqcontentpic/', blank=True, null=True)

    def __str__(self):
        title_display = self.title if self.title else "Content"
        return f"{self.topic.name} - {title_display}"



class MCQQuestion(models.Model):
    mcq_content = models.ForeignKey(MCQContent, on_delete=models.CASCADE, related_name='questions')
    question = models.TextField()
    option_1 = models.CharField(max_length=200)
    option_2 = models.CharField(max_length=200)
    option_3 = models.CharField(max_length=200)
    option_4 = models.CharField(max_length=200)
    correct_option = models.PositiveSmallIntegerField(choices=[
        (1, 'Option 1'),
        (2, 'Option 2'),
        (3, 'Option 3'),
        (4, 'Option 4')
    ])

    def __str__(self):
        # You can return the question and show topic names like this:
        topic_name = self.mcq_content.topic.name if self.mcq_content else 'No Topic'
        title_display = self.mcq_content.title if self.mcq_content else "Content"
        return f"{topic_name} - {title_display} : {self.question[:50]}..."

### -------------------- CLINICAL CASE --------------------


