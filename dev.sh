#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
PORT="${PORT:-4321}"
echo "Serving on http://localhost:${PORT}"
python3 -m http.server "${PORT}"
