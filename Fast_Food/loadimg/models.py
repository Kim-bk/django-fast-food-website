from django.db import models
# Create your models here.
class Role(models.Model):
    Id_role = models.IntegerField(primary_key= True)
    role_name = models.TextField(max_length=10)
class Food(models.Model):
    Id_Food = models.IntegerField(primary_key= True)
    Id_Category = models.IntegerField()
    Food_Name = models.TextField()
    Description = models.TextField()
    Price = models.IntegerField()
    Image = models.ImageField(upload_to = "")
    Quantity = models.IntegerField()