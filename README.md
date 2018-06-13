# README #


### Requisitos necessários para instalação ###

* Python 3
* PIP
* VirtualEnv
* VirtualEnvWrapper
* PostgreSQL

### Configuração do ambiente ###

* Instalar as dependências do SO
```
#!bash
sudo apt install python3-dev python-pip virtualenvwrapper
sudo apt install libpq-dev libjpeg-dev libtiff5-dev libpng-dev
sudo apt install postgresql postgresql-contrib pgadmin3
```

* Tendo todas as dependências instaladas, configurar o virtualenv
```
#!bash
mkvirtualenv sdizimo --python=/usr/bin/python3
```

* Instalar as dependências com o PIP
```
#!bash
pip install -r requirements.txt
```

* Rodar a apliação
```
#!bash
python manage.py runserver
```

* Fazer backup do banco
```
#!bash
pg_dump -Fc -h 127.0.0.1 -p 5432 -U sdizimo sdizimo > db_backup_YYYYMMDD
```

* Restaurar backup do banco
```
#!bash
pg_restore -c -h 127.0.0.1 -p 5432 -U sdizimo -d sdizimo db_backup_YYYYMMDD
```
