from django.http import HttpResponse
import logging

logger = logging.getLogger(__name__)

def index(request):
    logger.error('Mamma Mia!')
    return HttpResponse("Hello, world!")

def healthz(request):
    return HttpResponse("OK")
