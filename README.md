# Skills

Skills for coding agents that keep their instruction files short and carry context between sessions.

- `context-authoring`: criteria and common mistakes for writing AGENTS.md/CLAUDE.md, skills, handoff files and prompts. The agent loads it before editing any of them.
- `reflect`: reviews the current session for user corrections and preferences and proposes changes to the instruction files.
- `handoff`: writes `handoff.md` with what the next session needs after the context is reset.
- `handoff-resume`: reads `handoff.md`, checks it against the repo and reports where the work stopped.
- `pair-task`: works on a task together with the user, aiming for an idiomatic result and explaining the practices behind it.
- `solo-task`: settles the costly design decisions with the user, then does the task alone up to the agreed finish (commits, draft PR) and leaves open questions in `handoff.md`.
- `dictated`: tells the agent that from now on the user may dictate messages by voice, so it restores misrecognized terms and replies in normal written style instead of the transcript's conversational one.

## Install

```sh
pnpm dlx skills add feytox/skills
```

Add `-s <name>` to install only some of them and `-a <agent>` to pick the agent. `reflect`, `handoff`, `handoff-resume`, `pair-task`, `solo-task` and `dictated` are meant to be called by hand as slash commands, for example `/handoff fix the login test`.
