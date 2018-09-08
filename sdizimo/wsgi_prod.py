import os, sys
from django.core.wsgi import get_wsgi_application


apache_configuration = os.path.realpath(os.path.dirname(__file__))
project = os.path.join(apache_configuration, 'sdizimo')

sys.path.append(apache_configuration)
sys.path.append(project)
sys.path.insert(0, "/home/infobits/.virtualenvs/sdizimo/lib/python3.4/site-packages")

os.environ['PYTHON_EGG_CACHE'] = '/home/infobits/apps_wsgi/.python-eggs'

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sdizimo.settings_prod")
application = get_wsgi_application()
