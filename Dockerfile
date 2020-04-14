FROM python:3.6
#Copiando os arquivos do projeto para o diretorio usr/src/app
COPY . /usr/src/app
#Definindo o diretorio onde o CMD será executado e copiando o arquivo de requerimentos
WORKDIR /usr/src/app
COPY requirements.txt ./
# Instalando os requerimentos com o PIP
RUN pip install --no-cache-dir -r requirements.txt
# Expondo a porta da APP
EXPOSE 80
# Executando o comando para subir a aplicacao
CMD ["gunicorn", "sdizimo.wsgi:application", "--bind", "0.0.0.0:80", "--workers", "3"]