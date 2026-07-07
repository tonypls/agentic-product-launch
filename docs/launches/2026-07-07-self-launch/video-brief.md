# Video Brief — Agentic Product Launch (self-launch)

> Worked example produced by the skill. Originally written for builder capture (the agent had no media tools at the time); on 2026-07-03 the builder opted in to agent-recorded capture and the agent recorded it with VHS + Playwright + ffmpeg — see the Capture Plan below. Optional tooling recipe: `skills/launch-project/references/video-production.md`; runbook: `skills/launch-project/references/agent-recording.md`.

## Core Moment

- The single "aha" to show: One command — `/launch-project` — turns a bare repo into a filled launch kit (readiness gaps, audience map, channel copy, launch-day plan)
- Why it matters to the viewer: They have a shipped project and no launch plan; this shows the gap closing in real time, run by a tool they already use

## Video Story

```text
Agentic Product Launch helps builders with no audience get their shipped product in front of the right communities — run by the same coding agent that built the product.
```

Current draft: "Your agent built it. Your agent can launch it."

## Script

Voiceover / on-screen text for a ~60-second master cut. Rewritten 2026-07-03 for the ear, not the eye: spoken rhythm, contractions, full channel names (say "Hacker News", never "HN"), one narrative arc — pain, turn, proof, payoff, invitation.

1. (0–6s) "You've shipped an awesome new product. And? … Nothing. Zero stars or users." — over the repo at zero stars; wry, sympathetic.
2. (6–19s) "Here's the fix — a launch playbook your coding agent runs for you. Watch as the agent is planning its own launch." — typing `/launch-project`, then the live run.
3. (19–29s) "It starts by checking you're launch ready. In this repo there's no license, no description. Agentic Product Launch caught both before launch day." — readiness gaps in the launch brief.
4. (29–43s) "Then it finds the people who'd actually care, and writes something that fits each place. Hacker News gets the technical story. Reddit gets context. Product Hunt gets the pitch. And no begging for upvotes — it plays by the rules." — audience map, then Show HN draft.
5. (44–52s) "All of it lands in your repo as plain markdown — the brief, the copy, the whole launch-day plan." — file list of `docs/launches/`.
6. (52–58s) "This playbook launched itself. Ship yours now." — CTA card with repo URL; quiet confidence, not hype.

## Shot List

| #   | Moment to capture      | Screen or action                                                          | On-screen caption                  |
| --- | ---------------------- | ------------------------------------------------------------------------- | ---------------------------------- |
| 1   | The "before"           | GitHub repo page, 0 stars, plain README                                   | You shipped it. Now what?          |
| 2   | The command            | Terminal: Claude Code, typing `/launch-project` on a real project         | One command                        |
| 3   | Readiness gate firing  | Agent output listing real gaps (missing license, empty description)       | It checks you're ready first       |
| 4   | Audience map filling   | `audience-map.md` populating with scored targets                          | Finds where your users already are |
| 5   | Channel copy appearing | `channel-copy.md` — Show HN draft visible                                 | Drafts native copy per channel     |
| 6   | The "after"            | File tree of `docs/launches/2026-07-07-self-launch/` with all 7 artifacts | A full launch kit, in your repo    |
| 7   | CTA                    | Repo URL on screen                                                        | Launching Made Easy 🚀 Your turn.  |

Capture notes: record one real, uncut skill run first (honesty baseline), then re-record individual shots at higher zoom for legibility. Terminal font ≥18pt; 1920×1080 master.

## Targets

- Master cut length (30 to 90s): 60s
- Captions burned in (assume sound off): yes

## Capture Plan

- Capture mode: agent-recorded (builder opted in 2026-07-03)
- Capture tool(s): VHS (terminal shots), Playwright headed `recordVideo` (browser shots), ffmpeg (assembly)

### Capture Preflight (agent-recorded only)

Preflight run 2026-07-03. Every unmet check is a blocker for the builder to remove or explicitly waive.

