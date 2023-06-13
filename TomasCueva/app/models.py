from django.db import models

class Projects(models.Model):
    title = models.CharField(max_length=140)
    description = models.TextField(max_length=300, default=None)
    herramientas_destacadas = models.CharField(max_length=140, default=None)
    image = models.ImageField(upload_to='projects_image')
    github = models.URLField(max_length=200, blank=True,null=True,default=None)
    view = models.URLField(max_length=200, blank=True,null=True,default=None)
    def __str__(self) -> str:
        return super().__str__()

class Contacts(models.Model):
    email = models.EmailField( max_length=254)
    name = models.CharField(max_length=75)
    message = models.TextField(max_length=2600)
    
