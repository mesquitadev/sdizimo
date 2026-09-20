#!/bin/bash
# Atualiza o servidor a partir do GitHub e recria os containers.
# Uso: scripts/deploy.sh [usuario@host] [pasta remota]
set -euo pipefail
HOST="${1:-mesquitadev@100.115.95.70}"
DEST="${2:-~/stacks/sdizimo}"

ssh -o ServerAliveInterval=30 "$HOST" "cd $DEST \
  && git pull --ff-only \
  && docker compose up -d --build 2>&1 | grep -vE '^\s*$' | tail -5"
echo "Deploy concluído em $HOST:$DEST"
