---
name: timereport
description: Draft the weekly time report for Torino (due Wednesdays 5 PM ET) from the week's daily-note time logs. Use when the user runs /timereport or asks for the time sheet or hours report.
argument-hint: "[week ending YYYY-MM-DD; default = this Wednesday]"
---

# /timereport

The contract requires a weekly report "outlining tasks completed and time committed to each, broken out for the week", due **Wednesday by 5:00 PM ET** to Torino.

## Steps
1. **Period:** from the previous report through today (default Thu → Wed). The first report (Oct 7) covers Oct 1–7.
2. **Read** the `## Time log` tables in `Daily/*.md` for those dates, plus `## Captures` lines for context.
3. **Use only hours the user actually logged.** Never estimate or invent hours. List days with no log under "Missing entries" so the user can fill them in.
4. **Separate** `build` (private agent system) and any Sales Partnership time from contract work. Show them in a separate section that is **not** part of the draft to Torino. How build hours are reported is the user's decision.
5. **Group** contract hours by outcome, with task bullets under each.
6. **Check the band:** flag if contract hours fall outside 20–25 h/week or any day exceeds 5 h.

## Output: `Agents/drafts/timereport-<YYYY>-W<ww>.md`
```markdown
---
date: <today>
type: draft
outcome: admin
status: draft
outbound: true
---
# Time report · <period>

**Total contract hours:** X.X h  (target 20–25)

| Outcome | Hours | Tasks completed |
|---|---|---|
| 01 Onboarding | | • … |
| 02 Missouri activation | | • … |
| 03 Activation / retention / renewal | | • … |
| 04 Social media | | • … |
| Meetings & admin | | • … |

**By day:** Thu x.x · Fri x.x · Mon x.x · Tue x.x · Wed x.x

---
<!-- PRIVATE — not for Torino -->
## Private notes
- Build (agent system): x.x h
- Missing entries: …
- Band check: …
```
Reply with the total and any missing days.
