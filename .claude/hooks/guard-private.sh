#!/usr/bin/env bash
# PreToolUse hook (Bash): blocks shell commands that touch secrets or private development pages.
# Read/Grep/Glob are covered by permissions.deny in settings.json; this closes the `cat`/`grep` loophole.
input=$(cat)
if printf '%s' "$input" | grep -qiE 'Credentials\.md|(^|[/ "])\.env([ "]|$)|Assessment Results|Capability Starting Profile|About Me & My Direction|/Private/'; then
  echo "Blocked by guard-private.sh: this command references a secret or private page (Credentials.md, .env, or private development notes). Ask the user instead." >&2
  exit 2
fi
exit 0
