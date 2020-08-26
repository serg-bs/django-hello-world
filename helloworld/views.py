from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world!")

def healthz(request):
    return HttpResponse("OK")
