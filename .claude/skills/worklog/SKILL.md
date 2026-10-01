---
name: worklog
description: Draft a row for an outcome page's "Work and feedback log" table in Notion (date/task, work link and result, help/AI used, feedback and revision, next action). Use when the user runs /worklog or finishes a meaningful piece of work.
argument-hint: "<01|02|03|04> [what was done]"
---

# /worklog

Each Notion outcome page has a log: *"Add a row after meaningful work. Preserve earlier entries so progression remains visible."*

| Date / task | Work link and result | Help / AI used | Feedback and revision | Next action |

## Steps
1. The outcome is the first word of `$ARGUMENTS` (01–04). If it's missing, infer it from context or ask.
2. Gather the work from `$ARGUMENTS`, today's daily note, and related drafts.
3. **Help / AI used:** be specific and honest, e.g. "Claude drafted the first version of the audit structure; findings and edits are mine." Transparency is a scored competency.
4. **Work link and result:** a link or file name plus the concrete result. Distinguish submitted from verified.
5. Append the row to `Agents/drafts/worklog-<outcome>.md` (create it with a header row if missing), newest at the bottom.
6. Reply with the row as a Markdown table line, ready to paste into Notion.
