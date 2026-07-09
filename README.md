# Agentic Product Launch

**A launch playbook you and your coding agent run together.**

A launch system for agentic builders and anyone shipping products with AI - indie SaaS, apps, AI products, agents, and developer tools - when the builder has little or no existing audience.

The playbook is built around one idea: builders without an audience do not launch to followers, they launch through borrowed relevance. That means finding the communities, platforms, creators, maintainers, newsletters, and direct prospects who already gather around the problem, then showing up with proof that fits each place.

Agentic builders tend to ship fast and often, but without distribution. This playbook is the distribution half - and the same tools you build with help you run your launch, alongside you rather than instead of you.

## Run It With Your Agent

```bash
git clone https://github.com/tonypls/agentic-product-launch.git
cd agentic-product-launch
```

- **Claude Code:** open the repo and run `/launch-project <your project, URL, or repo>`. The command lives in [.claude/commands/launch-project.md](.claude/commands/launch-project.md).
- **Codex or any markdown-reading agent:** point the agent at [skills/launch-project/SKILL.md](skills/launch-project/SKILL.md) and describe your project.
- **No agent:** follow [PLAYBOOK.md](PLAYBOOK.md) by hand and fill in the [templates](templates/).

You and the agent run it together. It audits launch readiness, maps borrowed audiences, recommends the platforms and optimal posting times that fit *your* project, and interviews you to co-write launch copy in your own voice - then writes launch-day ops files into your repo, and, if you opt in and it has capture tools, records the launch video itself. It never hands you fill-in-the-blank posts: you bring the stories and the final words, you post, and you disclose.

## Worked Example

This repo launched itself. The unedited artifacts - launch brief, video brief, audience map, channel copy, launch log, reply bank, recap - are committed in [docs/launches/2026-07-07-self-launch/](docs/launches/2026-07-07-self-launch/), produced by running the skill on this repository.

## Start Here

1. Read [PLAYBOOK.md](PLAYBOOK.md) for the human operating manual.
2. Fill out [templates/launch-brief.md](templates/launch-brief.md), including the Voice & Story notes.
3. Plan your launch video in [templates/video-brief.md](templates/video-brief.md).
4. Build your target list in [templates/audience-map.md](templates/audience-map.md).
5. Co-write channel assets in [templates/channel-copy.md](templates/channel-copy.md) - answer the prompts, then draft in your own voice.
6. Schedule posts by platform and optimal time in [templates/launch-schedule.md](templates/launch-schedule.md).
7. Track launch day in [templates/launch-log.md](templates/launch-log.md).

## Agent Use

The portable source of truth is [skills/launch-project/references/launch-workflow.md](skills/launch-project/references/launch-workflow.md). Claude Code and Codex adapters point at that file instead of duplicating the workflow.

- Claude Code command: [.claude/commands/launch-project.md](.claude/commands/launch-project.md)
- Codex skill wrapper: [skills/launch-project/SKILL.md](skills/launch-project/SKILL.md)
- Co-writing guide (interview prompts, not templates): [skills/launch-project/references/co-writing-guide.md](skills/launch-project/references/co-writing-guide.md)
- Platform fit and scheduling: [skills/launch-project/references/scheduling.md](skills/launch-project/references/scheduling.md)
- Video production recipe (optional): [skills/launch-project/references/video-production.md](skills/launch-project/references/video-production.md)
- Agent-recorded capture runbook (opt-in): [skills/launch-project/references/agent-recording.md](skills/launch-project/references/agent-recording.md)

## Source Artifacts

The requirements and plan that shaped this toolkit live in:

- [docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md](docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md)
- [docs/plans/2026-06-17-launch-project-playbook-plan.md](docs/plans/2026-06-17-launch-project-playbook-plan.md)
- [docs/brainstorms/2026-06-17-product-launch-video-creation-flow-requirements.md](docs/brainstorms/2026-06-17-product-launch-video-creation-flow-requirements.md)
- [docs/plans/2026-06-17-001-feat-launch-video-creation-flow-plan.md](docs/plans/2026-06-17-001-feat-launch-video-creation-flow-plan.md)

## Limitations

- Guidance, not guarantees - launches still depend on the product and the builder showing up to reply.
- Platform rules drift; the workflow requires re-verifying official guidance at launch time.
- Agent-recorded video is opt-in and needs media tools plus a reachable product; when the preflight fails, the skill still produces the script, shot list, and cutdown specs for the builder to record.
- Co-creation, not automation. The agent interviews, co-drafts, and schedules with you, but you write the final words and you post. Automated posting, vote requests, and undisclosed promotion are out of scope by design.
- English-only for now.

## License

[MIT](LICENSE)

