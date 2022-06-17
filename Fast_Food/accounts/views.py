from django.contrib.auth import authenticate, login
from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from loadimg.views import FoodView
from django.shortcuts import redirect

from .form import CreateUserForm
from .form import UpdateUserForm
def login_view(request):
    if request.method =="POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(request,username=username,
                                    password=password)
        if user is not None:
            login(request,user)
            return redirect('home')
        else:
            messages.warning(request,'Sai tài khoản hoặc mật khẩu')
            return redirect('login')
    return render(request, "login.html",{})

def logout_view(request):
    logout(request)
    return redirect('home')

def register_view(request):
    form = CreateUserForm
    if request.method =="POST":
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request,'Tài khoản '+ user +' đăng ký thành công !')
            return redirect('login')
        else:
            form = CreateUserForm(request.POST)
    context = {'form':form}
    return render(request, 'register.html',context)

def profile_view(request):
    if request.method =="POST":
        form = UpdateUserForm(request.POST,instance=request.user)
        if form.is_valid():
            form.save()
            return redirect('profile')
    form = UpdateUserForm(instance=request.user)
    context = {'form':form}
    return render(request,"profile.html",context)