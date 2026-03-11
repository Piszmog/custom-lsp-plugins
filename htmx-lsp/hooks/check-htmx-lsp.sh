#!/usr/bin/env bash
set -euo pipefail

if command -v htmx-lsp &>/dev/null; then
  echo "htmx-lsp: installed"
  exit 0
fi

echo "WARNING: 'htmx-lsp' binary not found on PATH."
echo "Install it with:"
echo "  cargo install htmx-lsp"
exit 1
