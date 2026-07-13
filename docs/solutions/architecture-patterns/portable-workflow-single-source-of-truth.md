---
title: Keep agent behavior in the portable workflow, not in platform adapters
date: 2026-06-17
category: architecture-patterns
module: launch-project skill
problem_type: architecture_pattern
component: documentation
severity: medium
applies_when:
  - Authoring a markdown workflow meant to run across Claude Code, Codex, and other agents
  - A portable workflow is declared the single source of truth with thin platform wrappers
  - Adding or moving behavior between a portable workflow and a platform-specific adapter
tags: [agent-portability, single-source-of-truth, skill-authoring, adapters, cross-agent-parity, codex, claude-code]
---

# Keep agent behavior in the portable workflow, not in platform adapters

## Context

The launch-project skill is designed so that `skills/launch-project/references/launch-workflow.md` is the single portable source of truth, and the platform wrappers (the Claude Code command `.claude/commands/launch-project.md` and the Codex `agents/openai.yaml`) stay thin and reference it instead of duplicating it. `AGENTS.md` states this explicitly: "Platform-specific wrappers should reference it, not duplicate it."

A code review found three operationally important behaviors had drifted into the Claude Code command only, with no equivalent in the portable workflow:

1. Inspect a provided URL/repo before drafting launch assets.
2. The output template filenames (`templates/*.md`) agents should write into.
3. The "ask one question only when the missing answer would change the launch plan" qualifier.

Because the Codex wrapper (and any other markdown-reading agent) reaches behavior through the portable workflow, those agents silently lost grounding, wrote outputs to undefined locations, and asked more blocking questions than necessary - even though the workflow was nominally the "source of truth."

## Guidance

When a portable workflow is the declared source of truth, **any behavior an agent must perform belongs in the portable workflow itself**, not in a platform adapter. An adapter should carry only what is genuinely platform-specific (invocation syntax, argument plumbing like `$ARGUMENTS`, display metadata) - never workflow behavior.

A useful test for each line in an adapter: *if a different agent reached this workflow without this adapter, would it still do the right thing?* If the answer is no, the line describes behavior and must move into (or be mirrored from) the portable workflow.

Concrete behaviors that are easy to misplace in an adapter but belong in the portable workflow:

- Grounding steps ("inspect the URL/repo before drafting").
- Output contracts (which files to write, expected output shapes).
- Interaction rules (when to ask blocking questions, how many).

## Why This Matters

A "single source of truth" that does not actually contain the behavior is worse than no claim at all: it gives false confidence that every agent reaches parity, while non-canonical agents quietly degrade. The failure is silent - there is no error, just thinner output from Codex than from Claude Code. Portability is only real when the portable file is behaviorally complete; adapters that accrete behavior erode it one convenient edit at a time.

## When to Apply

- Before adding an instruction to a platform wrapper - check whether it is behavior (goes in the workflow) or plumbing (stays in the wrapper).
- When reviewing a multi-adapter skill - diff each adapter against the portable workflow and treat any behavior present in one adapter but absent from the workflow as a parity defect.

## Examples

Behavior that had leaked into the Claude-only command, now relocated into the portable workflow:

```markdown
## Start With The Smallest Useful Question

If a project URL, repo, demo, or landing page is provided, inspect it before
drafting any launch assets. Ground the one-sentence story, readiness gaps, and
proof pack in what the product actually does.

If context is missing, ask one question at a time, and only when the missing
answer would change the launch plan. Start with:
```

Output contract moved into the workflow so every agent writes to the shared files:

```markdown
## Expected Outputs

Produce the outputs that fit the user's request. When writing to files, use the
shared template files so humans and agents work in the same place:

- Launch brief and readiness gaps -> `templates/launch-brief.md`.
- Audience map and channel plan -> `templates/audience-map.md`.
- ...
```

The Claude command keeps only platform plumbing (`argument-hint`, `$ARGUMENTS` interpolation) and a pointer to the workflow.

## Related

- PR #1 - "fix(review): close cross-agent parity gaps in portable launch workflow"
- `AGENTS.md` - declares `launch-workflow.md` the source of truth and the no-duplication rule for wrappers
- Open follow-up: channel-copy bodies are duplicated between `references/copy-templates.md` and `templates/channel-copy.md`, and `PLAYBOOK.md` mirrors the workflow - both are drift risks tracked separately from this parity fix
