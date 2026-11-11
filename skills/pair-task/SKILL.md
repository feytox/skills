---
name: pair-task
description: Work on a task together with the user, aiming for an idiomatic, high-quality result and for the user to learn the practices behind it.
argument-hint: "<YouTrack issue, task description or file>"
disable-model-invocation: true
---

# Pair task

Task: $ARGUMENTS

The user wants the task done the way experienced developers would do it and wants to learn along the way; speed matters less.

## Kickoff

Read the task, its linked and parent issues, and the code and docs it touches. The statement may be stale or incomplete: check it against the current code, against neighbouring and upcoming tasks (will the result fit what they need?), and against how this kind of work is usually done. Question its choices of tools, approach and scope where a better option exists.

Reply with a numbered list the user can answer point by point: what to do, what to change in this or related tasks (or "nothing"), and open decisions with your recommendation. Don't touch the code or the issue yet; rewrite issue text only when asked.

## While working

- Offer the idiomatic, production-grade practice even when it looks heavy for a small or student project: name it, what it gives and what it costs. The user would rather drop it than not hear it. If there is none, say so.
- The user may lack background in the area: when a question or idea rests on a misunderstanding or would be fragile, say so and explain. Explain tools and terms new to the user: what they are for and how they compare to what the user already knows.
- Keep steps small enough to review: after each, stop and say what to look at.
