# Launch Video Production Recipe

This is one **optional worked example** of how to produce the launch video. It is not the contract. The contract is the production package defined in `skills/launch-project/references/launch-workflow.md` ("Create The Launch Video") and captured in `templates/video-brief.md`. Any agent that produces that package has done the required work; this recipe just shows one way to render it into finished assets when media tools are available.

## When To Use This

- Use it when the agent has screen-capture, browser-automation, or video-editing tools and wants a concrete path from package to assets.
- Skip it when the agent has no media tools — produce the package and hand the builder the shot list to record (the fallback in the workflow).
- Treat every tool and number below as a starting default to confirm against current platform rules before a real launch.

## One Reference Toolchain (Example Only)

- **Capture:** a screen recorder or browser driver — for example OBS, a Playwright/Chrome DevTools script, or a computer-use agent driving the real product.
- **Assemble:** `ffmpeg` for trims, concatenation, burned-in captions, aspect re-framing, and GIF export.
- **Stills:** export before/action/result frames from the same recording rather than taking separate screenshots, so the proof visuals stay consistent.

Other stacks work. Do not treat this list as required; the workflow stays portable precisely because no toolchain is the contract.

## Capture And Edit Checklist

- Hook in the first 2 seconds — open on the core moment, not a logo or loading screen.
- Show the real product doing the real task end to end.
- Keep the master cut inside 30 to 90 seconds.
- Burn in captions; assume the viewer watches with sound off.
- End on one clear call to action (the launch link).
- Export the master cut once, then derive the GIF, the stills, and the cutdowns from it.

## Per-Channel Cutdowns

Produce one variant per channel this launch uses. Lengths and aspect ratios are defaults to verify against current platform rules.

| Channel | Target length | Aspect ratio | Notes |
| --- | --- | --- | --- |
| Product Hunt | 30–60s | 16:9 | Gallery video; lead with the core moment. |
| Show HN | master cut | 16:9 | HN is text-only; the cut lives on the linked page. |
| Reddit / community | 30–60s | 16:9 or 1:1 | Prefer native upload; match the sub's norms. |
| LinkedIn | 30–90s | 1:1 or 16:9 | Captions essential; professional framing. |
| X / Twitter | 30–45s | 16:9 or 1:1 | Strong 2-second hook; sound-off captions. |
| GitHub | GIF + master cut link | 16:9 | Silent GIF in the README; full cut linked. |
| Newsletter / podcast / blog | master cut | 16:9 | Embed or link; include a still or GIF for email. |

## Honesty Rules (Same As The Workflow)

- Capture the real product. Never fabricate a result the product did not produce.
- Do not hide real latency or failures. If you compress time, disclose it (a caption such as "sped up 4x" is enough).
- If the product is unreliable on a step, show an honest take rather than stitching a perfect run that never happens live.
