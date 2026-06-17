# Launch Project Workflow

Use this workflow to help a builder — an agentic builder or anyone shipping a product built with AI — launch an indie SaaS, app, AI product, AI agent, developer tool, MCP server, open-source project, SDK, CLI, API, or plugin when they have little or no existing audience.

The source model is borrowed relevance: find where the right users already gather, bring proof that fits that place, and turn attention into conversations and follow-up.

## Operating Rules

- Prefer specific users, specific communities, and specific proof over broad distribution.
- Treat each platform as a community with norms.
- Never recommend upvote requests, fake engagement, engagement pods, undisclosed affiliation, sockpuppets, scraped cold spam, or community-rule workarounds.
- Verify current platform rules before making launch-specific claims.
- Keep output practical: brief, concrete, and ready to use.
- For devtools, make installation, quickstart, examples, license, release notes, and GitHub presentation part of launch readiness.

## Start With The Smallest Useful Question

If a project URL, repo, demo, or landing page is provided, inspect it before drafting any launch assets. Ground the one-sentence story, readiness gaps, and proof pack in what the product actually does.

If context is missing, ask one question at a time, and only when the missing answer would change the launch plan. Start with:

```text
Who is the narrowest group of people who should care first, and what can they do with the product today?
```

Useful follow-ups:

- What is the URL, repo, demo, or current landing page?
- What is the launch deadline?
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

### 2. Write The One-Sentence Story

Use:

```text
[Product] helps [specific user] get [specific outcome] without [painful old way].
```

Adapt it by channel:

- Product Hunt: clear, benefit-led, low jargon.
- Hacker News: factual, technical, personal, humble.
- Reddit/community: context-first and rule-aware.
- LinkedIn: professional lesson, use case, or business pain.
- X/Twitter: short, visual, repeatable, and reply-friendly.
- GitHub/dev ecosystem: installable, inspectable, technically credible.

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
- Script or voiceover, kept tight for a 30 to 90 second cut.
- Shot list with the exact product moments to capture.
- Per-channel length and aspect-ratio targets.
- Caption text.

Then run the flow:

1. Plan: fill the production package (use `templates/video-brief.md`).
2. Capture: if the agent has screen-capture or browser tools, record the listed shots from the real product; if not, hand the shot list to the builder to record.
3. Assemble: edit the master 30 to 90 second cut with captions, then derive the GIF and the 3 to 5 before/action/result screenshots from the same footage.
4. Cut down: produce one per-channel variant (length and aspect ratio) for each launch channel — no more, no fewer.

Rules:

- Show the real product. Do not fabricate results, hide real latency or failures, or speed up footage without disclosing the time-compression.
- Bound cutdowns to the channels this launch uses; do not invent platform variants.
- For an optional worked recipe (capture and edit tooling, per-channel specs), see `skills/launch-project/references/video-production.md`. It is one example, not a requirement.

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

### 6. Choose Channels

Default stack:

- Product Hunt for maker and early-adopter discovery.
- Show HN for tryable builder-facing products.
- Direct outreach for named prospects and domain experts.
- Community posts where rules allow.
- X/Twitter and LinkedIn for public proof and recap loops.
- GitHub and ecosystem channels for developer tools.
- Newsletters, podcasts, YouTube, and blogs for amplifier outreach.

Pick fewer channels if the builder cannot reply well.

### 7. Draft Channel-Native Assets

Use `skills/launch-project/references/copy-templates.md` and `templates/channel-copy.md`.

Each draft should include:

- Product-specific story.
- Channel-native tone.
- Specific proof.
- Specific feedback ask.
- Clear link or action.
- No vote request.

### 8. Plan Launch Day

Use launch day as a hosted conversation.

Create:

- Launch links.
- Posting schedule.
- Reply rota if there is more than one maker.
- Metrics dashboard or manual metric log.
- Bug and objection log.
- Reply bank.
- Follow-up list.

### 9. Compound After Launch

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

Produce the outputs that fit the user's request. When writing to files, use the shared template files so humans and agents work in the same place:

- Launch brief and readiness gaps -> `templates/launch-brief.md`.
- Launch video production package -> `templates/video-brief.md`.
- Audience map and channel plan -> `templates/audience-map.md`.
- Product Hunt, Show HN, Reddit/community, LinkedIn, X/Twitter, GitHub, email, and DM drafts -> `templates/channel-copy.md`.
- Launch-day schedule and live log -> `templates/launch-log.md`.
- Reply bank -> `templates/reply-bank.md`.
- Post-launch recap and second-wave plan -> `templates/post-launch-recap.md`.

## Current-Rule Check

Before a real launch, recheck official sources:

- Product Hunt Launch Guide: https://www.producthunt.com/launch
- Product Hunt launch preparation: https://www.producthunt.com/launch/preparing-for-launch
- Show HN guidelines: https://news.ycombinator.com/showhn.html
- Launch HN advice: https://news.ycombinator.com/yli.html
- Reddit self-promotion guidance: https://www.reddit.com/r/reddit.com/wiki/selfpromotion/
- Reddit rules: https://redditinc.com/policies/reddit-rules
- GitHub releases: https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository
- GitHub social preview docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview

