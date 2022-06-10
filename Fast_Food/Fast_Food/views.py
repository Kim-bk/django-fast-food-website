
from django.shortcuts import render

# Create your views here.
def combonhom_view(request):
    return render(request, "ComboNhom.html",{})

def combomotnguoi_view(request):
    return render(request, "Combo1Nguoi.html",{})

def MenuUuDai_view(request):
    return render(request, "MenuUuDai.html",{})

