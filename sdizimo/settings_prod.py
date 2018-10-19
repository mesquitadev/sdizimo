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
EMAIL_HOST_USER = 'sdizimo@infobits.net.br'
EMAIL_HOST_PASSWORD = 'Sd1z1m01nf0b1ts'
SERVER_EMAIL = 'sdizimo@infobits.net.br'

# SECURE_SSL_REDIRECT = True

SESSION_COOKIE_AGE = 60 * 45  # 45m, in seconds
SESSION_EXPIRE_AT_BROWSER_CLOSE = True


LOGS_ROOT = '/home/infobits/logs'
LOGGING = {
    'version': 1,
    'disable_existing_loggers': True,
    'formatters': {
        'standard': {
            'format': "[%(asctime)s] %(levelname)s [%(name)s:%(lineno)s] %(message)s",
            'datefmt': "%d/%b/%Y %H:%M:%S"
        },
    },
    'handlers': {
        'logfile': {
            'level': 'DEBUG',
            'class': 'logging.handlers.RotatingFileHandler',
            'filename': LOGS_ROOT + "/sdizimo_log",
            'maxBytes': 50000,
            'backupCount': 2,
            'formatter': 'standard',
        },
        'console': {
            'level': 'INFO',
            'class': 'logging.StreamHandler',
            'formatter': 'standard'
        },
    },
    'loggers': {
        'django': {
            'handlers': ['console'],
            'propagate': True,
            'level': 'WARN',
        },
        'django.db.backends': {
            'handlers': ['console'],
            'level': 'DEBUG',
            'propagate': False,
        },
        'sdizimo': {
            'handlers': ['console', 'logfile'],
            'level': 'DEBUG',
        },
    }
}
