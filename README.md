# szdizimo

Sistema de gestão de dízimo de paróquia. Django 1.11 (Python 3.7) + PostgreSQL 13, empacotado em Docker.

Origem do código: gitlab.com/danielslz/sdizimo (histórico preservado neste repositório).

## Estrutura

```
docker/            Dockerfile, entrypoint (collectstatic + migrate + gunicorn), restore do dump, constraints de pip
docker-compose.yml Serviços db (Postgres 13) e web (gunicorn na 8000)
sdizimo-back/      Código Django
backups/db/        Dump do banco de 2022-03-08 (restaurado na primeira subida); dumps locais ficam fora do git
scripts/           deploy.sh (rsync + build no servidor) e backup-db.sh
.env.example       Variáveis suportadas
```

## Rodar local

```bash
cp .env.example .env      # opcional; defaults: web 8000, db 5432, DEBUG=0
docker compose up -d --build
```

Acesse http://localhost:8000. Na primeira subida o volume do Postgres é criado e o dump em
`backups/db/2022-03-08-pg13-dir` é restaurado automaticamente (429 dizimistas, 15 usuários).

Para desenvolver com `DEBUG=1`, coloque `DJANGO_DEBUG=1` no `.env`. O código de `sdizimo-back/`
é montado no container; após alterar Python, `docker compose restart web`.

## Comandos úteis

```bash
docker compose logs -f web                                    # logs
docker compose exec web python manage.py changepassword USER   # trocar senha (superusers: edmilton, livia, leo)
docker compose exec web python manage.py createsuperuser       # novo admin
docker compose exec db psql -U sdizimo sdizimo                 # psql
scripts/backup-db.sh                                           # dump em backups/db/local-AAAA-MM-DD (ignorado pelo git)
docker compose down                                            # para, mantém o banco
docker compose down -v                                         # para e apaga o banco (restaura o dump na próxima subida)
```

Para restaurar outro dump, apague o volume (`down -v`) e aponte o volume `/dump` do serviço `db`
no `docker-compose.yml` para a pasta desejada (formato diretório do `pg_dump -Fd`).

## Variáveis (.env)

| Variável | Default | Uso |
|---|---|---|
| `SDIZIMO_WEB_PORT` | `8000` | Porta publicada do web. Use `127.0.0.1:8000` para só o proxy alcançar |
| `SDIZIMO_DB_PORT` | `5432` | Porta publicada do Postgres |
| `DJANGO_DEBUG` | `0` | `1` liga DEBUG e o django-compressor |
| `DJANGO_SECRET_KEY` | chave de dev | Obrigatório trocar em produção |
| `GUNICORN_WORKERS` | `3` | Workers do gunicorn |

## Produção (servidor homelab)

O app roda em `~/stacks/sdizimo` no servidor e é exposto pelo Caddy do stack `homelab` como
**http://sdizimo.homelab** (DNS wildcard `*.homelab` do AdGuard). O `.env` do servidor publica
o web em `127.0.0.1:8000` e o db em `127.0.0.1:5433` (a 5432 é do Postgres do homelab).

Deploy a partir desta máquina:

```bash
scripts/deploy.sh                       # rsync + docker compose up -d --build no servidor
```

Entrada no Caddyfile (`~/stacks/homelab/Caddyfile`):

```
http://sdizimo.homelab {
	reverse_proxy 127.0.0.1:8000
}
```

## Decisões e pegadinhas

- **Python 3.7** é a versão mais nova suportada pelo Django 1.11. A imagem `python:3.7-slim-bullseye`
  usa `archive.debian.org` porque o bullseye saiu dos mirrors.
- **`docker/constraints.txt`** trava xhtml2pdf/reportlab/Pillow/psycopg2 em versões da época. As atuais
  exigem Python 3.9+ ou Rust, e psycopg2 2.9 quebra o Django < 3 (`database connection isn't set to UTC`).
- **Django 1.11.29** em vez de 1.11.16: a 1.11.16 tem `SyntaxError` no Python 3.7.
- **Static** é servido pelo whitenoise a partir do `collectstatic` (feito no entrypoint). Por isso o
  django-compressor só fica ativo em DEBUG.
- **Media** (fotos) é servido pelo próprio Django em qualquer modo, via rota em `sdizimo/urls.py`.
- **QZ Tray** (impressora térmica de recibos): `static/qz/qz-tray.js` 2.0.7 e o certificado em `qz-keys/`.
  Os instaladores foram tirados do repo; a tela de recibo linka a release 2.0.7 no GitHub do QZ.
- **Media** (`sdizimo-back/media/`) não vai pro git. Em produção vive no volume montado do servidor.
- Na **primeira subida** o Postgres reinicia após o restore e o web pode falhar uma vez ao conectar.
  O `restart: unless-stopped` resolve sozinho.
