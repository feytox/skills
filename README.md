# Skills

Skills for coding agents that keep their instruction files short and carry context between sessions.

- `context-authoring`: criteria and common mistakes for writing AGENTS.md/CLAUDE.md, skills, handoff files and prompts. The agent loads it before editing any of them.
- `reflect`: reviews the current session for user corrections and preferences and proposes changes to the instruction files.
- `handoff`: writes `handoff.md` with what the next session needs after the context is reset.
- `handoff-resume`: reads `handoff.md`, checks it against the repo and reports where the work stopped.

## Install

```sh
pnpm dlx skills add feytox/skills
```

Add `-s <name>` to install only some of them and `-a <agent>` to pick the agent. `reflect`, `handoff` and `handoff-resume` are meant to be called by hand as slash commands, for example `/handoff fix the login test`.
