#!/usr/bin/env bash
set -euo pipefail
DATE="${1:-$(date +%F)}"
TOPIC="${2:-What interesting or genuinely useful/sophisticated things are people doing with clawdbot/moltbot/openclaw bots?}"
python3 "$(dirname "$0")/run_briefing.py" --date "$DATE" --topic "$TOPIC"
