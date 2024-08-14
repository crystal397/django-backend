# django-backend

## clone Github Repository
> git clone [URL]
> git init
> git add .
> git commit -m 'project start'
> git push -u origin main

## create Docker AccessToken

## new secret variable

## Docker build
> docker build .
> docker compose build

## Django setting
> docker compose run --rm app sh -c "django-admin startproject app ."

## flake8 setting
> docker compose run --rm app sh -c "flake8"

> docker compose up

## create admin account 
> docker compose run --rm app sh -c " python manage.py migrate"
> docker compose run --rm app sh -c " python manage.py createsuperuser"

## git push
> git add .
> git commit -m "Django settings & workflow folder name update"
> git push -u origin main