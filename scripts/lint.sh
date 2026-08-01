#!/usr/bin/env bash
set -euo pipefail

for script in scripts/*.sh; do
  if [ -f "$script" ]; then
    bash -n "$script"
    if command -v shellcheck >/dev/null 2>&1; then
      shellcheck "$script"
    fi
  fi
done

PYTHON_BIN="${PYTHON_BIN:-python3}"
if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  PYTHON_BIN=python
fi
if [ -f "scripts/render_playbook.py" ]; then
  "$PYTHON_BIN" scripts/render_playbook.py --check
fi

echo "[lint] Template validation passed."
