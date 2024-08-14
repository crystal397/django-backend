# django-backend

## 
> docker build .
> docker-compose build

> docker-compose run --rm app sh -c "django-admin startproject app ."
> docker-compose up

> docker-compose run --rm app sh -c "flake8"

## Django setting
> docker-compose run --rm app sh -c "django-admin startproject app ."

## create admin account 
> docker-compose run --rm app sh -c " python manage.py migrate"
> docker-compose run --rm app sh -c " python manage.py createsuperuser"

## git push
> git add .
> git commit -m "Django settings & workflow folder name update"
> git push -u origin main