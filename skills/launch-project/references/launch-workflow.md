# Launch Project Workflow

Use this workflow to help a builder — an agentic builder or anyone shipping a product built with AI — launch an indie SaaS, app, AI product, AI agent, developer tool, MCP server, open-source project, SDK, CLI, API, or plugin when they have little or no existing audience.

The source model is borrowed relevance: find where the right users already gather, bring proof that fits that place, and turn attention into conversations and follow-up.

## How To Run This: Co-Creation, Not Generation

You and the builder run this **together**. Your job is not to hand over finished launch posts — it is to:

1. **Coach the best practices** — the readiness gate, the borrowed-relevance model, each platform's norms.
2. **Find the right platforms and the right times** — which surfaces fit *this* project, and the optimal posting window for each, in the builder's audience's timezone.
3. **Draw the copy out of the builder** — interview them for real stories, specifics, and voice, then co-draft from *their words* and refine with them.

The builder brings the product, the stories, and the final wording. You bring structure, platform knowledge, the schedule, and honest pressure-testing. **Never fill placeholder templates and hand back paste-ready posts** — that produces generic, interchangeable copy that reads as AI slop and hurts the launch. Draft from what the builder actually said.

## Operating Rules

- Co-create. Interview first, draft from the builder's own words, and hand back a draft with the questions still open, not a finished post to rubber-stamp.
- Refuse to produce templated copy. If you do not have the builder's real story, specific proof, and voice, ask for them instead of inventing generic filler.
- Prefer specific users, specific communities, and specific proof over broad distribution.
- Treat each platform as a community with norms.
- Never recommend upvote requests, fake engagement, engagement pods, undisclosed affiliation, sockpuppets, scraped cold spam, or community-rule workarounds.
- Verify current platform rules — and current optimal-timing norms — before making launch-specific claims. Posting-time heuristics are starting points; the builder's own audience and analytics are the real source of truth.
- Keep output practical: brief, concrete, and ready for the builder to make their own.
- For devtools, make installation, quickstart, examples, license, release notes, and GitHub presentation part of launch readiness.

## Start With The Smallest Useful Question

If a project URL, repo, demo, or landing page is provided, inspect it before drafting any launch assets. Ground the story, readiness gaps, and proof pack in what the product actually does.

If context is missing, ask one question at a time, and only when the missing answer would change the launch plan. Start with:

```text
Who is the narrowest group of people who should care first, and what can they do with the product today?
```

Useful follow-ups:

- What is the URL, repo, demo, or current landing page?
- What is the launch deadline, and what timezone are you and your users in?
- Is the goal users, trials, sales, feedback, GitHub stars, contributors, newsletter subscribers, calls, or partnerships?
- What proof exists already: screenshots, video, user quotes, metrics, benchmarks, technical write-up?
- Which channels are already warm, even slightly?

## Workflow

### 1. Check Launch Readiness

Before writing promotion, confirm:

- A stranger can understand the product in 10 seconds.
- A relevant user can reach value in 5 minutes or less.
- The primary call to action is clear.
- Signup, install, download, waitlist, payment, or contact flow works.
- Analytics capture visits, activation, and conversion.
- Demo or screenshots show the product working.
- Pricing, access limits, or free-plan limits are clear.
- Known limitations are written plainly.
- The builder can spend launch day replying.

For devtools, also confirm:

- README has install, quickstart, examples, license, and limitations.
- A clean first-run path works from a fresh environment.
- Package, binary, hosted demo, sample repo, or playground is available.
- GitHub topics, social preview, release notes, issues, and discussions are ready where relevant.

For AI products, also confirm:

- The product completes a real task end to end, not just one cherry-picked prompt.
- Output is consistent enough to demo without hand-steering every run.
- Failure modes are disclosed honestly: hallucination, refusals, latency, and cost.
- Model or provider, data handling, privacy, rate limits, and per-action cost are clear.

If readiness fails, recommend a private feedback launch or fixing the smallest blocker.

### 2. Find The Story — With The Builder

The one-sentence story is a useful shape, not a fill-in-the-blank to complete for the builder:

```text
[Product] helps [specific user] get [specific outcome] without [painful old way].
```

Do not write it *at* the builder. Interview them until the sentence is in their own words:

- What did you type to a friend when you first told them about this?
- What was the exact moment you decided to build it?
- Who is it embarrassingly *not* for?
- What would you never claim about it?

Draft two or three options from what they said, then let them pick and rework one. Adapt tone by channel later — the underlying story stays theirs:

- Product Hunt: clear, benefit-led, low jargon.
- Hacker News: factual, technical, personal, humble.
- Reddit/community: context-first and rule-aware.
- LinkedIn: professional lesson, use case, or business pain.
- X/Twitter: short, visual, repeatable, and reply-friendly.
- GitHub/dev ecosystem: installable, inspectable, technically credible.

