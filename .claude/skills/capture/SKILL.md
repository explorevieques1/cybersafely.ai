---
name: capture
description: Quickly file a thought, friction point, decision, feedback, time entry, or task into the right place in the vault. Use when the user runs /capture or says "note this", "log this", "remember for the audit", "Torino said…", or "I spent 2h on…".
argument-hint: "<what to capture>"
---

# /capture

File `$ARGUMENTS` in the right place with no fuss. One capture per call. Don't ask follow-up questions unless the text is truly ambiguous.

## Classify
| If it's… | Type | Where it goes |
|---|---|---|
| Time spent ("2h on audit") | time | Add a row to `## Time log` in today's `Daily/<today>.md`: task, outcome (01–04/admin/build), hours |
| A task / to-do | task | `- [ ] … 📅 <date if given> #outcome/0X` under `## Top 3` or `## Carried over` in today's daily note |
| Feedback from Torino or anyone | feedback | New note `Inbox/<today>-feedback-<slug>.md`, quoting as close to verbatim as given, plus a line under `## Captures` in the daily note linking it |
| A decision ("we agreed…") | decision | New note `Inbox/<today>-decision-<slug>.md` (who decided, what, when, why if known), plus a link in the daily note |
| Onboarding friction, audit evidence | friction | Append to `Inbox/audit-friction-log.md` (create it if missing) as a table row: date · step · what happened · severity (high/med/low) · source |
| Anything else | note | A line under `## Captures` in today's daily note |

## Rules
- If today's daily note doesn't exist, create it from `Templates/Daily.md` first.
- **Strip PII:** replace any parent or child name, email or phone with initials or "[parent]". Never store alert content.
- Tag the outcome: 01 onboarding · 02 Missouri · 03 metrics · 04 social · admin · build.
- New notes get frontmatter (`date`, `type`, `outcome`, `status: draft`).
- Reply with a single line: what you filed and where.
