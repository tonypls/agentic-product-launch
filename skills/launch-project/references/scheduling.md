# Platform Fit And Launch Scheduling

Use this reference to help a builder answer two questions for their specific project:

1. **Where** should this launch? (platform fit)
2. **When** should each post go out? (optimal timing)

The output is a concrete, timed schedule captured in `templates/launch-schedule.md`.

## Read This First: These Are Heuristics

Posting-time advice drifts and varies by community. Treat everything below as a **starting point to verify**, not a rule:

- The real optimal time is when *the builder's specific audience* is awake and active - not a generic chart.
- A platform's own analytics ("when your followers are online"), and a community's visible activity pattern, beat any published best-time list.
- Optimize for the **audience's timezone**, not the builder's. A builder in Auckland launching to a US audience posts on US clock time.
- Re-verify current platform norms at launch time (see the Current-Rule Check in `launch-workflow.md`).

Do not present these as precise facts to the builder. Present them as defaults, then adjust to their audience and, where available, their analytics.

## Platform Fit By Project

Recommend the two or three surfaces that fit the project best, and say why each fits. Skip the ones that do not.

| Platform | Fits when the project is… | Weak fit when… |
| --- | --- | --- |
| Product Hunt | A polished, tryable product with a clear visual demo; maker/early-adopter appeal (SaaS, AI, productivity, design, devtools) | Pre-launch waitlist, deep-infra tool with no visual, or an audience that is not on PH |
| Show HN | Tryable *right now* and interesting to builders; technically inspectable | Not yet usable, marketing-heavy, or nothing for a technical reader to poke at |
| Reddit / niche communities | There is a specific subreddit or community whose members literally have this problem | You cannot point to a community, or their rules prohibit self-promotion |
| LinkedIn | B2B, professional workflow, or founder-story angle; the builder's network is relevant | Consumer/dev-only product with no professional-network overlap |
| X/Twitter | The builder can show it visually and reply in threads; build-in-public angle | The builder will not be present to reply, or has no visual proof |
| GitHub / ecosystem | Open source, SDK, CLI, MCP server, library, plugin | Closed product with nothing to inspect or install |
| Newsletters / podcasts / YouTube | There is a genuine lesson or story an audience would learn from | It is only a product announcement with no takeaway |

Fewer, well-fit platforms the builder can actually host beat a full sweep they cannot.

## Optimal-Time Heuristics By Platform

Anchor each to the audience's timezone. Where a platform has a hard mechanic (Product Hunt's daily reset), respect the mechanic first.

- **Product Hunt** - Launches run on a 24-hour cycle that resets at **12:01 AM PT**. Posting at or just after 12:01 AM PT gives the full day on the board. Weekdays (Tue–Thu) bring the most traffic but the most competition; weekends are quieter both ways. Decide that tradeoff with the builder. The builder must be awake and replying through the day, so a launch in their deep night is a real cost to weigh.
- **Show HN** - Aim for when HN's US-heavy audience is active: roughly weekday **US mornings, ~7–10 AM PT / 10 AM–1 PM ET**. Higher traffic also means more competing posts, so being present to reply for the first few hours matters more than hitting an exact minute. Never post and leave.
- **Reddit / communities** - Timing is per-subreddit, not global. Aim for the target community's peak activity (often US morning and evening for US-centric subs), but verify the specific sub. Re-read the sub's rules in-app right before posting.
- **LinkedIn** - Professional audience: weekday **Tue–Thu, mid-morning in the audience's business timezone (~8–10 AM local)** is a common default. Pre-scheduling is fine; LinkedIn does not need live hosting the way HN does.
- **X/Twitter** - Favor weekday **US daytime windows** for a US audience, and spread a sequence across the day rather than dumping it at once. Reply windows matter more than the exact minute - schedule around when the builder can actually engage.
- **GitHub release** - Timing is about **sequencing**, not a magic hour: publish the release before the Show HN / Product Hunt post so every link resolves to something real.
- **Newsletters / podcasts / email pitches** - Async. Send **Tue–Thu mornings in the recipient's timezone** as a default; the reply, not the send-minute, is what matters.
- **Direct DMs** - Async and personal. Send during the recipient's waking hours; personalization beats timing every time.

## Timezone Strategy

- Establish the **audience's** primary timezone early (ask in the intake). Most indie launches skew US, so US clock times are frequently the target even when the builder is elsewhere.
- For every scheduled post, record **both** times: the target-audience time and the builder's local time. This makes conflicts visible.
- When the optimal audience window lands in the builder's night, surface the tradeoff honestly and offer two options:
  1. **Post live at the awkward local hour** on surfaces that need live replies (Show HN, Reddit, Product Hunt).
  2. **Pre-schedule and reply asynchronously**, checking in across the builder's waking hours.
- Watch for rare wins: sometimes one platform's optimal slot (e.g. LinkedIn for the builder's own network, or a Product Hunt reset) lands neatly in the builder's daytime - take those live.

## Live Vs Pre-Scheduled

- **Post live** where the builder must host the conversation and reply fast: Show HN, Reddit/community threads, Product Hunt.
- **Pre-schedule** the broadcast posts that do not need immediate back-and-forth: the X sequence, the LinkedIn post. Use each platform's **native scheduler** where possible.
- The point of pre-scheduling is to free the builder to host the live threads, not to automate away their presence. The agent drafts and the builder schedules and posts - no auto-posting on the builder's behalf.

## Waves And Spacing

- Never make the builder host two live threads at the same moment. Stagger the live posts.
- Lead with the single most important surface (usually the primary discovery channel), then release secondary posts in waves across the day.
- Leave room to reply. A slower, well-hosted launch beats a simultaneous blast the builder cannot keep up with.
- Hold one post for late in the day: a short, honest "launch day so far" update once there are real numbers and questions.

## Turn It Into A Schedule

Write the result into `templates/launch-schedule.md`: the chosen platforms with their fit reason, the optimal window for each (audience time + builder local time), whether each is live or pre-scheduled, and the ordered wave sequence. That file is the single timed plan the builder runs on launch day.
