from django.urls import path
from . import views
urlpatterns = [
    path('', views.question,name= 'question'),
    path('cbnhom/', views.question_nhom,name= 'question_nhom'),
    path('uudai/', views.question_uudai,name= 'question_uudai'),
]