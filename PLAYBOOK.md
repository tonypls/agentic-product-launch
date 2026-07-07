# Launch Playbook For Agentic Builders And AI Products

This playbook helps an agentic builder — or anyone shipping a product built with AI — take a shippable indie SaaS, app, AI product, agent, or developer tool to launch in front of relevant audiences, even with little or no existing following.

The goal is not generic virality. The goal is concentrated attention from people who can try, critique, buy, share, integrate, contribute, or amplify the project.

## How To Use This Playbook

This is a playbook you and your agent run **together**. The agent's job is to coach the best practices here, find the right platforms and the best times to post for your project, and interview you so the copy comes out in your own voice. Your job is to bring the product, the real stories, and the final words.

What that means in practice:

- The agent does not hand you finished, paste-ready posts. Fill-in-the-blank launch copy reads as interchangeable AI slop. Instead it asks you questions, drafts from *your* answers, and refines with you until it sounds like you.
- Best-practice guidance — the readiness gate, the borrowed-relevance model, each platform's norms — is the scaffolding, not the content.
- Scheduling is a first-class step: which platforms fit this project, and the optimal time to post to each, in your audience's timezone.

No agent? The same phases work by hand — the interview questions are just prompts you answer yourself.

## Launch Thesis

If you do not already have an audience, your launch has to borrow one.

Borrowed audiences live in communities, newsletters, directories, Product Hunt, Hacker News, Reddit, GitHub, Discords, Slacks, podcasts, YouTube channels, open-source ecosystems, and the replies of people who already talk to your users.

The launch succeeds when four things are true:

- The project is easy to understand.
- The project is easy to try.
- The proof is easy to inspect.
- The builder is present when attention arrives.

## Phase 1: Pass The Launch Gate

Do not launch publicly until the product can absorb attention.

Minimum gate:

- A stranger can understand the product in 10 seconds.
- A relevant user can reach value in 5 minutes or less.
- The landing page or repo has one primary call to action.
- Signup, install, download, waitlist, payment, or contact flow works.
- Analytics capture visits, signups or installs, activations, and conversions.
- A demo, screenshot set, or short video shows the product in use.
- Pricing, access limits, or free-plan limits are clear.
- Known limitations are written plainly.
- The builder can spend launch day replying.

Developer-tool gate:

- The README explains install, quickstart, examples, and limitations.
- A runnable demo, hosted sandbox, playground, package, binary, or sample repo exists.
- The first success path works from a clean machine or clean account.
- GitHub metadata, topics, license, social preview, and release notes are ready.
- Issues or Discussions are enabled if community feedback is expected.

AI-product gate:

- The product completes a real task end to end, not just one cherry-picked prompt.
- Output is consistent enough to show a stranger without hand-steering every run.
- A demo or sample run works without the builder narrating around failures.
- Failure modes are disclosed honestly: hallucination, refusals, latency, and cost.
- The model or provider, data handling, and privacy posture are clear.
- Rate limits, usage caps, and per-action cost are clear.

If the gate fails, run a private feedback launch first.

## Phase 2: Find The One-Sentence Story — In Your Words

This is a shape to fill with your own words, not a template to accept as written:

```text
[Product] helps [specific user] get [specific outcome] without [painful old way].
```

Find it by talking, not by filling blanks. Answer these (or have your agent ask you), then draft two or three versions from your answers and rework one:

- What did you type to a friend when you first told them about this?
- What was the exact moment you decided to build it?
- Who is it embarrassingly *not* for?

Pressure-test the sentence:

- Could a stranger repeat it after one read?
- Does it name a specific user?
- Does it point to an outcome rather than a feature list?
- Does the old way feel familiar?
- Does it match what the product can do today?

Keep narrowing until the story is easy to repeat — and still sounds like you. Capture the raw material in the Voice & Story section of `templates/launch-brief.md`.

## Phase 3: Build The Proof Pack

Prepare proof before choosing launch day.

