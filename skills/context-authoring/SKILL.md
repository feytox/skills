---
name: context-authoring
description: Criteria, placement rules and common mistakes for writing agent context files - AGENTS.md/CLAUDE.md/GEMINI.md, SKILL.md, handoff.md, auto memory, prompts. Use before creating or editing any of them, including when another skill (reflect, handoff) produces one.
---

# Writing context files

Readers are frontier models that know common tools and practices and see the harness system prompt. They follow instructions literally, so every extra line is extra work in every session that loads it.

## What earns a line

- Without it a future session errs or wastes time.
- It isn't readable from the repo, git, `gh`, or default model and harness behavior.
- It's needed in most sessions that load the file; otherwise it goes to a skill or a doc, or nowhere.
- It's true now: verify paths, commands, versions.
- It still says something with the nouns of the case that prompted it removed (that tool, file type, topic): word it for the class of tasks. If nothing useful is left, it was a one-off.

Existing text is not a style reference: it is often model-written and unvetted, so existing lines face the same test. Context and reasons only the author knows stay; judge a line by fit, not by length. An empty file is a valid result.

## Common mistakes

- Facts the model knows anyway or the repo shows (structure, Makefile commands, git and PR state).
- Scenario-specific rules in an always-loaded file.
- A one-off decision written as a standing rule.
- The history behind a rule ("last time you did X") instead of the rule and a short reason.
- The same rule in two files.
- A line extended clause by clause until it holds several rules: one rule per line, and rewrite a line rather than append to it.
- A closed list where the set is open: the model treats it as exhaustive. Name the class, or end with "etc.".
- Abstract rules ("be concise", "sound human"): name the concrete pattern instead.
- Caps and MUST, which cause overtriggering; asking for what the model does anyway ("double-check", "think carefully").
- Prohibitions against failures the model wasn't making: they can anchor it toward them. Keep a "don't" only for a failure that happens; otherwise state the intended behavior.
- A single example: the model copies its length and shape. Give several varied examples or none.
- Numbered steps for judgment work: number only steps whose order matters; for the rest give the goal, constraints and how to check the result.
- Hard-wrapped lines, shorthand only the author can decode.

## Placement

- Most sessions in a project: root AGENTS.md.
- A recurring workflow or a kind of task: skill. Its description says what it does and when to use it, in one or two sentences.
- Rules for one area of the code: a line in the root file; a nested AGENTS.md in that folder only once the area is large and the root file grows.
- Large or occasional reference: a doc plus a pointer with a trigger ("Before changing X, read docs/x.md").
- All projects: the global rules file, never project facts.
- A stable rule in auto memory: move it into the project or global file.
- `handoff.md` lives only while one piece of work continues. When the work is finished, don't update it: move what future sessions need into the files above, then delete it.

Reuse existing files over creating new ones.

## Format and delivery

- Before any edit, including a one-line addition, read the whole file against these criteria. New lines follow them even where the lines around them don't. If a sizable part fails or the file has grown by patches, make the requested edit and say so in the reply: what fails, in how many lines, and an offer of a full rewrite; the rewrite itself waits for the user's ok.
- Skills and prompts in English; files the user maintains by hand keep their language. Terse lines, one default instead of a menu of options.
- Unless the user asked for a specific edit, propose first: a numbered list (file, exact text, reason in a few words); the user reviews every change and often accepts only some.
- Before showing a draft, go through it line by line against "What earns a line" and "Common mistakes" and cut what fails; the user should not have to ask for this pass.
- A draft of a whole file goes into a separate file named so the harness won't load it.
