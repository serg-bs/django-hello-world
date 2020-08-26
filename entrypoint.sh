#!/bin/sh
set -e
if [ "$1" = 'start' ]; then
python manage.py migrate --noinput
python manage.py runserver 0.0.0.0:8000
fi

exec $@