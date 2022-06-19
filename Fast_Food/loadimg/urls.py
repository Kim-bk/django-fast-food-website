from django.urls import path
from . import views
urlpatterns = [
    path('', views.home,name= 'home'),
    path('cbnhom/', views.question_nhom,name= 'question_nhom'),
    path('uudai/', views.question_uudai,name= 'question_uudai'),
    path('order/',views.orderview,name='orderview'),
    path('cart/', views.cart,name= 'cart'),
    path('checkout/', views.checkout,name= 'checkout'),
    path('update_item/', views.updateItem, name= 'update_item'),
    path('process_order/', views.processOrder, name= 'process_order'),
]