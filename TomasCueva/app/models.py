from django.db import models

class Projects(models.Model):
    title = models.CharField(max_length=140)
    content = models.TextField(max_length=2600)
    image = models.ImageField(upload_to='projects_image')
    def __str__(self) -> str:
        return super().__str__()

class Contacts(models.Model):
    email = models.EmailField( max_length=254)
    name = models.CharField(max_length=75)
    message = models.TextField(max_length=2600)
    
