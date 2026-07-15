#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

exec llama-server \
  --models-preset "$root_dir/config/opencode/llama.cpp-models.ini" \
  --models-max 1 \
  --models-autoload \
  --host 127.0.0.1 \
  --port 8080 \
  "$@"