Required proof:

- Landing page or repo page with the one-sentence story.
- 30 to 90 second demo video or GIF.
- 3 to 5 screenshots showing before, action, and result.
- Founder note explaining why you built it, who it is for, and what feedback you want.
- FAQ covering price, privacy, limits, setup, competitors, and known limitations.
- Launch log for replies, bugs, quotes, and follow-ups.

Developer-tool proof:

- Quickstart command or copy-paste example.
- Minimal code sample.
- Architecture or "how it works" section if technical users will care.
- Reproducible benchmarks only when they are honest and relevant.
- Changelog or release notes.

AI-product proof:

- Sample inputs and outputs on real, non-cherry-picked cases.
- Eval results, accuracy notes, or a benchmark when honest and relevant.
- A short note on how it handles edge cases and what happens when the model is wrong or unsure.

### Create The Launch Video

The demo video is required proof, so treat it as a small production, not a single "record it" task. An agent can run most of it; you record by hand only when your agent has no capture tools.

Plan the video as a production package before touching a recorder (capture it in `templates/video-brief.md`):

- The single core moment the video must show.
- A tight script or voiceover for a 30 to 90 second cut.
- A shot list of the exact product moments to capture.
- Per-channel length and aspect-ratio targets.
- Caption text, since most viewers watch with sound off.

Then run the flow:

1. Plan the package above.
2. Capture the listed shots from the real product — ask your agent to record them (below), or record from the shot list yourself.
3. Assemble the master 30 to 90 second cut with captions, then pull the GIF and the 3 to 5 before/action/result screenshots from the same footage.
4. Cut down one variant per launch channel at the right length and aspect ratio.

Want your agent to record the video itself? Agents with browser, terminal, or screen-capture tools can. The agent runs a preflight first and reports what it needs as blockers; you can clear most of them up front:

- Have the product running and reachable: a live URL, a local dev server, or an installable build.
- Provide a demo account and seed realistic data that reaches the core moment — no empty states, no real customer data.
- Install the media tools once: `ffmpeg` for assembly, plus a capture tool for your surface (Playwright for web, VHS for CLI demos, the OS recorder for desktop).
- Grant permissions: approve the agent's capture commands, and on macOS give your terminal Screen Recording permission for desktop capture.
- Optional: a TTS key or a recorded voiceover if you want narration; captions-only is the default.

The agent writes what it checked and what is blocked into `templates/video-brief.md`, records the shot list, and assembles the cuts. Anything it cannot capture comes back to you as a named blocker or a shot to record by hand. The full runbook is `skills/launch-project/references/agent-recording.md`.

Show the real product. Do not fake results, hide real latency or failures, or speed up footage without saying so — and if scripted capture drives the product faster than a person could, slow it down or disclose it. For an optional capture-and-edit recipe with per-channel specs, see `skills/launch-project/references/video-production.md`.

## Phase 4: Map Borrowed Audiences

Build a list of 50 to 150 targets before launch day.

Audience types:

- Exact-user communities: subreddits, Discords, Slacks, forums, niche groups.
- Technical discovery: Hacker News, GitHub, Lobsters, dev.to, language communities, framework communities.
- Maker discovery: Product Hunt, Indie Hackers-style communities, startup groups, build-in-public circles.
- Expert amplifiers: newsletter writers, podcasters, YouTubers, bloggers, maintainers, consultants.
- Adjacent products: tools whose users naturally feel the pain you solve.
- Direct prospects: named people or companies likely to care.

Score each target:

- Relevance: 1 to 5.
- Permission: launches, demos, or self-promotion allowed?
- Proof fit: does your demo match what this audience wants to inspect?
- Relationship: cold, warm, or active member.
- Launch role: post, comment, DM, email, partnership, or follow-up.

Prioritize high relevance and clear permission over raw audience size.

## Phase 5: Choose Platforms For This Project

