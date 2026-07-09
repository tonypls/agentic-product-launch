---
date: 2026-06-17
topic: product-launch-video-creation-flow
---

# Product Launch Video Creation Flow Requirements

## Summary

Add a "create the launch video" flow to the playbook where the launch agent does the hands-on production work - scripting the demo, capturing real product footage, and editing it into a master cut plus a GIF, before/action/result screenshots, and per-channel cutdowns. The portable contract is a production package any markdown-reading agent can produce; actual recording and editing ride on whatever media tools the agent has, with an optional named reference toolchain and a builder-records fallback. The flow extends the source-of-truth workflow and the human manual, fed by a new production-brief template.

---

## Problem Frame

The playbook already treats a demo video as required launch proof - `PLAYBOOK.md` Phase 3 lists a "30 to 90 second demo video or GIF" and "3 to 5 screenshots showing before, action, and result," and the timeline collapses the work into one step, "Record the demo," on Day -9 to -7. Nothing helps the builder actually make it: there is no scripting method, no shot list, no capture guidance, and no editing or cutdown process.

Solo agentic builders are the people least likely to have video skills and the most time-pressed during launch prep. Today they skip the video, ship a weak one, or burn prep time improvising. The one proof asset the playbook treats as mandatory is the one it gives no method to produce.

---

## Key Decisions

- **The agent produces, not just guides.** The flow has the agent do the hands-on capture and editing, not hand the builder a script to record alone. Chosen over a script-only guide because the builder is the bottleneck this removes.
- **One capture pass feeds the whole proof-visual family.** The demo video, the GIF, the before/action/result screenshots, and the per-channel cutdowns all derive from a single scripted capture, so the marginal cost of the extra assets stays low. Chosen over single-video scope.
- **The portable contract is a production package, not a toolchain.** The source-of-truth deliverable is a capability-agnostic production package - core moment, script, shot list, capture moments, per-channel length and aspect-ratio targets, caption text - that any markdown agent can produce. Rendering rides on whatever media tools the agent has; an optional reference toolchain is documented as one worked example, and a builder-records fallback covers tool-less agents. This keeps the flow runnable everywhere without breaking the repo's single-source-of-truth rule (see `docs/solutions/architecture-patterns/portable-workflow-single-source-of-truth.md`).
- **Cutdowns are bounded to the playbook's existing channels.** Per-channel variants map to the channels the playbook already defines (Product Hunt, Show HN, Reddit/community, LinkedIn, X/Twitter, GitHub, newsletter/podcast), not an open-ended per-platform farm.
- **The honesty rule carries into editing.** Capture shows the real product working; editing must not fabricate results or hide real latency and failures, and any time-compression is disclosed. Inherited from the existing AI-product gate and anti-patterns.

---

## Actors

- A1. Builder - the agentic builder or solo maker launching the product; may have no video skills and little prep time.
- A2. Launch agent - the AI agent running the flow: scripts, captures, edits, and assembles assets using whatever media tools its harness provides.
- A3. Launch-day viewer - the borrowed audience who watches the video on each channel and judges the product in seconds.

---

## Key Flows

- F1. Plan the video.
  - **Trigger:** The builder reaches the proof-pack stage and needs a demo video.
  - **Steps:** Identify the single core "aha" moment, write a tight script/voiceover, build a shot list/storyboard, and set the target length(s).
  - **Outcome:** A production package the agent or builder can execute, independent of tools.

- F2. Capture real footage.
  - **Trigger:** The production package exists.
  - **Steps:** The agent records the listed shots from the real product using available media tools, or hands the shot list to the builder to record when it has none.
  - **Outcome:** Raw footage and stills covering every scripted moment.

- F3. Assemble the master cut and family.
  - **Trigger:** Footage exists.
  - **Steps:** Edit the master 30–90s cut with captions, then derive the GIF and the 3–5 before/action/result screenshots from the same footage.
  - **Outcome:** The core proof-visual family.

- F4. Produce channel cutdowns.
  - **Trigger:** The master cut is approved.
  - **Steps:** Derive per-channel edits (length and aspect ratio) for the playbook's existing channels and slot them into the channel plan.
  - **Outcome:** Channel-ready video variants.

---

## Requirements

**Flow scope**

