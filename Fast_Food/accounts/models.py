from django.db import models

# Create your models here.
class tbOrder(models.Model):
    Id_Order = models.IntegerField(primary_key= True)
    Id_Account = models.TextField()
    Total_Bill = models.TextField()
    Order_Date = models.TextField()
    Phone_Number = models.TextField()
    Address = models.TextField()
    Static = models.TextField()

class tbOrderDetail(models.Model):
    Id_Order = models.IntegerField(primary_key= True)
    Id_Food = models.IntegerField()
    Price = models.IntegerField()
    Quantity = models.IntegerField()