| Check                                                 | Status                                                                                                                                                                                                                                                                                                                                                       | Blocker / who removes it |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------ |
| Product reachable (live URL, local run, or build)     | ✅ public repo `github.com/tonypls/agentic-product-launch` (HTTP 200); fresh clone for the live-run shot                                                                                                                                                                                                                                                     | —                        |
| Demo account and seeded data reach the core moment    | ✅ the committed self-launch artifacts on `main` are the real skill output; live-run shot uses a throwaway clone                                                                                                                                                                                                                                             | —                        |
| No private data or notifications on screen            | ✅ VHS renders an isolated terminal; Playwright loads public pages only; no OS screen capture used                                                                                                                                                                                                                                                           | —                        |
| Capture tool for this surface                         | ✅ VHS and Playwright Chromium installed                                                                                                                                                                                                                                                                                                                     | —                        |
| Assembly tool (`ffmpeg`) available                    | ✅ ffmpeg + ffprobe on PATH                                                                                                                                                                                                                                                                                                                                  | —                        |
| Permissions granted (tool approval, screen recording) | ✅ builder present and approving; allowlist shipped in `.claude/settings.json`; no macOS Screen Recording permission needed (no OS capture)                                                                                                                                                                                                                  | —                        |
| Voiceover source (optional; captions-only default)    | ✅ builder funded `OPENAI_API_KEY` mid-production and opted in; narration generated with OpenAI TTS (`gpt-4o-mini-tts`, voice "alloy", per-line delivery directions) reading the builder-edited script verbatim; earlier takes (ash: flat read; coral: superseded after audition) rejected; captions still burned in for sound-off viewing | —                        |

## Per-Channel Cutdowns

One row per channel this launch uses (bounded to the stack in `launch-brief.md` — no other variants).

| Channel                 | Length                                                          | Aspect ratio | Status                                     |
| ----------------------- | --------------------------------------------------------------- | ------------ | ------------------------------------------ |
| Show HN                 | Master 61s, hosted in README (HN is text-only; link carries it) | 16:9         | ✅ `video/agentic-product-launch-demo.mp4` |
| GitHub README           | 18s silent GIF from shots 2→6                                   | 16:9         | ✅ `video/demo.gif` (3.3 MB)               |
| Reddit/community        | 61s master, native upload                                       | 16:9         | ✅ reuse master                            |
| X/Twitter               | 40s, hook = shot 3 (gaps caught) in first second                | 16:9         | ✅ `video/x-twitter-cut.mp4`               |
| LinkedIn                | 61s master (CTA card closes it)                                 | 16:9         | ✅ reuse master                            |
| Product Hunt (wave 2)   | 61s gallery video                                               | 16:9         | ✅ reuse master                            |
| Newsletter/blog pitches | Master cut link + 1 still                                       | 16:9         | ✅ master + `video/still-action.png`       |

## Asset Status

All assets agent-recorded and assembled 2026-07-03 (VHS + Playwright capture, ffmpeg assembly, OpenAI TTS narration). Files in `video/` next to this brief.

- Master video: ✅ `video/agentic-product-launch-demo.mp4` — 61s, 1080p, burned captions + TTS narration (8 MB)
- GIF: ✅ `video/demo.gif` — 18s silent montage of shots 2→6, captions burned (3.3 MB)
- Before/action/result screenshots: ✅ `video/still-before.png` (repo at 0 stars) / `video/still-action.png` (readiness gaps in launch brief) / `video/still-result.png` (launch kit file list)
- Per-channel cutdowns: ✅ see table above — X cut rendered, other channels reuse the master by design
- Social preview / thumbnail: ✅ `video/social-preview.png` — 1280×640, shot 6 + title (upload in repo Settings, planned Sat 2026-07-04)
- Hosting note: consider attaching the MP4s to the `v0.1.0` GitHub release (or a `v0.1.1` assets release) and embedding only `demo.gif` + stills in the README, to keep the repo light (~11 MB of video otherwise)

## Honesty Check

- Real product footage only: ✅ shot 2 is a real `/launch-project` run in a fresh clone (session recorded live, then ended); shots 1/3/4/5 are the live GitHub pages of the real committed artifacts; shot 6 is the real file list; no output was staged
- Any time-compression disclosed: ✅ shot 2 jump-cuts from the typed command to the same run ~35s in; disclosed on screen with a "(same run, ~35 seconds later)" caption at the cut
- Real latency or failures not hidden: ✅ the boot-to-work gap is the only latency and it is disclosed; one capture note — the segment showing the builder's email in the session header was excluded from the cut (privacy, per the preflight's no-private-data rule)
- Narration: AI-generated voice (OpenAI TTS) reading the launch team's script verbatim; captions carry the same text for sound-off viewing

## Optional

- Music or soundtrack: none; narration + captions carry it
- Thumbnail: ✅ done — `video/social-preview.png`, shot 6 file list with title "Your agent can run your launch" (1280×640)