- R1. The playbook must include a dedicated launch-video creation flow that takes the builder from "need a demo video" to finished assets, not a checklist item.
- R2. The flow must have the agent perform capture and editing, with the builder able to record the shot list manually as a fallback.
- R3. The flow must produce the full proof-visual family from one scripted capture: a 30–90s demo video, a GIF, and 3–5 before/action/result screenshots.
- R4. The flow must produce per-channel cutdowns bounded to the channels the playbook already covers.

**Portability**

- R5. The source-of-truth deliverable must be a capability-agnostic production package (core moment, script, shot list, capture moments, per-channel length and aspect-ratio targets, caption text) producible by any markdown-reading agent.
- R6. The flow must degrade gracefully: name an optional reference toolchain as one worked example and fall back to builder-records when the agent has no media tooling, without making any one toolchain the contract.
- R7. The video flow's behavior must live in the portable source-of-truth workflow and be mirrored into the human manual; platform wrappers must reference it, not duplicate it.

**Integrity**

- R8. The flow must require real product footage and prohibit fabricated results; it must not hide real latency or failures, and must disclose any time-compression.

**Integration with the existing playbook**

- R9. The preparation timeline must be restructured so video creation is a time-boxed block sized for capture, edit, and cutdowns, replacing the single "Record the demo" step.
- R10. The launch-brief's demo section must capture the production-package inputs and asset status.
- R11. A reusable template must hold the video production brief (script, shot list, capture moments, per-channel cutdown checklist), following the existing template style.

---

## Acceptance Examples

- AE1. **Covers R2, R6.** Given an agent with no screen-capture or video tools, when it runs the flow, then it still produces the complete production package and hands the builder a record-it-yourself shot list - rather than failing or skipping the video.
- AE2. **Covers R2, R3.** Given an agent with media tools, when it runs the flow, then it captures real product footage and outputs the master cut, the GIF, and the before/action/result screenshots from that one capture pass.
- AE3. **Covers R4.** Given an approved master cut, when cutdowns are produced, then there is one variant per applicable playbook channel at the right length and aspect ratio, and none for channels outside the playbook's defined set.
- AE4. **Covers R8.** Given the product has a slow operation, when the video is edited, then the cut either shows the real timing or discloses the time-compression, and never fabricates a result the product did not produce.
- AE5. **Covers R7.** Given a Codex agent and a Claude Code agent, when each runs the launch workflow, then both reach the same video flow through the portable source rather than a platform-specific copy.

---

## Success Criteria

- A builder with no video skills can run the flow and finish launch prep with a publishable demo video plus GIF, screenshots, and channel cutdowns.
- The same source-of-truth text runs on a tool-less markdown agent (producing the package and a manual shot list) and on a media-capable agent (producing rendered assets).
- The produced video honestly represents the working product.
- The flow adds no duplicated workflow prose across platform wrappers - the source of truth stays single.

---

## Scope Boundaries

In scope:

- The video creation flow (plan → capture → assemble → cutdowns) as portable playbook guidance.
- A video production-brief template and an expanded launch-brief demo section.
- Timeline restructuring for the heavier video block.

Deferred for later:

- Thumbnails, subtitle/caption localization, and music or licensing guidance.
- Long-form formats (full demo walkthroughs, webinar or launch-stream content).

Outside this product's identity:

- AI-generated or synthetic video (text-to-video, avatar voiceover) - conflicts with showing the real product working.
- Distributing or posting the video - that stays with the existing channel-copy and launch-day flows; this flow only produces assets.
- Shipping an actual video editor, renderer, or hosted service as repo software - the playbook is portable markdown guidance, not an app.

---

## Dependencies And Assumptions

- The product is far enough along that a real end-to-end "aha" moment can be captured (the launch readiness gate holds).
- Agent media capabilities vary; the flow assumes nothing beyond markdown production and degrades from there.
- Channel norms for video (length, aspect ratio, autoplay and sound behavior) should be re-verified against current platform rules before a real launch, consistent with the playbook's existing current-rule check.

---

## Sources And Research

- Existing proof-pack and timeline references: `PLAYBOOK.md` (Phase 3 proof pack, Phase 7 timeline), `skills/launch-project/references/launch-workflow.md` (Build The Proof Pack), `templates/launch-brief.md` (Demo asset).
- Portability constraint: `AGENTS.md` (source-of-truth rule), `docs/solutions/architecture-patterns/portable-workflow-single-source-of-truth.md`.
- Parent product requirements: `docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md`.
