from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class tbFood(models.Model):
    Id_Food = models.IntegerField(primary_key= True)
    Id_Category = models.IntegerField()
    Food_Name = models.TextField()
    Description = models.TextField()
    Price = models.FloatField()
    Old_Price = models.FloatField()
    Image = models.ImageField(upload_to = "")
    Quantity = models.IntegerField()

class tbOrder(models.Model):
    id_order = models.AutoField(primary_key= True)
    id_customer =  models.IntegerField()
    date_ordered = models.DateTimeField(auto_now_add=True)
    complete = models.BooleanField(default=False)
    transaction_id = models.CharField(max_length=100, null=True)

    def __str__(self):
        return str(self.id_order)


    @property
    def get_cart_total(self):
        orderitems = self.orderdetail.all()
        total = sum([item.get_total for item in orderitems])
        return total 

    @property
    def get_cart_items(self):
        orderitems = self.orderdetail.all()
        total = sum([item.quantity for item in orderitems])
        return total 
            
    @property
    def shipping(self):
        shipping = False
        orderitems = self.orderitem_set.all()
        for i in orderitems:
            if i.product.digital == False:
                shipping = True
        return shipping

class tbOrderDetail(models.Model):
    food = models.ForeignKey(tbFood, on_delete=models.SET_NULL, null=True,blank=True)
    order = models.ForeignKey(tbOrder, on_delete=models.SET_NULL, null=True,blank=True,  related_name="orderdetail")
    date_added= models.DateTimeField(auto_now_add=True)
    quantity = models.IntegerField(default=0, null=True, blank=True)

    @property
    def get_total(self):
        total = self.food.Price * self.quantity
        return total

class tbShippingAddress(models.Model):
    id_customer =  models.IntegerField()
    order = models.ForeignKey(tbOrder, on_delete=models.SET_NULL, null=True, blank=True)
    address = models.CharField(max_length=200, null=False)
    city = models.CharField(max_length=200, null=False)
    status = models.CharField(max_length=200, null=False)
    date_added = models.DateTimeField(auto_now_add=True)
    phone_number = models.TextField( null=True, blank=True)
    name = models.TextField( null=True, blank=True)
    total = models.FloatField( null=True, blank=True)

    def __str__(self):
        return self.address