# django-backend

## Django setting
> docker-compose run --rm app sh -c "django-admin startproject app ."

## create admin account 
> docker-compose run --rm app sh -c " python manage.py migrate"
> docker-compose run --rm app sh -c " python manage.py createsuperuser"