Capture the raw material — real phrases, the origin moment, the honest weakness — in the Voice & Story section of `templates/launch-brief.md`. Everything you co-write later pulls from there.

### 3. Build The Proof Pack

Minimum proof:

- Landing or repo page.
- Demo video or GIF.
- 3 to 5 screenshots.
- Founder note.
- FAQ or objections doc.
- Launch log.

Strong extras:

- Technical deep dive.
- Before/after comparison.
- Reproducible benchmark.
- Sample inputs/outputs and eval results for AI products.
- Migration guide from old workflow.
- Public roadmap or known limitations.
- Customer quote or private beta quote.

### 4. Create The Launch Video

The demo video is required proof, so treat it as a flow, not a checklist line. The agent runs it; the builder records only when the agent has no media tools.

Build a **production package** first — capability-agnostic, so any markdown-reading agent can produce it:

- Core moment: the single "aha" the video must show.
- Script or voiceover, kept tight for a 30 to 90 second cut. Draw the words from the builder's own framing of the product, not generic ad copy.
- Shot list with the exact product moments to capture.
- Per-channel length and aspect-ratio targets.
- Launch-image targets for each chosen channel — for Product Hunt, a 240×240 thumbnail (JPG, PNG, or GIF, max 2MB) and a gallery of at least 3 images whose first image doubles as the social preview when the link is shared.
- Caption text.

Then run the flow:

1. Plan: fill the production package (use `templates/video-brief.md`).
2. Capture: decide who records. When the agent has (or can be granted) screen-capture, browser, or terminal tools, offer agent-recorded capture and run it if the builder opts in; otherwise hand the shot list to the builder to record.
3. Assemble: edit the master 30 to 90 second cut with captions, then derive the GIF and the 3 to 5 before/action/result screenshots from the same footage.
4. Cut down: produce one per-channel variant (length and aspect ratio) for each launch channel — no more, no fewer.
5. Package launch images: derive each channel's image assets from the same stills and the product's own mark — for Product Hunt, the 240×240 thumbnail (static, or a short GIF loop kept under 2MB) and at least 3 gallery images ordered so the first carries the core moment, since it becomes the social preview when the link is shared. Verify formats and sizes against each platform's live uploader before submitting.

Agent-recorded capture (when the builder opts in):

1. Preflight before recording. Confirm: the product is reachable (live URL, local run, or installable build); a demo account and seeded data reach the core moment; no private data or notifications can appear on screen; a capture tool fits the product surface; an assembly tool such as `ffmpeg` is available; the builder has granted the permissions the tools need.
2. Write the results into the Capture Plan section of `templates/video-brief.md` and report every unmet check to the builder as a named, removable blocker. Record only when the remaining checks pass or the builder explicitly waives them.
3. Record the shot list from the real product, one take per shot, and verify each take — the moment is on screen, legible, and honestly representative — before assembling.
4. Return anything the agent cannot capture to the builder as a named blocker or a shot to record by hand.

Rules:

- Show the real product. Do not fabricate results, hide real latency or failures, or speed up footage without disclosing the time-compression.
- Automation pace can mislead: when scripted capture drives the product faster than a person could, slow it to human pace or disclose it in a caption.
- Bound cutdowns and launch images to the channels this launch uses; do not invent platform variants.
- For an optional worked recipe (capture and edit tooling, per-channel specs), see `skills/launch-project/references/video-production.md`. It is one example, not a requirement.
- For the agent-recorded path (preflight checklist, tool choice by product surface, capture defaults, assembly commands), see `skills/launch-project/references/agent-recording.md`. It is one recipe, not a requirement.

### 5. Map Borrowed Audiences

Build a list before launch.

Categories:

- Exact-user communities.
- Technical discovery channels.
- Maker discovery channels.
- Newsletter, podcast, YouTube, and blog amplifiers.
- Adjacent tools and ecosystem maintainers.
- Direct prospects and early adopters.

Score each target:

- Relevance: 1 to 5.
- Permission: allowed, unclear, or prohibited.
- Proof fit: weak, medium, or strong.
- Relationship: cold, warm, or active member.
- Launch role: post, comment, DM, email, partnership, or follow-up.

Default priority: high relevance, clear permission, and medium or better proof fit.

### 6. Choose Platforms For This Project

Not every platform fits every project. Match the surface to what the product is and who it is for, rather than posting everywhere. See `skills/launch-project/references/scheduling.md` for the platform-fit guide.

Default stack:

- Product Hunt for maker and early-adopter discovery.
- Show HN for tryable builder-facing products.
- Direct outreach for named prospects and domain experts.
- Community posts where rules allow.
- X/Twitter and LinkedIn for public proof and recap loops.
- GitHub and ecosystem channels for developer tools.
- Newsletters, podcasts, YouTube, and blogs for amplifier outreach.

