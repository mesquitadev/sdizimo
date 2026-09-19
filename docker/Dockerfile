FROM python:3.7-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1

# Bullseye saiu do mirror principal; usa o archive.debian.org
RUN echo "deb http://archive.debian.org/debian bullseye main" > /etc/apt/sources.list \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y --no-install-recommends \
        build-essential libpq-dev libjpeg-dev zlib1g-dev libfreetype6-dev \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY sdizimo-back/requirements.txt /app/requirements.txt
COPY docker/constraints.txt /app/constraints.txt
RUN pip install --no-cache-dir -c constraints.txt -r requirements.txt "Pillow<7"

COPY sdizimo-back/ /app/

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
