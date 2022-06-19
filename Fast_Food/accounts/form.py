from faulthandler import disable
import django
from django import forms
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm ,UserChangeForm,PasswordChangeForm
from django.contrib.auth.models import User
from django import forms


class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields =['username','first_name','last_name','email','password1','password2']
class UpdateUserForm(UserChangeForm):
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class' : 'form-control'}))
    first_name = forms.CharField(max_length=100,widget=forms.TextInput(attrs={'class' :'form-control'}))
    last_name = forms.CharField(max_length=100,widget=forms.TextInput(attrs={'class' :'form-control'}))
    class Meta:
        model = User
        fields =['first_name','last_name','email']

class ChangePasswordForm(PasswordChangeForm):
    class Meta:
        model = User
        fields =['old_password', 'new_password1', 'new_password2']

