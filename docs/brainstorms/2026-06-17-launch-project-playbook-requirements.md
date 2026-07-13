---
date: 2026-06-17
topic: launch-project-playbook
---

# Launch Project Playbook Requirements

## Summary

Create a reusable launch playbook and agent workflow for agentic builders and anyone shipping products with AI - indie SaaS, apps, AI products, AI agents, and developer tools. The system should help a builder with little or no existing following move from "shippable" to a coordinated launch in front of relevant audiences.

---

## Problem Frame

Builders without an audience cannot rely on their own Twitter, LinkedIn, or newsletter reach. Their launch system needs to find borrowed audiences, adapt to each channel's norms, and turn short-lived attention into follow-up conversations, users, feedback, and future distribution.

The desired outcome is not a generic marketing checklist. It is a practical operating system that an agent or human can run before, during, and after launch.

---

## Key Decisions

- **Optimize for AI products, agents, and devtools first.** The playbook should prioritize AI products, AI agents, software tools, micro-SaaS, apps, open-source projects, SDKs, CLIs, APIs, plugins, and developer-facing launches.
- **Make it portable across agents.** The workflow should work for Claude Code, Codex, and other markdown-reading agents. It should not assume a Codex-only skill format as the only interface.
- **Use borrowed relevance as the core launch model.** Since the builder has little audience, the playbook should focus on communities, directories, newsletters, Hacker News, Product Hunt, GitHub, Reddit, direct outreach, and ecosystem-specific channels.
- **Separate strategy from execution.** The brainstorm defines what the playbook must accomplish. The plan should define how to create it. Implementation belongs to a later work step.
- **Respect channel norms.** The playbook must discourage upvote requests, engagement pods, fake comments, undisclosed affiliation, self-promotion spam, and copy-pasted announcements.

---

## Actors

- A1. **Builder.** The person launching the project - often an agentic builder shipping with AI - with little public following and limited launch experience.
- A2. **Launch assistant.** A human or AI agent helping turn product context into launch assets, schedules, and channel-native copy.
- A3. **Borrowed audience.** Communities, platforms, creators, maintainers, and direct prospects who already gather around the target user's problem.
- A4. **Early users and commenters.** People who try the product, ask questions, report bugs, challenge positioning, or become prospects.

---

## Key Flows

- F1. **Prepare the product for attention.**
  - **Trigger:** The builder believes the project is shippable.
  - **Steps:** Check launch readiness, fix the first-run path, clarify the one-sentence story, and assemble proof assets.
  - **Outcome:** The project can absorb traffic, feedback, and scrutiny.

- F2. **Map borrowed audiences.**
  - **Trigger:** The launch story and proof assets are clear enough to evaluate fit.
  - **Steps:** Identify relevant communities, platforms, newsletters, creators, direct prospects, and ecosystem surfaces. Score each by relevance, permission, proof fit, and relationship.
  - **Outcome:** The launch targets channels where the right users already gather.

- F3. **Create channel-native assets.**
  - **Trigger:** The audience map identifies launch surfaces.
  - **Steps:** Adapt the core story into Product Hunt, Show HN, Reddit/community, LinkedIn, X/Twitter, GitHub, email, and DM variants as relevant.
  - **Outcome:** Each launch asset matches the channel's norms and expected proof.

- F4. **Run launch day as a hosted conversation.**
  - **Trigger:** The launch goes live.
  - **Steps:** Publish in waves, answer comments, log feedback, patch obvious blockers, and update confusing copy.
  - **Outcome:** Attention becomes learning, relationships, trials, installs, signups, or sales opportunities.

- F5. **Compound after launch.**
  - **Trigger:** The first launch wave has produced metrics, objections, bugs, quotes, or leads.
  - **Steps:** Follow up, ship fixes, write a recap, create second-wave content, and pitch niche amplifiers.
  - **Outcome:** The launch creates momentum beyond launch day.

---

## Requirements

**Playbook structure**

- R1. The playbook must start from a builder with little or no existing social audience.
- R2. The playbook must define a launch readiness gate before recommending public promotion.
- R3. The playbook must include a method for turning product context into a narrow, repeatable one-sentence story.
- R4. The playbook must define the proof pack needed before launch, including demo assets, screenshots, founder note, FAQ, and devtool-specific proof where relevant.
- R5. The playbook must include a borrowed-audience mapping process that prioritizes relevance and permission over raw audience size.

