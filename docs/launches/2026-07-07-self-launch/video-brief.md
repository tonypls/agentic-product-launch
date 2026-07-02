# Video Brief — Agentic Product Launch (self-launch)

> Worked example produced by the skill. Capture is the one step the agent could not run from its environment (no way to screen-record a live agent session from inside the session), so the shot list below is written for the builder to record. Optional tooling recipe: `skills/launch-project/references/video-production.md`.

## Core Moment

- The single "aha" to show: One command — `/launch-project` — turns a bare repo into a filled launch kit (readiness gaps, audience map, channel copy, launch-day plan)
- Why it matters to the viewer: They have a shipped project and no launch plan; this shows the gap closing in real time, run by a tool they already use

## Video Story

```text
Agentic Product Launch helps builders with no audience get their shipped product in front of the right communities — run by the same coding agent that built the product.
```

Current draft: "Your agent built it. Your agent can launch it."

## Script

Voiceover / on-screen text for a ~60-second master cut (≈120 words, reads at natural pace):

1. (0–5s) "You shipped it. Now what?" — over a repo with zero stars.
2. (5–15s) "This is a launch playbook your coding agent can run. One command." — type `/launch-project`.
3. (15–30s) "First it checks you're actually ready — this repo was missing a license and a description. It caught both." — readiness gaps scrolling.
4. (30–45s) "Then it maps the communities that already care, and drafts native copy for each — Show HN, Reddit, Product Hunt. No vote-begging, rules checked." — audience map and copy files filling.
5. (45–55s) "Everything lands in your repo as markdown: brief, audience map, copy, launch-day plan, reply bank." — file tree of `docs/launches/`.
6. (55–60s) "It launched itself with these files. Your turn." — repo URL card: `github.com/tonypls/agentic-product-launch`.

## Shot List

| # | Moment to capture | Screen or action | On-screen caption |
| --- | --- | --- | --- |
| 1 | The "before" | GitHub repo page, 0 stars, plain README | You shipped it. Now what? |
| 2 | The command | Terminal: Claude Code, typing `/launch-project` on a real project | One command |
| 3 | Readiness gate firing | Agent output listing real gaps (missing license, empty description) | It checks you're ready first |
| 4 | Audience map filling | `audience-map.md` populating with scored targets | Finds where your users already are |
| 5 | Channel copy appearing | `channel-copy.md` — Show HN draft visible | Drafts native copy per channel |
| 6 | The "after" | File tree of `docs/launches/2026-07-07-self-launch/` with all 7 artifacts | A full launch kit, in your repo |
| 7 | CTA | Repo URL on screen | It launched itself. Your turn. |

Capture notes: record one real, uncut skill run first (honesty baseline), then re-record individual shots at higher zoom for legibility. Terminal font ≥18pt; 1920×1080 master.

## Targets

- Master cut length (30 to 90s): 60s
- Captions burned in (assume sound off): yes

## Per-Channel Cutdowns

One row per channel this launch uses (bounded to the stack in `launch-brief.md` — no other variants).

| Channel | Length | Aspect ratio | Status |
| --- | --- | --- | --- |
| Show HN | Master 60s, hosted in README (HN is text-only; link carries it) | 16:9 | Pending capture |
| GitHub README | 15–20s silent GIF from shots 2→6 | 16:9 | Pending capture |
| Reddit/community | 30–60s, native upload | 16:9 | Pending capture |
| X/Twitter | 30–45s, hook = shot 3 (gaps caught) in first 2s | 16:9 | Pending capture |
| LinkedIn | 60s master with title card | 16:9 | Pending capture |
| Product Hunt (wave 2) | 30–60s gallery video | 16:9 | Pending capture |
| Newsletter/blog pitches | Master cut link + 1 still | 16:9 | Pending capture |

## Asset Status

- Master video: ⚠️ pending builder capture (script + shots ready above)
- GIF: pending (derive from master, shots 2→6)
- Before/action/result screenshots: pending (export frames: shot 1 / shot 3 / shot 6)
- Per-channel cutdowns: pending master

## Honesty Check

- Real product footage only: required — record an actual skill run; do not stage output the skill didn't produce
- Any time-compression disclosed: yes — a full skill run takes minutes; caption "sped up" on accelerated segments
- Real latency or failures not hidden: show the run honestly; if the agent asks a clarifying question mid-run, keep it — it demonstrates the workflow's one-question rule

## Optional

- Music or soundtrack: none needed; captions carry it
- Thumbnail: shot 6 file tree with title "Your agent can run your launch" — reuse as GitHub social preview (1280×640 crop)
