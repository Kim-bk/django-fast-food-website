from django.urls import path
from django.contrib.auth import views as auth_view
from django.contrib.auth.views import PasswordChangeView
from django.urls import reverse_lazy
from . import views

urlpatterns = [
    path('login/', views.login_view, name ='login'),
    path('register/', views.register_view, name = 'register'),
    path('logout/', views.logout_view, name = 'logout'),
    path('profile/', views.profile_view, name = 'profile'),
    path('order/',views.orderview,name='orderview'),
    path('change_password/', PasswordChangeView.as_view(template_name='accounts/change_password.html',success_url =reverse_lazy('change_password_done')), name ='change_password'),
    path('change_password_done/',views.change_password_done,name='change_password_done'),
]
