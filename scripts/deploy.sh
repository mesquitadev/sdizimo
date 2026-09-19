#!/bin/bash
# Envia o código para o servidor e recria os containers.
# Uso: scripts/deploy.sh [usuario@host] [pasta remota]
set -euo pipefail
HOST="${1:-mesquitadev@100.115.95.70}"
DEST="${2:-~/stacks/sdizimo}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

rsync -az --delete \
  --exclude .git --exclude .env --exclude .claude --exclude .DS_Store \
  --exclude __pycache__ --exclude staticfiles --exclude db.sqlite3 \
  --exclude 'media/cache' --exclude 'backups/db/*.tar' --exclude 'backups/db/local-*' \
  "$ROOT/" "$HOST:$DEST/"

# O build da imagem leva alguns minutos na primeira vez (depois usa cache).
ssh -o ServerAliveInterval=30 "$HOST" "cd $DEST && docker compose up -d --build 2>&1 | grep -vE '^\s*$' | tail -5"
echo "Deploy concluído em $HOST:$DEST"
