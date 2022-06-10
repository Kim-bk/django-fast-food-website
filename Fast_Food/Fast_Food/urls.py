"""Fast_Food URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/dev/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from xml.etree.ElementInclude import include
from django.contrib import admin
from django.urls import path,include

from accounts.views import login_view,register_view
from polls.views import index
from pageadmin.views import page
from Fast_Food.views import combonhom_view,combomotnguoi_view,MenuUuDai_view

urlpatterns = [
    path('polls/',index),
    path('pageadmin/',page),
    path('login/', login_view),
    path('register/', register_view),
    path('', combonhom_view),
    path('Combo1Nguoi/',combomotnguoi_view),
    path('MenuUuDai/',MenuUuDai_view),
    path('admin/', admin.site.urls)
    
    
]
