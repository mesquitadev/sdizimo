# szdizimo

Sistema de dízimo (Django 1.11 + PostgreSQL 13) empacotado em Docker.

## Subir

```bash
docker compose up -d --build
```

Acesse http://localhost:8000. Na primeira subida o dump em `sdizimo (1)/` (pg_dump formato diretório, 2022-03-08) é restaurado automaticamente no volume do Postgres.

## Comandos úteis

```bash
docker compose logs -f web                                   # logs da aplicação
docker compose exec web python manage.py changepassword USER  # trocar senha
docker compose down                                          # parar (mantém o banco)
docker compose down -v                                       # parar e apagar o banco (restaura o dump de novo ao subir)
```

## Estrutura

- `sdizimo-back/` — código Django (histórico original preservado)
- `sdizimo (1)/` — dump mais recente do banco (usado no restore)
- `sdizimo-back/db_backup_2018*` — dumps antigos em formato custom
- `docker/` — Dockerfile, constraints de pip e script de restore
