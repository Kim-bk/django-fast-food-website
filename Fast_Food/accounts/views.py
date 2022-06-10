from django.contrib.auth import authenticate, login
from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from flask import redirect
# Create your views here.
from .form import CreateUserForm

def login_view(request):
    if request.method =="POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(request,username=username,
                                    password=password)
        if user is not None:
            login(request,user)
            return render(request, "login.html",{})
    return render(request, "login.html",{})

def logout_view(request):
    return render(request, "logout.html",{})

def register_view(request):
    form = CreateUserForm()
    if request.method =="POST":
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request,'Tài khoản '+ user +' đăng ký thành công !')
    
    context = {'form':form}
    return render(request, 'register.html',context)