Not every platform fits every project. Match the surface to what the product is and who it is for — pick the two or three that fit best and skip the rest. See the platform-fit guide in [skills/launch-project/references/scheduling.md](skills/launch-project/references/scheduling.md).

Default stack for indie SaaS and devtools:

- Primary discovery: Product Hunt if the product fits early adopters, makers, SaaS, AI, productivity, design, or devtools.
- Technical discovery: Show HN if the product is tryable and interesting to builders.
- Direct outreach: 50 to 100 named prospects, maintainers, creators, or community members.
- Community posts: 5 to 15 permission-compatible communities.
- Social proof loop: X/Twitter, LinkedIn, personal blog, changelog, and GitHub release.
- Amplifier outreach: 10 to 30 newsletter writers, community owners, podcasters, and creators.

Do not post identical copy everywhere. Each channel has a different social contract. Fewer, well-fit platforms you can actually host beat a full sweep you cannot.

## Phase 6: Co-Write Channel Copy

Write *with* your agent; don't have it write *for* you. For each platform, answer the interview questions in [skills/launch-project/references/co-writing-guide.md](skills/launch-project/references/co-writing-guide.md), then co-draft from your answers and refine until it sounds like you. Keep the anti-slop rules: real specifics, one honest limitation, one real feedback ask, no hype words you wouldn't say out loud, no vote requests.

Write within each platform's norms:

Product Hunt:

- Prepare listing assets, tagline, gallery, demo, maker comment, offer, and reply plan.
- Ask people to visit, try, comment, or share feedback.
- Do not ask for upvotes.

Hacker News:

- Use Show HN only when people can try the thing.
- Write like a builder talking to builders.
- Prefer factual, personal, modest language.
- Include technical details and transparent pricing or access notes.
- Be ready to answer sharp questions.

Reddit and communities:

- Read each community's rules before posting.
- Disclose that you made the project.
- Share useful context beyond the link.
- Ask for feedback on a specific question.
- Stay in the comments.

LinkedIn:

- Use professional problem framing, founder narrative, practical lessons, and targeted feedback requests.
- DM selectively after relevant engagement, not as a cold blast.

X/Twitter:

- Use several small posts: problem, demo clip, build story, technical detail, launch link, update, and recap.
- Reply to relevant conversations before and during launch week.
- Avoid tagging large accounts unless the connection is real.

GitHub and dev ecosystems:

- Publish a clean release.
- Add README, quickstart, examples, license, topics, social preview, release notes, and contribution path.
- Post to ecosystem-specific places only when the project is genuinely useful there.

## Phase 7: Schedule The Launch

Decide where and when each post goes, and write it into [templates/launch-schedule.md](templates/launch-schedule.md). Full heuristics are in [skills/launch-project/references/scheduling.md](skills/launch-project/references/scheduling.md). Optimal times are starting points — the real answer is when *your* audience is active, which their platform analytics will tell you better than any chart.

- Optimize for the audience's timezone, not yours. Record both times for every post so conflicts are visible.
- Respect hard mechanics first — for example, Product Hunt's day resets at 12:01 AM PT.
- Post live where you must reply (Show HN, Reddit, Product Hunt); pre-schedule the broadcast posts (X sequence, LinkedIn) in each platform's native scheduler so you're free to host the live threads.
- Stagger live threads — never host two at once — and release secondary posts in waves across the day.
- If the best audience window falls in your night, choose honestly: post live at an awkward local hour, or pre-schedule and reply asynchronously.

## Phase 8: Run The Timeline

Day -14 to -10:

- Fill the launch brief.
- Decide the primary user and one-sentence story.
- Fix the first-run experience.
- Start the audience map.
- Ask 20 relevant people for private feedback.

Day -9 to -7:

- Plan and capture the launch video: write the script and shot list, then record the real product (see Phase 3).
- Prepare screenshots, README, landing page, and FAQ.
- Co-write channel copy from the Voice & Story notes (Phase 6).
- Ask 5 to 10 relevant people for private reactions.

