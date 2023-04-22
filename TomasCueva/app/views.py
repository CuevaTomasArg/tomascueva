from django.shortcuts import render
from .forms import * 
from .models import *
from datetime import datetime
from django.views.generic import ListView 

class Index(ListView):
    model = Projects
    form_class = ContactsForm
    template_name = 'index.html'