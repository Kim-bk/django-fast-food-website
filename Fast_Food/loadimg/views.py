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
    cartItems = []
    if request.user.is_authenticated:
        try:
            account = User.objects.get(username = request.user)
            order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
            items = order.orderdetail.all()
            cartItems = order.get_cart_items
        except:
            items =[]
            order = {'get_cart_total': 0, 'get_cart_items': 0}
    else:
        items =[]
        order = {'get_cart_total': 0, 'get_cart_items': 0}

    context = {"list_home":list_question,'cartItems':cartItems}
    return render(request,'loadimg/Combo1Nguoi.html',context)

def question_nhom(request):
    list_question = tbFood.objects.filter(Id_Category = 2)
    cartItems = []
    if request.user.is_authenticated:
        try:
            account = User.objects.get(username = request.user)
            order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
            items = order.orderdetail.all()
            cartItems = order.get_cart_items
        except:
            items =[]
            order = {'get_cart_total': 0, 'get_cart_items': 0}
    else:
        items =[]
        order = {'get_cart_total': 0, 'get_cart_items': 0}

    context = {"list_nhom":list_question,'cartItems':cartItems}
    return render(request,'loadimg/ComboNhom.html',context)

def question_uudai(request):
    list_question = tbFood.objects.filter(Id_Category = 3)
    cartItems = []
    if request.user.is_authenticated:
        try:
            account = User.objects.get(username = request.user)
            order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
            items = order.orderdetail.all()
            cartItems = order.get_cart_items
        except:
            items =[]
            order = {'get_cart_total': 0, 'get_cart_items': 0}
    else:
        items =[]
        order = {'get_cart_total': 0, 'get_cart_items': 0}

    context = {"list_uudai":list_question,'cartItems':cartItems}
    return render(request,'loadimg/MenuUuDai.html',context)


def orderview(request):
    list_question = tbShippingAddress.objects.all()
    context = {"list_order":list_question}
    return render(request,'loadimg/order_user.html',context)


def cart(request):
    if request.user.is_authenticated:
        try:
            account = User.objects.get(username = request.user)
            order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
            items = order.orderdetail.all()
        except:
            items =[]
            order = {'get_cart_total': 0, 'get_cart_items': 0}
    else:
        items =[]
        order = {'get_cart_total': 0, 'get_cart_items': 0}
    context = {"items":items, "order": order}
    return render(request,'loadimg/cart.html',context)


def checkout(request):
    if request.user.is_authenticated:
        try:
            account = User.objects.get(username = request.user)
            order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
            items = order.orderdetail.all()
        except:
            items =[]
            order = {'get_cart_total': 0, 'get_cart_items': 0}
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

    food = tbFood.objects.get(Id_Food = foodId)
    account = User.objects.get(username = request.user)
    order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
   
    orrderDetail, created = tbOrderDetail.objects.get_or_create(order = order, food = food)

    if action == 'add':
        orrderDetail.quantity = orrderDetail.quantity + 1
    if action == 'remove':
        orrderDetail.quantity = orrderDetail.quantity - 1

    orrderDetail.save()  

    if orrderDetail.quantity <= 0:
        orrderDetail.delete()

    return  JsonResponse('Item was add', safe= False)


from django.views.decorators.csrf import csrf_protect
@csrf_protect
def processOrder(request):
    transaction_id = datetime.datetime.now().timestamp()
    data = json.loads(request.body)
    
    if request.user.is_authenticated:
        account = User.objects.get(username = request.user)
        order, created = tbOrder.objects.get_or_create(id_customer = account.id, complete=False)
        total = float(data['form']['total'])
        order.transaction_id = transaction_id

        if total == float(order.get_cart_total):
            order.complete = True
        order.save()

        tbShippingAddress.objects.create(
        id_customer = account.id,
        order=order,
        address=data['shipping']['address'],
        city=data['shipping']['city'],
        phone_number = data['form']['phone'],
        name =  data['shipping']['name'],
        status='Đang giao',
        total = total
        )
        print('success ... ')
    else:
        print('User is not logged in ... ')

    return JsonResponse('Payment submitted..', safe=False)

