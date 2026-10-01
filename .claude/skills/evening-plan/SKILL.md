---
name: evening-plan
description: Build tomorrow's (or the next workday's) plan as a daily note — deadlines, top 3, time-blocked schedule, meeting prep, carry-overs. Use when the user asks to plan tomorrow, runs /evening-plan, or at the scheduled 7 PM run.
argument-hint: "[YYYY-MM-DD to plan for; default = next workday]"
---

# /evening-plan

Create the daily note for the next workday so Giancarlo starts it knowing exactly what to do.

## 1. Pick the target date
- If `$ARGUMENTS` has a date, use it. Otherwise use the **next workday** after today (Puerto Rico time): Fri/Sat/Sun → Monday.
- Compute the contract day number (Oct 1, 2026 = Day 1).
- Target file: `Daily/<date>.md`. If it already exists, **update only the sections below that you own** and leave everything the user wrote alone.

## 2. Gather (read only)
1. `.claude/hooks/deadlines.tsv`: milestones from the target date through +7 days.
2. Today's note `Daily/<today>.md` (and the previous 2 daily notes if today's is missing): unchecked tasks, "Tomorrow" items, blockers, the time log.
3. The current `Weekly/` note if present: weekly priorities and feedback from Torino.
4. `Inbox/`: captures not yet filed that look actionable.
5. Recurring cadence for the target weekday (Mon 1:1 12:00 · Tue team 12:00 · Wed time report 5 PM · Thu 1:1 1:00 · Fri social plan 12 PM, all ET).
6. **Calendar and email, only if a calendar or Gmail connector tool is available in this session.** Read tomorrow's events and threads waiting on a reply (subjects and senders only, no bodies in the note). If no connector is available, say "calendar not connected" in the note and continue.

## 3. Decide
- **Top 3:** the three things that most move a deadline in the next 7 days. Contract deadlines beat stretch goals; stretch goals beat build work. Build work only appears if nothing contractual is due within 48 h.
- **Schedule:** time blocks between 9 AM and 5 PM ET covering at least 4 hours, total ≤ 5 hours. Put deep work in the morning and meetings where they fall. Leave 15 min at the end for the time log.
- **Meeting prep:** for each meeting, 2–3 bullets on what to bring or ask.
- **Risks:** any deadline within 3 days with no progress in the notes. Say so plainly and suggest flagging it to Torino early.

## 4. Write `Daily/<date>.md`
Use this structure (see `Templates/Daily.md`):

```markdown
---
date: <date>
type: daily
day: <n>
outcome: all
status: draft
---
# <Weekday>, <Mon D> · Day <n> of 90

## Due soon
- <date> [kind · outcome] milestone   (next 7 days, soonest first)

## Top 3
- [ ] ... 📅 <date> #outcome/0X

## Schedule (ET = PR time until Nov 1)
| Time | Block | Output |

## Meeting prep
### <meeting>
- ...

## Carried over
- [ ] ... (from <date>)

## Risks / flag early
- ...

## Captures
<!-- /capture appends here -->

## Time log
| Task | Outcome | Hours |
|---|---|---|

## End of day
- Done:
- Tomorrow:
- Blockers:
```

## 5. Calendar (only with a connector, and only Giancarlo's own calendar)
If a calendar write tool is available, create focus blocks for the Top 3, titled `[agent] <task>`. Never invite anyone. Never move or delete existing events. If there's no connector, skip this step.

## 6. Finish
Reply with 3–5 lines: the target date, the Top 3, and any risk. Keep it short enough to read on a phone.
