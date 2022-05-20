from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return render(request,'Combo1Nguoi.html')
# Create your views here.
