from django.contrib.auth import authenticate, login
from django.shortcuts import render

# Create your views here.
def login_view(request):
    if request.method =="POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(request,username=username,
                                    password=password)
        if user is None:
            context = {"Sai tài khoản hoặc mật khẩu"}
            return render(request, "login.html",context)
    return render(request, "login.html",{})

def logout_view(request):
    return render(request, "logout.html",{})

def register_view(request):
    return render(request, 'register.html',{})