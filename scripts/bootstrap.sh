#!/usr/bin/env bash
set -euo pipefail

if [ ! -f .env ]; then
  cp .env.example .env
fi

mkdir -p web/sites/default/files

if [ ! -f web/sites/default/settings.php ]; then
  cp web/sites/default/default.settings.php web/sites/default/settings.php
  chmod 666 web/sites/default/settings.php
fi

chmod 777 web/sites/default/files

docker compose build
docker compose up -d
