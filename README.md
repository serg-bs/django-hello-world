# django-hello-world

## Requirements
1. Install Docker: https://hub.docker.com/search/?type=edition&offering=community
2. Setup python environment:
    1. You may want to use virtualenv to create a separate python environment
    2. `pip install -r requirements.txt`

## Run development server 
   1. (Optional) ```python3 manage.py migrate```
   2. (Optional) ```python3 manage.py createsuperuser --username admin --email admin@mail.com```
   3.  ```python3 manage.py runserver```
   
Then, you can open the URL http://127.0.0.1:8000/

## Run with docker 
   1. ```docker build -t test .``` 
   2. ```docker run -d -p8000:8000 test ```
      
You can debug container ```docker run -d -p8000:8000 test /bin/bash```

## Run with docker-compose
   1. ```bash docker-compose up ```
   
   ```bash
   http://localhost:8000    # Django App
   http://localhost:9090    # Prometheus
   http://localhost:3000    # Grafana (admin:admin)
   
   http://localhost:8000/metrics      # Prometheus metrics
   http://localhost:8000/healthz      # check Healthz
   ```
     
    
    