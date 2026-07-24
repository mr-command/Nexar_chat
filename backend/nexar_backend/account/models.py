from django.db import models
from django.contrib.auth.models import AbstractUser



class User(AbstractUser):
    id = models.IntegerField(unique=True,primary_key=True)
    username = models.CharField(max_length=20,unique=True)
    email = models.EmailField(max_length=40)
    password = models.CharField(max_length=20)
    
    
    
    USERNAME_FIELD = 'username'
    
    
    def __str__(self):
        return self.username
    
    