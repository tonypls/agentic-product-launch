# Agent-Recorded Capture Runbook

This is the optional runbook for **agent-recorded capture**: the builder opts in to the agent recording the launch video itself instead of recording by hand. The contract is still the production package defined in `skills/launch-project/references/launch-workflow.md` ("Create The Launch Video"); this file is one concrete way for an agent with media tools to execute the capture and assembly steps. `video-production.md` stays the spec for lengths, aspect ratios, and edit rules — do not duplicate its per-channel table here.

## When To Use This

- Use it when the builder has opted in to agent recording and the agent has (or can be granted) capture tools for the product's surface.
- Skip it when the builder prefers to record, or when preflight blockers cannot be removed — fall back to handing the builder the shot list, which is always a valid path.
- Treat every tool and command below as a working default, not a requirement. Any toolchain that captures the real product honestly is fine.

## Capture Preflight

Run this before recording anything. Write the results into the Capture Plan section of `templates/video-brief.md`, then report every unmet check to the builder — each one is a blocker only the builder can remove or explicitly waive.

| Check | Why it matters | Typical fix (builder) |
| --- | --- | --- |
| Product reachable: live URL, local dev server, or installable build | The video must show the real product running | Start the dev server or share the URL/build |
| Demo account and seeded data that reach the core moment | Empty states and placeholder text kill the "aha" | Create a test account; seed realistic, non-private data |
| No private data, notifications, or personal info can appear on screen | The footage ships publicly | Use a clean profile; enable Do Not Disturb |
| Capture tool for the product surface (matrix below) | Recording | Install the tool for your surface |
| `ffmpeg` on PATH | All assembly: trims, captions, GIF, stills, reframes | e.g. `brew install ffmpeg` |
| Permission to run capture tools | Sandboxed agents cannot record without approval | Approve or allowlist the capture commands; on macOS grant the terminal Screen Recording permission for desktop capture |
| Voiceover source, only if the cut uses narration | Captions-only is the default | Provide a TTS API key or record the script yourself |

For Claude Code, this repo ships an allowlist for the capture and assembly commands in `.claude/settings.json`, so recording runs inside this repo do not stall on permission prompts. If the recording session runs in your product's repo instead, copy those permission rules there. Other agents handle command approval their own way.

## Pick The Capture Tool By Product Surface

One recommended default per surface, with alternates. Examples, not requirements.

| Surface | Recommended default | Why | Alternates |
| --- | --- | --- | --- |
| Web app | Playwright script, headed, with `recordVideo` | Deterministic takes scripted straight from the shot list; retakes are free | Browser-automation or computer-use tool driving real Chrome, paired with an OS screen recorder for real-cursor footage |
| CLI or devtool | VHS `.tape` script | Deterministic terminal recordings that export MP4 and GIF directly | asciinema + agg for GIF; OS screen recorder over a clean terminal |
| Desktop app | OS screen recorder — on macOS `screencapture -v out.mov` | Built in; captures the real app | ffmpeg device capture (`avfoundation`, `gdigrab`, `x11grab`); OBS |
| Mobile app | Simulator or emulator recording: `xcrun simctl io booted recordVideo out.mov`, `adb shell screenrecord` | Clean frames, no hands or glare | Screen mirroring plus an OS recorder |

Web capture defaults (Playwright):

```js
const browser = await chromium.launch({ headless: false });
const context = await browser.newContext({
  viewport: { width: 1920, height: 1080 },
  recordVideo: { dir: "takes/", size: { width: 1920, height: 1080 } },
});
const page = await context.newPage();
// One shot per run. Pause between steps so the pace reads human:
// await page.waitForTimeout(1500);
await context.close(); // flushes the .webm into takes/
```

- Install once with `pnpm dlx playwright install chromium`.
- Automation draws no pointer; inject a visible fake cursor overlay if pointer motion matters to the shot.

CLI capture defaults (VHS):

```tape
Output takes/shot-01.mp4
Set Width 1600
Set Height 900
Set FontSize 18
Type "your-tool init demo"
Enter
Sleep 4s
```

