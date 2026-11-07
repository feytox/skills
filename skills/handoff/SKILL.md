---
name: handoff
description: Write handoff.md with the context from this session that the next session will need after the context is reset.
argument-hint: "[next task]"
disable-model-invocation: true
---

# Handoff

Write `handoff.md` for the next session, which starts with a fresh context: it will have only the project files (including AGENTS.md/CLAUDE.md/GEMINI.md, skills) and this handoff.

Next task (may be empty): $ARGUMENTS

If a next task is given, select information for it; otherwise assume the natural continuation of the current work.

Include only what is either not in the files (decisions and why, agreements with the user, rejected options, verified findings, pitfalls, external facts, state outside the repo) or cheaper to state than to rediscover (a short map of the relevant files, key commands). Plus the status: done, unverified, next step. For every item ask: without it, would the next session waste time or make a mistake? Shorter is better.

Leave out:
- what the repo, git or `gh` shows fresh: file contents, git and PR state, review comments (say where to fetch them instead);
- session chronology, closed lines of work, service steps (reflect ran, what was pushed);
- a one-off user action recorded as a convention;
- descriptions of skills and general knowledge.

Put the file in the task folder if the work had one, otherwise in the project root. If `handoff.md` already exists, don't trust it: rewrite it from scratch under the same criteria.

Write in the user's language. Mark what is verified versus assumed, and date the status (yy-mm-dd). Do not commit it. Tell the user where the file is.
