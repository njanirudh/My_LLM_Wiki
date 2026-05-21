#!/usr/bin/env bash
set -euo pipefail

docker network inspect llm-net >/dev/null 2>&1 || docker network create llm-net

docker compose -f home_pc.compose.yml up -d
