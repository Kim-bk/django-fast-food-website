from django.http import HttpResponse
from django.shortcuts import render
from django.views import View

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

