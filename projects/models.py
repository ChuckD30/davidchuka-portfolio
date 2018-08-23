from django.db import models

#Model for projects I've worked on...
class Projects(models.Model):
    AUTHOR_CHOICES = (
        ('self', 'Self'),
        ('team', 'Team'),
    )
    name = models.CharField(max_length=200) #project NAME
    # description = models.TextField(widget=djrichtextfield) #project description
    author = models.CharField(
        max_length=200, choices=AUTHOR_CHOICES, default='self')
    #duration = duration of project work


#contemplating adding skills model here (skills I possess)
