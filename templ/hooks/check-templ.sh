#!/usr/bin/env bash
set -euo pipefail

if command -v templ &>/dev/null; then
  echo "templ LSP: $(templ version 2>/dev/null || echo 'installed')"
  exit 0
fi

echo "WARNING: 'templ' binary not found on PATH."
echo "Install it with:"
echo "  go install github.com/a-h/templ/cmd/templ@latest"
exit 1
