#!/usr/bin/env bash
set -euo pipefail

mkdir -p web/sites/default/files

if [ -f web/sites/default/settings.php ]; then
  chmod 644 web/sites/default/settings.php
fi

chmod 777 web/sites/default/files