Day -6 to -4:

- Assemble the launch video: master cut, GIF, before/action/result screenshots, and per-channel cutdowns.
- Tighten the product and copy from feedback.
- Warm communities by answering questions and being useful.
- Prepare the launch log.
- Build the launch schedule — optimal times per platform (Phase 7) — and queue the pre-scheduled posts.

Day -3 to -1:

- Verify links, analytics, support, signup, payment, install, and demo.
- Finalize channel-specific copy.
- Prepare the reply bank.
- Send warm heads-up messages without asking for votes.

Launch day:

- Publish the primary launch.
- Post to secondary channels in waves.
- Reply quickly, specifically, and humbly.
- Log every bug, objection, quote, and promising contact.
- Patch obvious blockers.
- Clarify copy if the same confusion repeats.

Day +1 to +3:

- Ship small fixes from feedback.
- Post a transparent recap.
- Follow up with serious commenters, prospects, and amplifiers.
- Turn repeated questions into docs, posts, and demos.

Day +4 to +14:

- Run the second wave: technical deep dive, use-case post, open-source release, comparison, customer story, or "what we changed after launch."
- Submit to directories and newsletters that require review.
- Ask early users for quotes, interviews, or referrals only after they receive value.

## Phase 9: Host Launch Day

The builder's launch-day job is to host the room.

Suggested rhythm:

- First 30 minutes: verify links, analytics, comments, signup, payment, install, and demo.
- Every 30 to 60 minutes: check primary channels and answer comments.
- Every 90 minutes: post or send one planned wave.
- Midday: patch bugs, add FAQ answers, and clarify landing copy.
- End of day: capture metrics, thank helpers, and draft recap notes.

Good replies:

- Answer the actual question.
- Give specifics.
- Admit tradeoffs.
- Avoid defensiveness.
- Invite better ideas.
- Remember that silent readers matter more than winning a debate.

## Phase 10: Measure What Matters

Track:

- Reach: visits, impressions, post views, GitHub stars, Product Hunt visits.
- Engagement: comments, replies, saves, bookmarks, DMs, email replies.
- Activation: signups, installs, API keys, successful first runs, demos completed.
- Conversion: trials, paid accounts, booked calls, waitlist quality.
- Learning: repeated objections, unclear positioning, bugs, missing features, surprising use cases.

The best launch result is not always the largest number. Sometimes the win is discovering the exact sentence, demo, or audience that makes strangers care.

## Phase 11: Compound After Launch

Within 48 hours:

- Publish a recap.
- Follow up with serious commenters and prospects.
- Fix the top activation blocker.
- Add repeated answers to docs or FAQ.
- Save strong quotes and screenshots.

Within two weeks:

- Create a second-wave story from what happened.
- Pitch niche newsletters with the result and lesson.
- Revisit communities with an update if rules allow it.
- Interview the most engaged users.
- Decide whether the next goal is distribution, activation, conversion, or retention.

## Anti-Patterns

- Launching a waitlist to Show HN.
- Asking for upvotes on Product Hunt, HN, or Reddit.
- Posting the same announcement everywhere.
- Treating Reddit like an ad network.
- Launching with no demo or screenshots.
- Disappearing after posting.
- Arguing with critics.
- Optimizing for vanity reach while ignoring activation.
- Sending mass DMs to people who have no reason to care.

## Official Sources To Recheck

- Product Hunt Launch Guide: https://www.producthunt.com/launch
- Product Hunt launch preparation: https://www.producthunt.com/launch/preparing-for-launch
- Show HN guidelines: https://news.ycombinator.com/showhn.html
- Launch HN advice: https://news.ycombinator.com/yli.html
- Reddit self-promotion guidance: https://www.reddit.com/r/reddit.com/wiki/selfpromotion/
- Reddit rules: https://redditinc.com/policies/reddit-rules
- GitHub releases: https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository
- GitHub social preview docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview

