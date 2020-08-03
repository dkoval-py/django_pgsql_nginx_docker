#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    echo "PostgreSQL started"
fi

#python web_trial/manage.py flush --no-input
#python web_trial/manage.py migrate

exec "$@"
