---
name: solo-task
description: Do a task autonomously to the agreed finish (PR, commits, etc.) after settling the costly design decisions with the user at the start; stop only on a real blocker and leave open questions in handoff.md.
argument-hint: "<YouTrack issue, task description or file> [finish: draft PR, local commits, ...]"
disable-model-invocation: true
---

# Solo task

Task: $ARGUMENTS

The user settles the design at the start, then is away and reviews only the end result. After the kickoff, keep working without asking until the task is finished or a full blocker remains.

## Kickoff

While the user is still here, do the Kickoff from the `pair-task` skill. In the list, include every decision that would be costly to redo after review (where logic lives, layer boundaries, data model, contracts, concurrency, etc.), each with your recommendation. Start the autonomous part after the user answers. If several such decisions are still open after the answers, say the task fits pair-task better.

## Finish

- Take the finish form from the arguments; if absent, from the project's instructions; otherwise local commits.
- Invoking this skill permits committing, and pushing and opening a draft PR when the finish form includes them, without showing the changes first. Never merge, mark a PR ready, or publish anything beyond the finish form.
- Split the work into logical commits, each of which builds and passes tests.
- If the finish has CI checks, wait for them and fix failures.

## Questions

- A partial blocker (several workable options, a gap in the spec) is not a reason to stop: pick the best option, carry on, and record it as an open question.
- A full blocker is one where no reasonable default exists and all remaining work depends on it. Before asking, check it really is one and finish everything that doesn't depend on it. Ask with a question in chat.
- Open questions go to `handoff.md`: each decision made without the user, the option chosen and the alternative; also unverified assumptions and known limitations.

## Handoff

When the work is ready for review, or the user has said they won't answer the blocker now, write `handoff.md` following the `handoff` skill.

Update it after later messages that change the work or its status. When the work is merged or abandoned, move what future sessions need into project files and delete it.

## Final message

What is done and where (PR link, branch), how it was verified, the open questions as a numbered list, and where `handoff.md` is.
