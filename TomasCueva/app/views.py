from django.shortcuts import render
from .forms import * 
from .models import *
from datetime import datetime
from django.views.generic import ListView 
import json
import requests
def repositorio_github(request):
    url_api = "https://api.github.com/repos/{usuario}/{repositorio}/contents/{ruta_archivo}"
    usuario = "CuevaTomasArg"
    repositorio = "nombre_de_repositorio"
    ruta_archivo = "ruta/del/archivo/en/el/repositorio"
    token = "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"

    headers = {
        "Authorization": f"Token {token}",
        "Accept": "application/vnd.github.v3+json"
    }

    respuesta_api = requests.get(url_api.format(usuario=usuario, repositorio=repositorio, ruta_archivo=ruta_archivo), headers=headers)

    contenido = json.loads(respuesta_api.content)

    return render(request, 'nombre_de_la_plantilla.html', {'contenido': contenido})


class Index(ListView):
    model = Projects
    form_class = ContactsForm
    template_name = 'index.html'