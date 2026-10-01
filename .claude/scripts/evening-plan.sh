#!/usr/bin/env bash
# Runs /evening-plan headlessly and logs the result. Called by the systemd user timer (see How to Use Claude in the Vault.md).
set -euo pipefail
VAULT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$VAULT"
export TZ=America/Puerto_Rico
mkdir -p Agents/runs
log="Agents/runs/evening-plan-$(date +%F).md"
{
  echo "# evening-plan run · $(date '+%F %H:%M %Z')"
  echo
  "$HOME/.local/bin/claude" -p "/evening-plan" \
    --allowedTools "Read,Glob,Grep,Write,Edit" \
    --permission-mode acceptEdits 2>&1
} > "$log"
# Optional phone push: set NTFY_TOPIC in ~/.config/cs-vault.env to a private ntfy.sh topic.
if [[ -f "$HOME/.config/cs-vault.env" ]]; then
  source "$HOME/.config/cs-vault.env"
  [[ -n "${NTFY_TOPIC:-}" ]] && curl -s -d "Tomorrow's plan is ready in Daily/" "https://ntfy.sh/$NTFY_TOPIC" >/dev/null || true
fi