## Record The Shots

- Record one take per shot-list row; name files after the row (`takes/shot-01.webm`) and keep raw takes until the master cut ships.
- Drive at human pace, and hold on the result long enough to read it (about 2 seconds).
- Capture padding at both ends of every take; trimming is cheap, recapturing is not.
- Retake a failed shot rather than editing around it — unless the failure is the honest story.
- Verify every take before moving on: check duration with `ffprobe`, extract a frame, and confirm the moment is on screen and legible.

## Assemble With ffmpeg

Working defaults; adjust to the footage.

```bash
# Trim and normalize each take (strip audio; captions carry the story)
ffmpeg -i takes/shot-01.webm -ss 1.5 -to 9.0 -r 30 -c:v libx264 -crf 18 -pix_fmt yuv420p -an clips/01.mp4

# Concatenate clips listed in clips.txt (lines of: file 'clips/01.mp4')
ffmpeg -f concat -safe 0 -i clips.txt -c copy master-raw.mp4

# Burn captions from an SRT the agent writes from the video brief
ffmpeg -i master-raw.mp4 -vf "subtitles=captions.srt:force_style='FontSize=16,Outline=1'" -c:v libx264 -crf 18 master.mp4

# GIF for the README, derived from the master
ffmpeg -i master.mp4 -vf "fps=12,scale=960:-1:flags=lanczos,split[a][b];[a]palettegen[p];[b][p]paletteuse" demo.gif

# Before/action/result stills, pulled from the same footage
ffmpeg -ss 4 -i master.mp4 -frames:v 1 still-action.png

# Product Hunt gallery frame (1270x760 default); make gallery-01 the core moment — it becomes the social preview
ffmpeg -ss 4 -i master.mp4 -frames:v 1 -vf "scale=1270:760:force_original_aspect_ratio=increase,crop=1270:760" gallery-01.png

# Product Hunt thumbnail (240x240, max 2MB): static from the product mark...
ffmpeg -i logo.png -vf "scale=240:240:force_original_aspect_ratio=decrease,pad=240:240:-1:-1:color=white" ph-thumbnail.png

# ...or a short animated GIF loop; aim the crop at one legible element (a full screen
# shrunk to 240 reads as noise — pass x:y offsets to crop, or crop a smaller region), then check it stays under 2MB
ffmpeg -ss 4 -t 3 -i master.mp4 -vf "crop='min(iw,ih)':'min(iw,ih)',scale=240:240:flags=lanczos,fps=10,split[a][b];[a]palettegen[p];[b][p]paletteuse" ph-thumbnail.gif

# Square cutdown example; lengths and ratios per channel are in video-production.md
ffmpeg -i master.mp4 -vf "crop='min(iw,ih)':'min(iw,ih)'" -t 45 cut-square.mp4

# Optional: mix in a voiceover track
ffmpeg -i master.mp4 -i voiceover.m4a -map 0:v -map 1:a -c:v copy -shortest master-vo.mp4
```

## Verify Before Handoff

- `ffprobe` the master cut: length lands inside the 30 to 90 second target.
- Extract start, middle, and end frames and look at them: captions legible, core moment visible, nothing private on screen.
- View the GIF at README width, not full screen.
- Check the launch images: the thumbnail is 240×240 and under 2MB (`ls -lh`), at least 3 gallery images exist at the target size, and the first gallery image reads as a social card — core moment visible, text legible at feed width.
- Fill in Asset Status, Launch Images, and Honesty Check in `templates/video-brief.md`, and list anything not captured as an open blocker for the builder.

## Honesty Rules For Agent-Recorded Footage

The workflow's rules apply, plus the failure modes specific to automation:

- Record the real product doing the real task in a real run. Never compose frames or splice results the product did not produce.
- Automation pace can mislead: when scripted capture drives the product faster than a person could, slow it to human pace or disclose it in a caption.
- Disclose any time compression (a caption such as "sped up 4x" is enough).
- If a shot only succeeds some of the time, show an honest take or the failure; do not present the rare perfect run as typical.
