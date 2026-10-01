---
name: checkin
description: Draft the weekly check-in for the next 1:1 with Torino (completed / learned / next / how can you help), linking evidence. Use when the user runs /checkin or is preparing for a Monday or Thursday 1:1.
---

# /checkin

The Notion workspace asks for a check-in before each 1:1: *"Link work rather than rewrite reports."*

## Steps
1. **Window:** since the previous 1:1 (Mon 12:00 ET or Thu 1:00 ET, whichever was last) until now.
2. **Read:** daily notes in the window (`## Top 3`, `## End of day`, `## Captures`), `Inbox/` feedback and decision notes, drafts in `Agents/drafts/` with `status: submitted` or `approved`, and the next 7 days of `.claude/hooks/deadlines.tsv`.
3. **Write** `Weekly/<YYYY>-W<ww>-checkin-<mon|thu>.md`:

```markdown
---
date: <today>
type: weekly
outcome: all
status: draft
---
# Check-in for <Mon|Thu> <date> 1:1

## What was completed
- <deliverable or step> → [[link]] (status: submitted / approved / verified)

## What I learned
- <1–3 honest lessons, including one about my own process if the notes show one>

## What's next
- <next 3–5 actions with dates, tied to upcoming deadlines>

## How can you help
- <decisions, approvals, access or answers needed, each specific enough to answer in one line>

## Feedback applied
- <feedback received → what I changed> (only if there was feedback in the window)
```

## Rules
- Mark submitted vs. verified honestly. Don't claim a result that isn't confirmed.
- Put risks in "How can you help" early rather than hiding them.
- Keep it to one screen. Reply with the "How can you help" items.
