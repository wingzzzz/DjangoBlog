#!/bin/bash

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py compress --force
uwsgi --ini uwsgi.ini
