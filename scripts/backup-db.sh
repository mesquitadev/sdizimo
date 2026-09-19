#!/bin/bash
# Gera um dump do banco do container (formato diretório, igual ao restaurado).
# Uso: scripts/backup-db.sh            -> backups/db/local-AAAA-MM-DD
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/backups/db/local-$(date +%F)"
rm -rf "$OUT"
docker compose -f "$ROOT/docker-compose.yml" exec -T db \
  sh -c 'rm -rf /tmp/dump && pg_dump -U sdizimo -Fd -f /tmp/dump sdizimo && tar -C /tmp -cf - dump' \
  | tar -xf - -C "$ROOT/backups/db"
mv "$ROOT/backups/db/dump" "$OUT"
echo "Dump salvo em $OUT"
