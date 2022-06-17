from django.urls import path
from .views import FoodView
from .views import FoodNhom
from .views import UuDai
urlpatterns = [
    path('', FoodView.as_view(), name= 'home'),
    path('cbnhom/', FoodNhom.as_view(), name= 'list_food_nhom'),
    path('uudai/', UuDai.as_view(), name= 'list_food_uu_dai'),
]