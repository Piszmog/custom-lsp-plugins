#!/usr/bin/env bash
set -euo pipefail

if command -v zls &>/dev/null; then
  echo "zls: $(zls --version 2>/dev/null || echo 'installed')"
  exit 0
fi

echo "WARNING: 'zls' binary not found on PATH."
echo "Install it with:"
echo "  See https://zigtools.org/zls/install/ for installation methods"
exit 1
