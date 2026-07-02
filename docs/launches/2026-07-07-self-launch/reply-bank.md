# Reply Bank — Agentic Product Launch (self-launch)

> Worked example produced by the skill. Answer the actual comment first; these are starting points for the objections this launch will most likely draw.

## "Isn't this just generic marketing advice in a repo?"

```text
Fair test. Two things are different: it's executable (your agent runs the readiness gate and drafts against your actual repo, not a persona worksheet), and it's opinionated about permission — it scores every channel by whether self-promotion is actually allowed and refuses the spam patterns. The committed worked example is the evidence either way: docs/launches/ shows real output, judge it there.
```

## "AI-drafted launch posts are exactly the slop ruining HN/Reddit."

```text
Agree that's the failure mode — it's why the workflow bans automated posting entirely. The agent drafts from your repo's real details; a human edits, posts, and discloses. It also front-loads a readiness gate so the answer is often "don't post yet, fix the product." If this post reads like slop, that's a real data point and I'd like to know which part.
```

## "Launching is easy; retention/product quality is the hard part."

```text
True for products with distribution. The playbook targets the earlier failure: projects that die with zero users, where nobody ever arrives to churn. It won't fix retention — the recap step explicitly asks whether the next goal is activation or retention and tells you to stop launching if the product isn't holding people.
```

## "Does it work with Codex / Cursor / other agents?"

```text
The workflow is one portable markdown file; Claude Code and Codex adapters ship in the repo (the Codex wrapper is less battle-tested — flagged in limitations). Any agent that reads markdown can follow it, and the playbook + templates work fully by hand with no agent.
```

## "Won't this get people banned from communities?"

```text
The opposite is the design goal: every target is scored allowed/unclear/prohibited, "unclear" means read the rules in-app before posting, maker disclosure is mandatory in every draft, and vote requests/DM blasts are refused outright. If you find a draft that violates a specific community's rules, that's a bug — file it.
```

## "Why is there no [X] channel (TikTok, Discord ads, cold email)?"

```text
Scope choice: it covers channels where borrowed relevance works for no-audience builders — communities, HN, PH, direct outreach to named people, amplifiers. Mass-outreach channels are excluded on purpose because they only work with volume or budget, and usually against the rules I'm not willing to encode workarounds for. What's the channel that worked for you? Genuinely want to know if it belongs.
```

## "The output was generic for my project."

```text
That's the main failure mode I'm hunting. It usually means the repo/README gave the agent too little to work with — but sometimes the templates are just weak. Can you share what it produced and what it missed? Repeated reports become playbook changes, and I'll credit you.
```

## Bug

```text
Thanks for catching this. I can reproduce / I'm investigating. Expected behavior is [expected]. I'll update this thread when it's fixed — repeated issues go straight into the playbook's known limitations.
```

## Pricing / "what's the catch?"

```text
Free, MIT, no signup, no upsell waiting. It's a playbook I wanted to exist; if it gets traction the roadmap is more worked examples and better channel coverage, not a paid tier.
```

## Privacy / "what does it send where?"

```text
Nothing leaves your machine because of the playbook — it's markdown your agent reads locally, and outputs are files in your repo. Your agent's own API calls are governed by whatever agent you run it with.
```

## Roadmap

```text
Next: more worked examples on real launches (not just this repo's), tightening the Codex parity, and folding launch-week feedback into the anti-patterns section. What would make it a must-run before your next launch?
```
