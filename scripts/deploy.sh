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

# O build demora alguns minutos; roda desanexado para não morrer com a sessão SSH.
ssh "$HOST" "cd $DEST && nohup docker compose up -d --build > build.log 2>&1 &"
echo "Build iniciado em $HOST:$DEST (acompanhe com: ssh $HOST tail -f $DEST/build.log)"
