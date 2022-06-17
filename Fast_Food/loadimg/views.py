from django.http import HttpResponse
from django.shortcuts import render
from django.views import View
from .models import tbFood

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
def question(request):
    list_question = tbFood.objects.filter(Id_Category = 1)
    context = {"list_question":list_question}
    return render(request,'loadimg/Combo1Nguoi.html',context)
def question_nhom(request):
    list_question = tbFood.objects.filter(Id_Category = 2)
    context = {"list_nhom":list_question}
    return render(request,'loadimg/ComboNhom.html',context)
def question_uudai(request):
    list_question = tbFood.objects.filter(Id_Category = 3)
    context = {"list_uudai":list_question}
    return render(request,'loadimg/MenuUuDai.html',context)