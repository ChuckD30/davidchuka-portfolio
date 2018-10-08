from django.db import models
from taggit.managers import TaggableManager
from django.utils import timezone

#Model for projects I've worked on...
class Projects(models.Model):
    AUTHOR_CHOICES = (
        ('self', 'Self'),
        ('team', 'Team'),
    )
    name = models.CharField(max_length=200) #project NAME
    link = models.URLField(max_length=100, blank=False, null=False) #link to project
    description = models.TextField() #project description
    author = models.CharField(max_length=200, choices=AUTHOR_CHOICES, default='self')
    screenshot = models.ImageField(upload_to="project_screenshots", blank=True, null=True)
    created_date = models.DateTimeField(default=timezone.now)
    technology = TaggableManager()#technology used

    class Meta:
        verbose_name_plural = "Projects"
    
    def __str__(self):
        return self.name


#Recommendations from people
class Recommendation(models.Model):
    name = models.CharField(max_length=100) #name of individual or company giving the recommendation
    photo = models.ImageField(upload_to="recommended_by",blank=True, null=True) #photo of recommender
    recommendation = models.TextField() #text for recommendation

    def __str__(self):
        return self.name
