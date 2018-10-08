# from django.db import models
# from django.utils import timezone
# from django.urls import reverse


# class Contact(models.Model):
#     name = models.CharField(max_length=200)
#     email = models.EmailField(max_length=200)
#     message = models.TextField()
#     sent_date = models.DateTimeField(auto_now_add=True)

#     class Meta:
#         ordering = ('-sent_date',)

#     def __str__(self):
#         return "Message from {}".format(self.name)