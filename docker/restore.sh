#!/bin/bash
# Executado apenas na primeira inicializacao do volume do Postgres.
set -e
DUMP=/dump
if [ -f "$DUMP/toc.dat" ]; then
  echo ">>> Restaurando dump em formato diretorio de $DUMP"
  pg_restore --no-owner --no-privileges --role="$POSTGRES_USER" \
    -U "$POSTGRES_USER" -d "$POSTGRES_DB" "$DUMP"
  echo ">>> Restore concluido"
else
  echo ">>> Nenhum dump encontrado em $DUMP, banco vazio"
fi