Recommend the two or three platforms that fit *this* project best and explain why each fits — do not hand over a generic seven-channel checklist. Pick fewer channels if the builder cannot reply well.

### 7. Co-Write Channel Assets

Use `skills/launch-project/references/co-writing-guide.md` and `templates/channel-copy.md`.

Co-writing is a loop, not a generation step:

1. **Interview.** For each chosen platform, ask the builder the elicitation questions in the co-writing guide — the origin story, the specific proof, the honest limitation, the exact feedback they want. Pull from the Voice & Story notes in the launch brief.
2. **Draft from their words.** Turn their raw answers into a first draft that keeps their phrasing, their specifics, and their voice. Match the platform's norms and length. Do not smooth it into generic marketing prose.
3. **Refine together.** Hand back the draft with your open questions attached ("Is this how you'd say it?", "What's the real number here?"). Revise until it sounds like the builder, not like a template.

Every asset should have:

- The builder's own story and specifics, not invented filler.
- Channel-native tone.
- Specific, inspectable proof.
- One specific feedback ask.
- A clear link or action.
- No vote request.

If you cannot make a draft specific because you are missing the builder's input, stop and ask — do not fill the gap with placeholder copy.

### 8. Schedule The Launch

Turn the chosen platforms and finished copy into a concrete, timed plan. This is where "when and where" becomes an artifact. See `skills/launch-project/references/scheduling.md` for optimal-timing heuristics, then write the plan into `templates/launch-schedule.md`.

For each post:

- **Platform and audience timezone.** Optimize for when the *audience* is awake and active, not when the builder happens to be. Name both the target timezone and the builder's local time for each slot.
- **Optimal window.** Use the platform heuristics as a starting point, then adjust to the target community's real activity and, where available, the builder's own analytics.
- **Live vs pre-scheduled.** Post live on the surfaces where the builder must be present to reply (Show HN, Reddit, Product Hunt). Pre-schedule the rest (X sequence, LinkedIn) in each platform's native scheduler so the builder is free to host the live threads.
- **Waves and spacing.** Sequence posts so the builder is never trying to host two live threads at once, and space secondary posts across the day rather than dumping them at the open.

Flag any conflict where the optimal time for the audience falls in the builder's night, and offer the two honest options: post live at an awkward local hour, or pre-schedule and reply asynchronously.

### 9. Run Launch Day

Use launch day as a hosted conversation, driven by the schedule from step 8.

Create:

- Launch links.
- Posting schedule (from `templates/launch-schedule.md`).
- Reply rota if there is more than one maker.
- Metrics dashboard or manual metric log.
- Bug and objection log.
- Reply bank — starting points the builder answers in their own voice, never canned replies.
- Follow-up list.

### 10. Compound After Launch

Within 48 hours:

- Publish recap.
- Follow up with serious commenters.
- Fix the top blocker.
- Add repeated answers to docs or FAQ.
- Save quotes and screenshots.

Within two weeks:

- Run second-wave content.
- Pitch niche amplifiers.
- Revisit communities if allowed.
- Interview engaged users.
- Choose the next growth objective.

## Expected Outputs

Produce the outputs that fit the user's request. Everything is co-created with the builder and grounded in their real material — never generic filler. When writing to files, use the shared template files so humans and agents work in the same place:

- Launch brief, readiness gaps, and Voice & Story capture -> `templates/launch-brief.md`.
- Launch video production package, capture preflight, and launch-image status -> `templates/video-brief.md`.
- Audience map and platform-fit notes -> `templates/audience-map.md`.
- Co-written channel copy (Product Hunt, Show HN, Reddit/community, LinkedIn, X/Twitter, GitHub, email, DM) -> `templates/channel-copy.md`.
- Optimal-time posting schedule -> `templates/launch-schedule.md`.
- Launch-day live log -> `templates/launch-log.md`.
- Reply bank -> `templates/reply-bank.md`.
- Post-launch recap and second-wave plan -> `templates/post-launch-recap.md`.

## Current-Rule Check

Before a real launch, recheck official sources — and re-verify optimal-timing norms against the builder's own audience, since posting-time advice drifts and varies by community:

- Product Hunt Launch Guide: https://www.producthunt.com/launch
- Product Hunt launch preparation: https://www.producthunt.com/launch/preparing-for-launch
- Show HN guidelines: https://news.ycombinator.com/showhn.html
- Launch HN advice: https://news.ycombinator.com/yli.html
- Reddit self-promotion guidance: https://www.reddit.com/r/reddit.com/wiki/selfpromotion/
- Reddit rules: https://redditinc.com/policies/reddit-rules
- GitHub releases: https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository
- GitHub social preview docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview
