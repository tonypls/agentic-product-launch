# Channel Copy — Agentic Product Launch (self-launch)

> Worked example produced by the skill. Fill `[@handle]` placeholders before posting. Every draft: maker disclosed, no vote requests, one specific feedback ask. Re-read each community's rules in-app before posting.

## Show HN — PRIMARY, Tue 2026-07-07 morning US

### Title (74 chars)

```text
Show HN: A launch playbook your coding agent can run – it launched itself
```

### Post

```text
Hi HN, I'm Tony. I built an open-source launch playbook that runs as a coding-agent skill (Claude Code command included, Codex-compatible), for builders who ship things but have no audience.

The problem: agents made shipping cheap, so people like me ship constantly — and then the project dies with a single tweet. The distribution knowledge exists in scattered blog posts, but none of it is executable.

How it works: the workflow lives in one portable markdown file (launch-workflow.md). Platform adapters are thin wrappers that point at it, so Claude Code and Codex run the identical process. You run /launch-project on your repo and the agent walks a readiness gate (can a stranger understand it in 10 seconds? does the first-run path work? license? analytics?), writes the one-sentence story, maps communities where your users already are with permission scoring, drafts channel-native copy, and sets up launch-day ops files. Everything lands as markdown in your repo.

The dogfood test: I had it launch itself. It flagged its own repo for a missing license and an empty GitHub description before drafting any copy, then produced the audience map, this post, and the launch-day plan. The unedited artifacts are in docs/launches/2026-07-07-self-launch/ if you want to judge the output quality directly.

Opinionated part: it refuses to recommend upvote requests, undisclosed promotion, engagement pods, or scraped DM blasts. The agent drafts; a human posts and discloses. I think agent-assisted launches only stay viable if they're rule-respecting, and I'd rather encode that than pretend otherwise.

Repo: https://github.com/tonypls/agentic-product-launch (MIT, no signup, works without the agent too — the playbook and templates are plain markdown)

I'd love feedback on two things: where the readiness gate is wrong or missing checks you'd insist on, and whether the borrowed-relevance model (launch through communities that already gather around the problem) matches your experience of launching with no audience. Happy to answer anything about the design.
```

## Reddit — r/ClaudeAI (community wave, 2026-07-07 late morning)

```text
Title: I made a Claude Code skill that runs a full product launch — and had it launch its own repo

Hi all — I'm Tony, I built this. Posting because it's a Claude Code skill and this sub is exactly who it's for; I checked the rules before posting [confirm day-of].

The problem I kept seeing (and having): people here ship side projects constantly, but launching them is a separate skill nobody has time to learn. So the launch is one tweet, three visits, done.

The skill (/launch-project) walks the whole thing: readiness gate first (it caught my own repo missing a license and a GitHub description), then a one-sentence story, an audience map scored by relevance and permission, channel-native copy drafts, and launch-day ops files. All output is markdown in your repo. It's a portable workflow file at the core, so the same process runs on Codex too.

Meta part: the launch artifacts for the repo itself — including the copy for this post — were produced by the skill. They're committed in docs/launches/ so you can see real output before running anything.

Repo (MIT, free): https://github.com/tonypls/agentic-product-launch

Even if you don't use it, the launch-workflow.md file is a readable checklist of what "ready to launch" actually means — that part works with zero tooling.

Feedback I'm looking for: if you've launched a side project from a zero-follower account, what actually moved the needle that this workflow is missing? And if you run the skill, where does its output feel generic instead of specific to your project? I'll be in the comments all day.
```

## Reddit — r/SideProject variant (2026-07-07 afternoon)

```text
Title: My side project is a launch playbook for people with no audience — here's it launching itself

Hi, I'm Tony, maker of this. [Confirm sub rules day-of.]

Every project I shipped died the same way: build for weeks, launch to nobody, move on. The fix that finally worked for me wasn't "build an audience" (years) — it was borrowing audiences that already exist: the subreddits, newsletters, lists, and communities that already gather around your problem, approached by their rules.

I turned that into an open-source playbook + agent skill. If you use Claude Code or Codex, your agent literally runs it: readiness check, audience map, per-channel copy, launch-day plan. If you don't, it's all plain markdown you can follow by hand.

Proof it's not vaporware: the repo's own launch (including this post) was produced by the skill, artifacts committed in the repo.

https://github.com/tonypls/agentic-product-launch — free, MIT.

What I'd genuinely like from this sub: tell me the last place you launched something as an unknown and what happened. I'm collecting failure patterns for the playbook's anti-patterns section and will credit contributors.
```

## X/Twitter — launch sequence (Tue 2026-07-07, spaced ~90 min)

```text
Post 1 (08:00 PT, with GIF):
You shipped it. Nobody saw it.

I built an open-source launch playbook your coding agent can run — /launch-project takes a repo from "done" to launched: readiness gate, audience map, channel copy, launch-day plan.

It launched itself. Artifacts in the repo:
github.com/tonypls/agentic-product-launch

Post 2 (~09:30 PT, screenshot of readiness-gap output):
The part that surprised me: the readiness gate.

Before writing any copy, it audits the repo like a stranger would. It caught its own repo missing a LICENSE and a GitHub description.

Most launches fail before the first post. That's the point.

Post 3 (~11:00 PT, screenshot of audience-map.md):
No audience? Borrow one.

The playbook's whole model: find communities that already gather around your problem, score them by relevance AND permission, show up with proof by their rules.

No vote-begging. No DM blasts. It refuses to draft those.

Post 4 (~13:00 PT, link to Show HN thread):
It's on Show HN today — come tell me where the readiness checklist is wrong: [HN link]

Post 5 (end of day, recap):
Launch day, run by the playbook that was launching: [top metric], [best question asked], [what I'm fixing tomorrow].

The playbook says publish a recap within 48h. Practicing what it preaches.
```

## LinkedIn (Tue 2026-07-07, ~10:00 PT)

```text
I launched something unusual today: a launch playbook that launched itself.

Agentic coding tools made shipping cheap. I watch builders (myself included) ship in a weekend what used to take a quarter — and then get zero users, because distribution is still a specialist skill nobody budgeted for.

So I built the distribution half as code: an open-source playbook that runs as a skill inside Claude Code or Codex. Your agent checks the product is actually launch-ready, finds the communities where your users already are, drafts copy that respects each platform's rules, and sets up your launch-day operations.

What it does today:
- Readiness gate before any promotion (it caught its own repo's missing license)
- Audience map scored by relevance and permission — no spam, no vote requests, maker always disclosed
- Channel-native drafts for Show HN, Reddit, Product Hunt, and direct outreach
- Launch-day schedule, reply bank, and post-launch recap

What I learned building it: the highest-leverage launch work happens before the launch post — the readiness gate and the audience map do more than any clever copy.

It's free and MIT-licensed. The repo's own launch artifacts are committed in the repo, produced by the skill — inspect before you trust it.

If you're a builder sitting on something shipped-but-unseen, I'd value your feedback on the readiness checklist: what would you add?

https://github.com/tonypls/agentic-product-launch
```

## GitHub Release Notes — v0.1.0 (publish after merge, before Show HN)

```text
# Agentic Product Launch v0.1.0

First public release. A launch playbook your coding agent can run.

## What's inside

- **Portable workflow** (`skills/launch-project/references/launch-workflow.md`) — the single source of truth: readiness gate, one-sentence story, proof pack, launch video flow, borrowed-audience mapping, channel selection, channel-native copy, launch-day ops, post-launch compounding.
- **Claude Code command** (`.claude/commands/launch-project.md`) and **Codex-compatible skill** (`skills/launch-project/SKILL.md`) — thin adapters over the same workflow.
- **Human playbook** (`PLAYBOOK.md`) — the full operating manual, no agent required.
- **Fill-in templates** (`templates/`) — launch brief, video brief, audience map, channel copy, launch log, reply bank, post-launch recap.
- **Worked example** (`docs/launches/2026-07-07-self-launch/`) — this repo's own launch, produced by running the skill on itself.

## Honest limits

- Guidance, not guarantees; platform rules drift — the workflow tells you to re-verify official rules at launch time.
- Video capture requires a builder or an agent with media tools; the skill always produces the production package (script, shot list, cutdown specs).
- The skill drafts; a human posts. It will not automate posting, and it refuses vote-request and spam patterns by design.

MIT. Feedback via Issues; repeated questions become playbook updates.
```

## Product Hunt — WAVE 2, Tue 2026-07-14, 12:01 AM PT

### Tagline (46 chars)

```text
The launch playbook your coding agent can run
```

### Description

```text
Agentic Product Launch helps builders with no audience take a shipped AI product, agent, SaaS, or devtool from ready to launched. Your coding agent runs it: readiness gate, borrowed-audience map, channel-native copy, launch-day ops. Open source, MIT, plain markdown — works by hand too.
```

### First Comment

```text
Hey Product Hunt,

I'm Tony, the maker. Agentic Product Launch is an open-source playbook that runs as a coding-agent skill (Claude Code, Codex) and takes a project from "shipped" to "launched in front of the right people" — built for builders with no existing audience.

I built it because agents made shipping easy and launching stayed hard. The current version:

- Audits launch readiness before any promotion (it flagged its own repo's missing license)
- Maps communities where your users already gather, scored by relevance and permission
- Drafts channel-native copy — and refuses vote-request/spam patterns by design
- Sets up launch-day schedule, reply bank, and post-launch recap

It's best for indie builders shipping with AI tools. It's probably not right for teams with a marketing function or products whose users aren't reachable through communities.

Proof: it launched itself last week — Show HN thread, artifacts committed in the repo, and I published the recap [link]. This PH launch is wave two, following its own second-wave playbook.

I'd especially love feedback on the readiness checklist: what would you require before letting a friend launch? If you run the skill on your project, tell me where the output feels generic — that's the failure mode I'm hunting.

Thanks for taking a look.
```

## Direct Outreach DM (named contacts only — fill from audience-map)

```text
Hey [name] — saw you shipped [their project] recently. That's exactly the situation I built this for.

I just open-sourced a launch playbook that runs as a Claude Code/Codex skill: /launch-project on your repo → readiness gaps, audience map, channel copy, launch-day plan. It launched its own repo last week (artifacts are committed in it, unedited).

No pressure at all — but if [their project] is still looking for its first users, I'd genuinely value hearing where the skill's output feels generic vs. useful on a real project that isn't mine: https://github.com/tonypls/agentic-product-launch
```

## Newsletter / Podcast Pitch (Latent Space, IH newsletter, Claude Code YouTubers)

```text
Subject: A launch playbook that launched itself (agent-runnable, open source)

Hi [name],

Your coverage of [specific piece — e.g., agentic coding workflows] is why I think this fits your audience: the bottleneck for agentic builders has moved from shipping to distribution, and almost nobody covers that half.

I open-sourced a launch playbook that runs as a coding-agent skill (Claude Code + Codex). The angle that might interest [audience]: I dogfooded it by having it launch its own repo — readiness audit, audience mapping, channel copy, launch-day ops — and committed the unedited artifacts. It caught its own missing license before drafting a word of promotion. The Show HN thread and a transparent recap with real numbers are public.

It's not just an announcement: the piece your audience would learn from is "what happens when an agent runs a rules-respecting launch end to end" — including where the output was generic and a human had to take over.

Repo + artifacts: https://github.com/tonypls/agentic-product-launch
Recap with numbers: [link after 2026-07-09]

Happy to send a founder note, the before/after metrics, or do a guided run on any repo you pick — live, unedited.
```

## awesome-list PR description (per-list, follow each list's CONTRIBUTING.md)

```text
Add Agentic Product Launch — an MIT-licensed launch playbook that runs as a /launch-project skill: readiness gate, audience mapping, channel-native launch copy, and launch-day ops for builders shipping with agents. Includes a committed worked example (the repo launching itself).
```
