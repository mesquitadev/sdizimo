# coding=utf-8
import os
from .settings import *

MEDIA_URL = '/sdizimo_media/'
MEDIA_ROOT = '/home/infobits/www/sdizimo_media'

STATIC_URL = '/sdizimo_static/'
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

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.infobits.net.br'
EMAIL_HOST_USER = 'sdizimo'
EMAIL_HOST_PASSWORD = 'Sd1z1m01nf0b1ts'
SERVER_EMAIL = 'sdizimo@infobits.net.br'

# SECURE_SSL_REDIRECT = True

SESSION_COOKIE_AGE = 60 * 45  # 45m, in seconds
SESSION_EXPIRE_AT_BROWSER_CLOSE = True
