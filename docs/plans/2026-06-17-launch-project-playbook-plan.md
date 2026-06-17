# Launch Project Playbook Plan

Created: 2026-06-17

Origin: `docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md`

## Summary

Create a portable launch playbook system for creator-led indie SaaS, apps, AI products, and developer tools. The work should produce a human-readable operating manual, reusable templates, and agent-facing instructions that Claude Code, Codex, or another markdown-reading agent can follow.

This is a plan only. Implementation, installation, and live launch execution are out of scope until a later work step.

---

## Problem Frame

The brainstorm defines a launch system for creators with little or no existing following. The plan must therefore avoid generic "post on social" advice and instead organize the work around borrowed relevance: finding places where the right users already gather, preparing proof that those audiences can inspect, writing channel-native launch assets, and turning launch-day attention into follow-up momentum.

The plan also needs to preserve agent portability. Claude Code and Codex may get platform-specific adapters, but the source workflow should remain plain markdown so it can move between tools.

---

## Planning Decisions

- **Use repo-local docs as the first deliverable.** Keep the playbook and workflow in the repository first. Installing a personal Codex skill is optional follow-up, not the default.
- **Split the system into manual, workflow, adapters, and templates.** A single long document would be harder for agents and humans to reuse. The planned artifact should keep the operating manual separate from reusable agent instructions and fill-in templates.
- **Make the portable workflow the source of truth.** Claude Code and Codex adapters should point to the portable workflow instead of duplicating its instructions.
- **Summarize platform norms, then link official sources.** The playbook should give practical channel guidance while requiring current-rule verification before a real launch.
- **Treat ethics as a hard constraint.** Vote requests, fake engagement, engagement pods, undisclosed affiliation, and scrape-and-spam outreach are outside the launch system.

---

## Target Output Structure

The expected implementation can adjust filenames, but the planned shape is:

```text
README.md
PLAYBOOK.md
AGENTS.md
.claude/commands/launch-project.md
skills/launch-project/SKILL.md
skills/launch-project/references/launch-workflow.md
skills/launch-project/references/copy-templates.md
templates/launch-brief.md
templates/audience-map.md
templates/launch-log.md
templates/channel-copy.md
templates/reply-bank.md
templates/post-launch-recap.md
```

The portable workflow should live in markdown under the skill references or an equivalent neutral location. The Claude Code command and Codex skill wrapper should both reference it.

---

## Phase 1: Establish The Portable Core

Goal: define the reusable launch workflow before writing platform-specific wrappers.

Actions:

- Extract the core workflow from the brainstorm:
  - Launch readiness gate.
  - One-sentence story.
  - Proof pack.
  - Borrowed-audience map.
  - Channel-native copy.
  - Launch-day operating rhythm.
  - Post-launch compounding loop.
- Define the default launch model as "borrowed relevance" for creators with small audiences.
- Keep the workflow in plain markdown with no tool-private assumptions.
- Include an opening diagnostic that asks for the narrow target user, product URL or repo, launch goal, deadline, proof assets, and warm channels.

Checkpoint:

- A capable agent can read the portable workflow and know what to ask and what outputs to produce.

---

## Phase 2: Draft The Human Playbook

Goal: produce the manual a creator can follow without an agent.

Actions:

- Write the playbook for a solo creator or small team, not a marketing department.
- Start with the launch thesis: an unknown creator launches through borrowed relevance.
- Include the readiness gate before any public promotion.
- Include devtool-specific readiness checks:
  - README.
  - Quickstart.
  - Examples.
  - License.
  - Release notes.
  - GitHub topics and social preview.
  - Issues or Discussions when feedback is expected.
  - Tryability from a clean environment.
- Include the two-week launch timeline:
  - Day -14 to -10: positioning, readiness, and audience map.
  - Day -9 to -7: proof assets and draft copy.
  - Day -6 to -4: feedback, warm-up, and scheduling.
  - Day -3 to -1: final QA and heads-up outreach.
  - Launch day: publish, reply, log, patch, and clarify.
  - Day +1 to +14: follow-up, recap, second-wave content, and deeper user conversations.

Checkpoint:

- A creator can read the playbook and understand what to do before launch, during launch day, and after launch.

---

## Phase 3: Build The Template Set

Goal: make the playbook executable without forcing the creator to invent forms from scratch.

Templates to create:

- Launch brief:
  - Product, user, proof, readiness, channels, outreach, and success metrics.
- Audience map:
  - Channel, URL, audience, relevance, permission, relationship, proof fit, copy status, launch role, and follow-up.
- Launch log:
  - Links, metrics, comments, feedback, bugs, objections, fixes, and follow-ups.
- Channel copy:
  - Product Hunt first comment.
  - Show HN post.
  - Reddit or community post.
  - LinkedIn launch post.
  - X/Twitter launch sequence.
  - Direct outreach DM.
  - Newsletter or podcast pitch.
- Reply bank:
  - Pricing.
  - Competitors.
  - Missing features.
  - Bugs.
  - Skeptical comments.
- Post-launch recap:
  - Numbers, lessons, fixes, quotes, next wave, and follow-up list.

Checkpoint:

- A creator can fill out the templates and produce a launch brief, channel plan, launch-day log, copy set, reply bank, and recap.

