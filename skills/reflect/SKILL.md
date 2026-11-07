---
name: reflect
description: Review this session for signals worth keeping and propose changes to the agent instruction files (project AGENTS.md/CLAUDE.md/GEMINI.md, global rules, skills, auto memory).
argument-hint: "[focus]"
disable-model-invocation: true
---

# Reflect

Goal: the best version of the instruction files, not additions to them.

Focus (may be empty): $ARGUMENTS

1. Load the `context-authoring` skill. Its criteria, mistake list and placement rules apply to every proposal.
2. Read the files that apply here: project AGENTS.md/CLAUDE.md/GEMINI.md incl. nested ones, rules folders (`.claude/rules/`, `.agents/rules/`), project skills, docs they point to, auto memory if the agent has one, global rules.
3. Collect signals from this session: user corrections, stated preferences, things the user had to repeat or prevent in advance ("don't change anything yet"), wrong assumptions, facts found by trial and error. Keep the quote or event for each. Drop what the user said about this task only and what the model already got right without a rule.
4. For each signal, find the root behavior and check whether an existing line already covers it. If it does and was ignored, the fix is a sharper wording of that line, not a second one.
5. Check existing lines against the repo and the current harness system prompt (still true, not readable from code, not duplicated), not against this one session.
6. Propose a numbered list: file, exact change, the signal or reason in a few words. For a file that needs an overhaul, give the full rewritten file plus each removed or moved line with destination and reason. If nothing is worth changing, say so.

Change nothing until the user approves; apply only the approved items.
