#!/bin/bash
set -e
cd /app
python manage.py collectstatic --noinput --clear >/dev/null
python manage.py migrate --noinput
exec gunicorn sdizimo.wsgi:application \
  --bind 0.0.0.0:8000 \
  --workers "${GUNICORN_WORKERS:-3}" \
  --timeout 120 \
  --access-logfile - --error-logfile -
