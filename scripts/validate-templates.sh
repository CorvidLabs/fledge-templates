#!/usr/bin/env bash
set -euo pipefail

found=0
for manifest in */template.toml; do
  if [[ ! -f "$manifest" ]]; then
    continue
  fi
  found=$((found + 1))
  fledge templates validate "${manifest%/template.toml}" --strict
done

if [[ "$found" -eq 0 ]]; then
  echo "no template manifests found" >&2
  exit 1
fi

echo "Validated $found templates."
