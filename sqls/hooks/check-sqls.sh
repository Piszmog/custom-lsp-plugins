#!/usr/bin/env bash
set -euo pipefail

if command -v sqls &>/dev/null; then
  echo "sqls: installed"
  exit 0
fi

echo "WARNING: 'sqls' binary not found on PATH."
echo "Install it with:"
echo "  go install github.com/sqls-server/sqls@latest"
exit 1