**Channel strategy**

- R6. The playbook must cover Product Hunt, Hacker News, Reddit or similar communities, LinkedIn, X/Twitter, GitHub or dev ecosystems, direct outreach, and amplifier outreach when relevant.
- R7. The playbook must explain how launch copy should change by channel rather than providing one generic announcement.
- R8. The playbook must include current-rule awareness for platforms whose norms affect launch behavior.
- R9. The playbook must explicitly prohibit vote requests, fake engagement, undisclosed affiliation, and spam-style outreach.

**Agent portability**

- R10. The agent-facing workflow must be usable by Claude Code and Codex without depending on one platform's private tool names.
- R11. The workflow must support a plain markdown skill or instruction file as the portable source of truth.
- R12. The workflow should optionally expose platform-specific entry points, such as a Claude Code slash command or a Codex skill wrapper, only as adapters around the portable source.

**Launch operations**

- R13. The playbook must provide a two-week preparation timeline, launch-day operating rhythm, and post-launch follow-up loop.
- R14. The playbook must include templates for launch brief, launch log, channel copy, direct outreach, reply bank, and post-launch recap.
- R15. The playbook must define success metrics across reach, engagement, activation, conversion, and learning.

---

## Acceptance Examples

- AE1. **Covers R1, R5.** Given a builder with 200 followers and no email list, when they use the playbook, then the recommended path starts with relevant communities, direct prospects, dev ecosystems, Product Hunt, Show HN, and amplifiers rather than posting harder to their own audience.
- AE2. **Covers R6, R7, R9.** Given a project that fits Product Hunt, Show HN, and Reddit, when launch copy is drafted, then each channel receives different copy and none of the copy asks for votes or hides the builder's affiliation.
- AE3. **Covers R10, R11, R12.** Given a Claude Code user and a Codex user, when each invokes the launch workflow, then both agents follow the same portable markdown guidance even if their command wrappers differ.
- AE4. **Covers R13, R15.** Given a launch that receives comments but few conversions, when the builder completes the post-launch loop, then the system captures objections, activation issues, follow-ups, and second-wave content rather than treating the launch as finished.

---

## Success Criteria

- A human can read the playbook and know what to do before launch, on launch day, and after launch.
- An agent can use the same guidance to create a launch brief, channel plan, copy drafts, outreach list, launch schedule, and follow-up plan.
- The system is specific enough for indie SaaS and devtools without excluding adjacent app and AI product launches.
- The guidance is ethical, channel-aware, and practical for a builder with minimal audience.
- Platform-specific guidance is either sourced from official/current docs or framed as a rule to verify before launch.

---

## Scope Boundaries

In scope:

- Human playbook requirements.
- Portable agent workflow requirements.
- Claude Code and Codex compatibility requirements.
- Launch planning, copy, outreach, channel strategy, launch-day operations, and post-launch follow-up.

Deferred for later:

- Actually writing or installing the skill files.
- Building automations, scripts, or dashboards.
- Creating a full web app for launch management.
- Running a live launch for a specific product.

Outside this product's identity:

- Growth hacking based on vote manipulation, fake engagement, scrape-and-spam outreach, or undisclosed promotion.
- A generic marketing textbook that is not grounded in builder-led AI product, SaaS, and devtool launches.
- A Codex-only workflow that cannot transfer to Claude Code.

---

## Dependencies And Assumptions

- The builder has a shippable product or can fix launch-blocking readiness gaps before public launch.
- The builder can spend meaningful time replying on launch day.
- The builder is willing to adapt copy to each community rather than broadcasting identical announcements.
- Current platform rules should be checked before finalizing channel-specific instructions.

---

## Sources And Research

- Product Hunt Launch Guide: https://www.producthunt.com/launch
- Product Hunt launch preparation: https://www.producthunt.com/launch/preparing-for-launch
- Show HN guidelines: https://news.ycombinator.com/showhn.html
- Launch HN advice: https://news.ycombinator.com/yli.html
- Reddit self-promotion guidance: https://www.reddit.com/r/reddit.com/wiki/selfpromotion/
- Reddit rules: https://redditinc.com/policies/reddit-rules
- GitHub releases: https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository
- GitHub social preview docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview

