# Launch Brief - Agentic Product Launch (the playbook launching itself)

> Worked example: these artifacts were produced by running `skills/launch-project` against this repository. Blank fill-in versions live in `templates/`.

## Product

- Name: Agentic Product Launch (repo: `tonypls/agentic-product-launch`)
- URL or repo: https://github.com/tonypls/agentic-product-launch
- Category: Open-source launch playbook + agent skill (Claude Code command, Codex-compatible skill, human playbook, fill-in templates)
- Launch date: US launch day Tue 2026-07-07 (US/global communities keep US-focused targeting). Builder is in Auckland (NZST, UTC+12) and sleeps 10 PM–7 AM, so the launch runs in a single awake block on Wed 8 Jul morning NZST (= US Tuesday afternoon/evening). Full NZST schedule in `launch-log.md`.
- Builder availability (NZST): single awake block Wed 8 Jul ~7:15 AM–1:00 PM NZST (= US Tue 3:15 PM → 9:00 PM ET). Post Show HN + Reddit live; pre-schedule the X sequence and LinkedIn. If you can't hold the morning block, drop to Show HN + GitHub only.
- Primary call to action: Star the repo, then run `/launch-project` on your own shippable project

## One-Sentence Story

Primary:

```text
Agentic Product Launch helps builders with no audience get their shipped product in front of the right communities - the same coding agent that built the product runs the launch - without hiring a marketer or improvising on launch day.
```

Repeatable core: **"A launch playbook your coding agent can run."**

Variants:

- For agentic builders, Agentic Product Launch turns "shipped but unseen" into a run launch: readiness gate, borrowed-audience map, channel-native copy, launch-day ops.
- I built it because agentic builders ship fast and often but launch nothing. This is the distribution half, runnable by the agent that built the product.
- Proof-forward: "This playbook launched itself - the launch artifacts in `docs/launches/` were produced by the skill."

## User

- Primary user: Agentic builders (Claude Code / Codex users) with a shippable indie SaaS, AI product, agent, or devtool and little or no audience
- Painful old way: Ship, tweet once into the void, get 3 visits; or improvise a Product Hunt/HN post that breaks community norms and dies
- Moment they feel the pain: The evening the project is "done" and they realize they have no idea who to show it to
- Desired outcome: Concentrated attention from people who can try, critique, star, share, or buy - without becoming a full-time marketer
- Why now: Agents made shipping cheap; distribution is the new bottleneck. The same agent can now run a rules-respecting launch process end to end.

## Product Readiness

- First-run path: Clone repo → open in Claude Code → `/launch-project <your project>` → filled launch artifacts. Codex/other agents: point the agent at `skills/launch-project/SKILL.md`.
- Time to first value: ~5 minutes to first useful artifact (launch brief with readiness gaps) ✓
- Signup/install/download/payment/contact flow checked: No signup; "install" = clone. ✓ (verify fresh-clone run before launch day)
- Analytics checked: ⚠️ GitHub Insights → Traffic only (14-day window). Log visits/clones/referrers manually into `launch-log.md` daily during launch week. Star history via star-history.com.
- Launch video (full production package in `video-brief.md`):
  - Core moment: One command turns a repo into a filled launch kit
  - Script status: Written ✓
  - Shot list status: ✓ agent-recorded 2026-07-03 (VHS + Playwright; see `video-brief.md` Capture Plan)
  - Cutdowns status: ✓ assembled 2026-07-03 - master + X cut rendered; other channels reuse the master by design
  - Launch images status (thumbnail + gallery): ✓ generated 2026-07-09 - PH thumbnail (`ph-thumbnail.png`/`.gif`) + gallery 01–05 in `video/`
- Screenshots: ✓ before/action/result stills in `video/`, pulled from the master
- Pricing or offer: Free, open source. No paid tier. ✓ (say this plainly in every post)
- Support contact: GitHub Issues ✓ (enable Discussions before launch - command below)
- Known limitations: Written into README Limitations section on this branch ✓ - English-only, markdown-agent required for automation, guidance not guarantees, platform rules drift and must be re-verified at launch time, video capture needs builder/media tools

## Devtool Readiness

- README: ✓ on this branch (retitled to match repo name, one-sentence story, quickstart, limitations, license line)
- Quickstart: ✓ added ("Run It With Your Agent")
- Examples: ✓ this directory - the playbook's own launch is the worked example
- License: ✓ MIT added on this branch (was missing - hard blocker for an "open-source" launch; HN checks this within minutes)
- Release notes: ✓ `v0.1.0` published 2026-07-03
- Package/binary/demo/playground: Repo is the artifact; demo = video + this worked example
- GitHub topics: ✓ set 2026-07-03
- Social preview: ⚠️ Not set - upload 1280×640 image in repo Settings after video capture (derive from thumbnail, Sat 2026-07-04)
- Issues or Discussions: Issues ✓ / Discussions ✓ enabled 2026-07-03

### Repo-settings commands (applied 2026-07-03; kept for reference)

```bash
gh repo edit tonypls/agentic-product-launch \
  --description "A launch playbook your coding agent can run - take a shippable AI product, agent, SaaS, or devtool from ready to launched, no audience required." \
  --enable-discussions \
  --add-topic claude-code --add-topic agent-skills --add-topic product-launch \
  --add-topic launch --add-topic marketing --add-topic ai-agents \
  --add-topic devtools --add-topic playbook --add-topic indie-hackers

# After merge, from main:
gh release create v0.1.0 --title "Agentic Product Launch v0.1.0" \
  --notes "First public release: portable launch workflow, Claude Code command, Codex-compatible skill, human playbook, fill-in templates, video production flow, and a worked example - the playbook launching itself."
```

## AI Product Readiness

- Completes a real task end to end: ✓ - this launch run is the evidence (repo in → brief, video package, audience map, copy, ops files out)
- Output consistency across runs: ✓ structure is template-anchored; wording varies by run (say so honestly)
- Demo works without hand-steering: ✓ one command, no mid-run steering required
- Disclosed failure modes: Agent may draft generic copy if the repo/README is thin; platform rules can drift; agent cannot post for you (by design - human posts, human discloses)
- Model or provider: Any markdown-reading agent; tested with Claude Code; Codex wrapper included
- Data handling and privacy: Everything local in your repo; nothing sent anywhere by the playbook itself
- Rate limits and per-action cost: One skill run ≈ one long agent session (user's own API/plan cost)
- Sample inputs/outputs or eval results: This directory is the sample output; input was the repo itself

## Proof

- Strongest demo moment: `/launch-project` on a bare repo → readiness gaps found (missing license, empty description) → filled launch kit, including this file
- Most credible technical detail: Single portable source of truth (`references/launch-workflow.md`) with thin Claude Code/Codex adapters - no duplicated workflow to drift
- Best user quote or private feedback: ⚠️ None yet - collect 3–5 private reactions in the Fri–Sat preview window (see launch-log countdown)
- Most surprising thing learned while building: The readiness gate does the most work - the playbook flagged its own missing license and empty repo description before drafting a word of copy
- FAQ or objection notes: `reply-bank.md` in this directory

## Launch Goals

- Reach target: 5,000 unique repo visits launch week; Show HN front page is stretch, not plan
- Engagement target: 30+ substantive comments/replies across HN + Reddit + X; every one answered same day
- Activation target: 100+ stars launch week; 25 people report running the skill on their own project
- Conversion target: N/A (free OSS) - proxy: 5+ issues/discussions opened by strangers
- Learning target: Which frame wins - "agent runs your launch" vs "borrowed relevance for no-audience builders"; top 3 objections logged
- Follow-up target: 10 direct conversations with agentic builders; 2 amplifier threads; 1 external contributor PR

## Channels

| Channel | URL or target | Fit | Permission/rules | Proof fit | Copy status | Launch role |
| --- | --- | --- | --- | --- | --- | --- |
| Show HN | news.ycombinator.com | Strong - tryable via skill run; frame as runnable tool, not reading material | Verified 2026-07-03: must be tryable; no fundraisers/blog posts; title starts "Show HN:" | Strong (meta-launch + worked example) | Drafted | **Primary** |
| GitHub/dev ecosystem | Release, topics, awesome-lists | Strong - repo is the product | Release/topics: allowed. Awesome-list PRs: follow each list's contribution rules | Strong | Drafted | Primary infrastructure |
| Reddit/community | r/ClaudeAI, r/SideProject, r/indiehackers, r/AI_Agents | Strong - exact users | ⚠️ Reddit rule pages unfetchable from agent env; **check each sub's rules in-app day-of**; disclose maker status always | Strong | Drafted | Community wave |
| X/Twitter | Tony's account | Medium (small following - that's the thesis) | Allowed | Medium (GIF carries it) | Drafted | Social proof loop |
| LinkedIn | Tony's profile | Medium - founder-lesson angle | Allowed | Medium | Drafted | Social - NZ/Copenhagen-timed (Wed 8:30 AM NZST), not US |
| Direct outreach | 10–20 named agentic builders (Tony's network - fill in audience-map) | Strong | DMs to real contacts only; no scraped lists | Strong | Template ready | DM/email |
| Newsletter/podcast/blog | Latent Space, IH newsletter, Claude Code YouTubers | Medium-strong | Pitch = email; their call | Strong (meta-launch story) | Drafted | Amplifier |
| Product Hunt | producthunt.com | Medium-good - free OSS dev resource | Verified 2026-07-03: no vote asks; 12:01 AM PT start (= 7:01 PM NZST - NZ-friendly); self-hunt fine | Medium-strong | Tagline + first comment drafted | **Wave 2 - Tue 2026-07-14, 7:01 PM NZST** (solo builder: don't split reply attention on day 1) |

## Open Questions

- Confirm you can hold the Wed-morning awake block (~7:15 AM–1:00 PM NZST) live for HN + Reddit replies (else trim to Show HN + GitHub only)
- Confirm MIT license choice (added; swap file if Apache-2.0 preferred)
- X/LinkedIn handles to embed in copy (placeholders `[@handle]` in channel-copy.md)
- Name 10–20 direct prospects from real network into audience-map.md rows
- Record the video per video-brief.md by Sat 2026-07-04 (only asset the agent could not produce from this environment)
