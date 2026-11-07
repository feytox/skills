---
name: handoff-resume
description: Restore the previous session's context from handoff.md and report where the work stopped.
argument-hint: "[path to handoff.md or task]"
disable-model-invocation: true
---

# Handoff resume

Restore context from a `handoff.md` left by a previous session.

Arguments (may be empty): $ARGUMENTS

Use the path from the arguments if given; otherwise find `handoff.md` in the current folder or the project (if several, take the most recent; if unclear, ask). If none exists, say so and stop.

Read it and check it against reality: it may be stale or wrong, so verify the files it mentions and look at git since its date. Check against local files and git; fetch PR, CI or cloud state only when the user asked to continue the work, not when they asked only to read. Then read only what the next step needs, not the whole repo. The current state of the files and the user's new requests override the handoff.

Report in a few lines: task, status, next step, mismatches found. If the arguments name a task, start on it; otherwise end with the report, without asking whether to continue (a question like "where did we stop?" is not a task).
