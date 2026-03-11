#!/usr/bin/env bash
set -euo pipefail

if command -v tailwindcss-language-server &>/dev/null; then
  echo "tailwindcss-language-server: installed"
  exit 0
fi

echo "WARNING: 'tailwindcss-language-server' binary not found on PATH."
echo "Install it with:"
echo "  npm install -g @tailwindcss/language-server"
exit 1
