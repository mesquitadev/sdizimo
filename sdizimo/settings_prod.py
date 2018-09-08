# coding=utf-8
import os
from .settings import *

MEDIA_ROOT = '/home/infobits/apps_wsgi/sdizimo_media'
STATIC_ROOT = '/home/infobits/www/sdizimo_static'

# Define production-specific settings
DEBUG = False
# TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'infobits',
        'USER': 'infobits',
        'PASSWORD': 'Inf0b1tsSd1z1m0',
        'HOST': 'pgsql.infobits.net.br',
        'PORT': '5432',
    }
}

ALLOWED_HOSTS = [
    '.infobits.net.br',  # Allow domain and subdomains
    '.infobits.net.br.',  # Also allow FQDN and subdomains
]

# CACHES = {
#     'default': {
#         'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
#         'LOCATION': 'unix:/home/gobma/memcached.sock',
#     }
# }

# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
# EMAIL_HOST = 'smtp.webfaction.com'
# EMAIL_HOST_USER = 'gobma_site'
# EMAIL_HOST_PASSWORD = 'G0bM@M@il'
# SERVER_EMAIL = 'contato@gobma.org.br'

# SECURE_SSL_REDIRECT = True

SESSION_COOKIE_AGE = 60 * 45  # 45m, in seconds
SESSION_EXPIRE_AT_BROWSER_CLOSE = True