---

## Phase 4: Add Channel Guidance

Goal: make the system channel-aware without pretending platform rules are timeless.

Actions:

- Product Hunt:
  - Cover listing assets, tagline, gallery, demo, maker comment, offer, reply plan, and feedback request.
  - Prohibit upvote requests.
- Hacker News:
  - Distinguish Show HN from Launch HN.
  - Use Show HN only for tryable products.
  - Favor factual, personal, builder-to-builder language.
  - Require transparent pricing or access notes.
- Reddit and communities:
  - Require reading community rules before posting.
  - Require disclosed affiliation.
  - Prefer useful context and specific feedback requests over drive-by links.
- LinkedIn:
  - Use professional problem framing, founder narrative, practical lessons, and targeted feedback asks.
- X/Twitter:
  - Use short visual posts, demo clips, build story, launch link, updates, and recap.
- GitHub and dev ecosystems:
  - Emphasize README, release notes, quickstart, examples, license, social preview, discussions or issues, and ecosystem-specific relevance.
- Direct outreach and amplifiers:
  - Use targeted relevance-based messages.
  - Avoid scraped mass DMs.

Checkpoint:

- Each channel has a distinct launch posture, copy shape, and risk note.

---

## Phase 5: Create Agent Adapters

Goal: make the workflow easy to invoke from Claude Code and Codex while keeping it portable.

Claude Code adapter:

- Add a slash command that accepts a project description, URL, repo, or launch goal.
- Point the command to the portable workflow.
- Instruct Claude Code to inspect any provided URL or repo before drafting launch assets.
- Instruct Claude Code to ask one blocking question at a time when needed.

Codex adapter:

- Add a valid skill wrapper only if a Codex skill folder is desired.
- Keep the wrapper concise.
- Point the wrapper to the same portable workflow and templates.
- Avoid Codex-only assumptions in the portable workflow itself.

Checkpoint:

- Claude Code and Codex reach the same launch workflow, even if their invocation wrappers differ.

---

## Phase 6: Validate Against The Brainstorm

Goal: prove the planned artifacts satisfy the source requirements.

Validation checks:

- The playbook starts from a creator with little or no existing social audience.
- The launch readiness gate appears before public promotion.
- The one-sentence story method is included.
- The proof pack includes demo assets, screenshots, founder note, FAQ, and devtool-specific proof.
- Borrowed-audience mapping prioritizes relevance and permission over raw audience size.
- Product Hunt, Hacker News, Reddit or similar communities, LinkedIn, X/Twitter, GitHub or dev ecosystems, direct outreach, and amplifier outreach are covered when relevant.
- Channel copy is adapted by channel.
- Current-rule awareness is present.
- Vote requests, fake engagement, undisclosed affiliation, and spam-style outreach are prohibited.
- Claude Code and Codex both use the portable source.
- Launch operations include preparation timeline, launch-day rhythm, and post-launch follow-up.
- Metrics cover reach, engagement, activation, conversion, and learning.

Checkpoint:

- Every requirement and acceptance example in the origin document is covered or explicitly deferred.

---

## Risks And Mitigations

| Risk | Mitigation |
| --- | --- |
| The playbook becomes generic marketing advice. | Anchor every section to small-audience creators, indie SaaS, apps, AI products, and devtools. |
| The workflow becomes Codex-specific. | Keep the portable markdown workflow authoritative and make adapters thin. |
| Channel guidance goes stale. | Include source links and require rule verification before real launches. |
| The templates become too heavy for solo creators. | Keep each template fillable in one sitting and make optional fields clearly optional. |
| Launch advice encourages spam by accident. | Treat permission, disclosure, and channel norms as hard constraints. |
| Devtool guidance overwhelms non-devtool SaaS. | Keep devtool checks in clearly labeled subsections. |

---

## Source Inputs To Preserve

- Product Hunt Launch Guide: https://www.producthunt.com/launch
- Product Hunt launch preparation: https://www.producthunt.com/launch/preparing-for-launch
- Show HN guidelines: https://news.ycombinator.com/showhn.html
- Launch HN advice: https://news.ycombinator.com/yli.html
- Reddit self-promotion guidance: https://www.reddit.com/r/reddit.com/wiki/selfpromotion/
- Reddit rules: https://redditinc.com/policies/reddit-rules
- GitHub releases: https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository
- GitHub social preview docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview

---

## Execution Notes For A Later Work Step

- Do not install anything globally unless the user asks for installation.
- Do not create platform wrappers until the portable workflow exists.
- Use repo-relative paths in all generated docs.
- If creating a Codex skill wrapper, validate it with the local skill validator.
- If creating a Claude Code slash command, verify that it references the portable workflow and does not duplicate large sections.
- Keep implementation commits or changes separate from this planning step.

---

## Done Criteria

- The repository contains a human playbook, portable agent workflow, platform adapters, and templates that match the planned output structure.
- A creator can fill in the launch brief and get a concrete launch schedule, copy set, audience map, and follow-up loop.
- Claude Code and Codex can both invoke the same portable workflow.
- The artifact set preserves the requirements in `docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md`.
- The playbook remains ethical, channel-aware, and practical for a creator with minimal audience.

