# Agentic Product Launch

**A launch playbook your coding agent can run.**

A launch system for agentic builders and anyone shipping products with AI — indie SaaS, apps, AI products, agents, and developer tools — when the builder has little or no existing audience.

The playbook is built around one idea: builders without an audience do not launch to followers, they launch through borrowed relevance. That means finding the communities, platforms, creators, maintainers, newsletters, and direct prospects who already gather around the problem, then showing up with proof that fits each place.

Agentic builders tend to ship fast and often, but without distribution. This playbook is the distribution half — and it is runnable by an agent, so the same tools you build with can run your launch.

## Run It With Your Agent

```bash
git clone https://github.com/tonypls/agentic-product-launch.git
cd agentic-product-launch
```

- **Claude Code:** open the repo and run `/launch-project <your project, URL, or repo>`. The command lives in [.claude/commands/launch-project.md](.claude/commands/launch-project.md).
- **Codex or any markdown-reading agent:** point the agent at [skills/launch-project/SKILL.md](skills/launch-project/SKILL.md) and describe your project.
- **No agent:** follow [PLAYBOOK.md](PLAYBOOK.md) by hand and fill in the [templates](templates/).

The agent audits launch readiness, maps borrowed audiences, drafts channel-native copy, and writes launch-day ops files into your repo. It drafts; you post and disclose.

## Worked Example

This repo launched itself. The unedited artifacts — launch brief, video brief, audience map, channel copy, launch log, reply bank, recap — are committed in [docs/launches/2026-07-14-self-launch/](docs/launches/2026-07-14-self-launch/), produced by running the skill on this repository.

## Start Here

1. Read [PLAYBOOK.md](PLAYBOOK.md) for the human operating manual.
2. Fill out [templates/launch-brief.md](templates/launch-brief.md).
3. Plan your launch video in [templates/video-brief.md](templates/video-brief.md).
4. Build your target list in [templates/audience-map.md](templates/audience-map.md).
5. Draft channel assets using [templates/channel-copy.md](templates/channel-copy.md).
6. Track launch day in [templates/launch-log.md](templates/launch-log.md).

## Agent Use

The portable source of truth is [skills/launch-project/references/launch-workflow.md](skills/launch-project/references/launch-workflow.md). Claude Code and Codex adapters point at that file instead of duplicating the workflow.

- Claude Code command: [.claude/commands/launch-project.md](.claude/commands/launch-project.md)
- Codex skill wrapper: [skills/launch-project/SKILL.md](skills/launch-project/SKILL.md)
- Copy templates for agents: [skills/launch-project/references/copy-templates.md](skills/launch-project/references/copy-templates.md)
- Video production recipe (optional): [skills/launch-project/references/video-production.md](skills/launch-project/references/video-production.md)

## Source Artifacts

The requirements and plan that shaped this toolkit live in:

- [docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md](docs/brainstorms/2026-06-17-launch-project-playbook-requirements.md)
- [docs/plans/2026-06-17-launch-project-playbook-plan.md](docs/plans/2026-06-17-launch-project-playbook-plan.md)
- [docs/brainstorms/2026-06-17-product-launch-video-creation-flow-requirements.md](docs/brainstorms/2026-06-17-product-launch-video-creation-flow-requirements.md)
- [docs/plans/2026-06-17-001-feat-launch-video-creation-flow-plan.md](docs/plans/2026-06-17-001-feat-launch-video-creation-flow-plan.md)

## Limitations

- Guidance, not guarantees — launches still depend on the product and the builder showing up to reply.
- Platform rules drift; the workflow requires re-verifying official guidance at launch time.
- Video capture needs the builder or an agent with media tools; the skill always produces the script, shot list, and cutdown specs.
- The agent drafts; a human posts. Automated posting, vote requests, and undisclosed promotion are out of scope by design.
- English-only for now.

## License

[MIT](LICENSE)

