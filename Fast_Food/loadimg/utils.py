import json
from .models import *

def cookieCart(request):
    
	#Create empty cart for now for non-logged in user
	try:
		cart = json.loads(request.COOKIES['cart'])
	except:
		cart = {}
		print('CART:', cart)

	items = []
	order = {'get_cart_total':0, 'get_cart_items':0, 'shipping':False}
	cartItems = order['get_cart_items']

	for i in cart:
		#We use try block to prevent items in cart that may have been removed from causing error
		try:	
			if(cart[i]['quantity']>0): #items with negative quantity = lot of freebies  
				cartItems += cart[i]['quantity']

				food = tbFood.objects.get(id=i)
				total = (food.price * cart[i]['quantity'])

				order['get_cart_total'] += total
				order['get_cart_items'] += cart[i]['quantity']

				item = {
				'id':food.id,
				'food':{'id':food.id,'name':food.name, 'price':food.price, 
				'imageURL':food.imageURL}, 'quantity':cart[i]['quantity'],
				'digital':food.digital,'get_total':total,
				}
				items.append(item)

				if food.digital == False:
					order['shipping'] = True
		except:
			pass
			
	return {'cartItems':cartItems ,'order':order, 'items':items}
	
def guestOrder(request, data):
	name = data['form']['name']
	email = data['form']['email']

	cookieData = cookieCart(request)
	items = cookieData['items']

	customer, created = tbCustomer.objects.get_or_create(
			email=email,
			)
	customer.name = name
	customer.save()

	order = tbOrder.objects.create(
		customer=customer,
		complete=False,
		)

	for item in items:
		food = tbFood.objects.get(id=item['id'])
		orderDetail = tbOrderDetail.objects.create(
			food=food,
			order=order,
			quantity=(item['quantity'] if item['quantity']>0 else -1*item['quantity']), # negative quantity = freebies
		)
	return customer, order
