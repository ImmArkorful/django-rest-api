#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/profiles-rest-api'
VIRTUALENV_BASE_PATH='/usr/local/virtualenvs'

git pull
python3 manage.py migrate
python3 manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
