import json
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.views import View
from .models import *
from django.contrib.auth.models import User
import datetime

# Create your views here.
class FoodView(View):
    def get(self,request):
        return render(request,'loadimg/Combo1Nguoi.html')
class FoodNhom(View):
    def get(self,request):
        return render(request,'loadimg/ComboNhom.html')
class UuDai(View):
    def get(self,request):
        return render(request,'loadimg/MenuUuDai.html')

def home(request):

    list_question = tbFood.objects.filter(Id_Category = 1)
    context = {"list_home":list_question}
    return render(request,'loadimg/Combo1Nguoi.html',context)

def question_nhom(request):
    list_question = tbFood.objects.filter(Id_Category = 2)
    context = {"list_nhom":list_question}
    return render(request,'loadimg/ComboNhom.html',context)
def question_uudai(request):
    list_question = tbFood.objects.filter(Id_Category = 3)
    context = {"list_uudai":list_question}
    return render(request,'loadimg/MenuUuDai.html',context)


def cart(request):
    if request.user.is_authenticated:
        account = User.objects.get(username = request.user)
        customer = tbCustomer.objects.get(id_customer = account.id)
        print(account)
        print(customer.id_customer)
        order, created = tbOrder.objects.get_or_create(id_account = customer.id_customer, complete=False)
        items = order.orderdetail.all()
    else:
        items =[]
        order = {'get_cart_total': 0, 'get_cart_items': 0}
    context = {"items":items, "order": order}
    return render(request,'loadimg/cart.html',context)


def checkout(request):
    if request.user.is_authenticated:
        account = User.objects.get(username = request.user)
        customer = tbCustomer.objects.get(id_customer = account.id)
        print(account)
        print(customer.id_customer)
        order, created = tbOrder.objects.get_or_create(id_account = customer.id_customer, complete=False)
        items = order.orderdetail.all()
    else:
        items =[]
        order = {'get_cart_total': 0, 'get_cart_items': 0}
    context = {"items":items, "order": order}
    return render(request,'loadimg/purchase.html',context)


def updateItem(request):
    data = json.loads(request.body)
    foodId = data['foodId']
    action = data['action']
    print('Action:', action)
    print('FoodId:', foodId)
    print('user_id:', request.user.id)

    id_account = request.user.id
    food = tbFood.objects.get(Id_Food = foodId)
    order, created = tbOrder.objects.get_or_create(Customer = id_account)
    orrderDetail, created = tbOrderDetail.object.get_or_create(order = order, food = food)

    if action == 'add':
        orrderDetail.quantity = orrderDetail.quantity + 1
    if action == 'remove':
        orrderDetail.quantity = orrderDetail.quantity - 1

    orrderDetail.save()

    if orrderDetail.quantity <= 0:
        orrderDetail.delete()

    return  JsonResponse('Item was add', safe= False)

