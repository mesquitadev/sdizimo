"""
Django settings for sdizimo project.

Generated by 'django-admin startproject' using Django 1.11.5.

For more information on this file, see
https://docs.djangoproject.com/en/1.11/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.11/ref/settings/
"""

import os
# import django_heroku
# import dj_database_url

from django.contrib.messages import constants as message_constants

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_PATH = os.path.abspath(os.path.dirname(os.path.dirname(__file__)))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.11/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '$g!aedey%=%ftvxs^i2i%ovkg76jrn$+)nj!yzdjdxg##uo_^u'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = [
    '.localhost',  # Allow domain and subdomains
    '.pythonanywhere.com',  # Allow domain and subdomains
    '10.0.3.11',  # Allow domain and subdomains,
    '35.209.76.28',
    'dizimo.infobits.net.br'
]

ADMINS = (
    ('Daniel Lima', 'danielslz@gmail.com'),
)

MANAGERS = ADMINS

DEFAULT_FROM_NAME = 'SDízimo'


# Application definition

DJANGO_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.postgres',
)

THIRD_PARTY_APPS = (
    'widget_tweaks',
    'localflavor',
    'sorl.thumbnail',
    'compressor',
    'easy_pdf',
    'django_cleanup',
    'django_select2',
    'django_extensions',
)

PROJECT_APPS = (
    'apps.autenticacao',
    'apps.comum',
    'apps.dizimo',
)

INSTALLED_APPS = DJANGO_APPS + THIRD_PARTY_APPS + PROJECT_APPS

MIDDLEWARE = [
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'sdizimo.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            '%s/templates' % (PROJECT_PATH),
            os.path.join(BASE_DIR, 'templates/'),
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'sdizimo.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.11/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#     }
# }

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'sdizimo',
        'USER': 'postgres',
        'PASSWORD': 'Postgres2019!',
        'HOST': 'db_sdizimo',
        'PORT': '5432',
        'CONN_MAX_AGE': 600,
    }
}

# Password validation
# https://docs.djangoproject.com/en/1.11/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/1.11/topics/i18n/

LANGUAGE_CODE = 'pt-br'

TIME_ZONE = 'America/Fortaleza'

USE_I18N = True

USE_L10N = True

USE_TZ = True

USE_THOUSAND_SEPARATOR = True

DATE_FORMAT = 'd/m/Y'

DATE_INPUT_FORMATS = ('%d/%m/%Y',)

DATETIME_FORMAT = 'd/m/Y H:i'

DATETIME_INPUT_FORMATS = ('%d/%m/%Y %H:%M:%S', '%d/%m/%Y %H:%M')


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.11/howto/static-files/

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]

STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'compressor.finders.CompressorFinder',
)

# Simplified static file serving.
# https://warehouse.python.org/project/whitenoise/

# STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'


# Media files

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')


# Logout default url

LOGOUT_REDIRECT_URL = 'login'
LOGIN_REDIRECT_URL = 'inicio'
LOGIN_URL = 'login'


# E-mail config

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'


# django compressor

COMPRESS_ENABLED = True
COMPRESS_OUTPUT_DIR = 'cache'


# messages

MESSAGE_TAGS = {
    message_constants.DEBUG: 'debug',
    message_constants.INFO: 'info',
    message_constants.SUCCESS: 'success',
    message_constants.WARNING: 'warning',
    message_constants.ERROR: 'danger',
}


# Heroku configs

# django_heroku.settings(locals())

# if not DEBUG:
#     DATABASES['default'] = dj_database_url.config(conn_max_age=600, ssl_require=True)


# LOGS_ROOT = '/home/daniel/Projetos/logs'
# LOGGING = {
#     'version': 1,
#     'disable_existing_loggers': True,
#     'filters': {
#         'require_debug_false': {
#             '()': 'django.utils.log.RequireDebugFalse',
#         },
#         'require_debug_true': {
#             '()': 'django.utils.log.RequireDebugTrue',
#         },
#     },
#     'formatters': {
#         'simple': {
#             'format': '[%(asctime)s] %(levelname)s %(message)s',
#             'datefmt': '%Y-%m-%d %H:%M:%S'
#         },
#         'verbose': {
#             'format': '[%(asctime)s] %(levelname)s [%(name)s.%(funcName)s:%(lineno)d] %(message)s',
#             'datefmt': '%Y-%m-%d %H:%M:%S'
#         },
#     },
#     'handlers': {
#         'console': {
#             'level': 'DEBUG',
#             'filters': ['require_debug_true'],
#             'class': 'logging.StreamHandler',
#             'formatter': 'simple'
#         },
#         'development_logfile': {
#             'level': 'DEBUG',
#             'filters': ['require_debug_true'],
#             'class': 'logging.FileHandler',
#             'filename': LOGS_ROOT + '/sdizimo_dev.log',
#             'formatter': 'verbose'
#         },
#         'production_logfile': {
#             'level': 'ERROR',
#             'filters': ['require_debug_false'],
#             'class': 'logging.handlers.RotatingFileHandler',
#             'filename': LOGS_ROOT + '/sdizimo_prod.log',
#             'maxBytes': 1024*1024*100,  # 100MB
#             'backupCount': 5,
#             'formatter': 'simple'
#         },
#     },
#     'root': {
#         'level': 'DEBUG',
#         'handlers': ['console'],
#     },
#     'loggers': {
#         'sdizimo': {
#             'handlers': ['development_logfile', 'production_logfile'],
#          },
#         'django': {
#             'handlers': ['development_logfile', 'production_logfile'],
#         },
#         'py.warnings': {
#             'handlers': ['development_logfile'],
#         },
#     }
# }
