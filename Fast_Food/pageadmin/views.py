from django.shortcuts import render
from django.http import HttpResponse

def page(request):
    return render(request,'pageadmin/admin.html')