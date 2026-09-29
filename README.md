# AgenticOS

AgenticOS is the personal AI operating environment I am building as a young
builder from Belgium.

It started with a simple problem: a normal AI conversation forgets too much,
while my projects, decisions, goals, learning and daily life are connected.
AgenticOS is the layer around that work — a system that can remember context,
understand what I am working on, help me execute real tasks and improve through
continued use.

This repository is both a software workspace and a living knowledge system. It
contains persistent memory, project context, instructions, skills, research,
logs, automations and personal notes. The files are maintained in Obsidian and
synced to GitHub so the system can remain useful as a live, evolving reference
for both me and the AI systems I work with.

## What I am building

AgenticOS connects several areas of my work instead of treating them as
separate projects:

- **Rocadelo HR** — an AI recruiting system I am building with my cofounder
  Matias Rodriguez. I work on the technical architecture, agent systems and
  infrastructure; Matias focuses on recruiting, sales and client relationships.
- **AI automation and software products** — automation systems, websites,
  internal tools and content workflows built around real use cases.
- **Examencommissie OS** — a structured learning environment for the Flemish
  Examencommissie, with curriculum objectives, theory, exercises, flashcards,
  progress tracking and local AI assistance.
- **JARVIS** — a broader personal agent and execution layer that connects
  memory, tools, local models, projects and autonomous workflows.

The projects feed into one another. Building a learning system teaches me about
education and knowledge design; building businesses teaches me about workflows
and execution; building agents teaches me how those systems can become more
useful over time.

## The idea

AgenticOS is not meant to be another chatbot. The long-term direction is an
intelligent layer around the person using it:

1. **Remember** relevant context instead of restarting every conversation.
2. **Understand** projects, goals, constraints and relationships between ideas.
3. **Plan** work in a way that fits the current situation.
4. **Execute** through tools, automations and specialised agents.
5. **Learn** from results, corrections and previous decisions.
6. **Stay honest** about uncertainty, permissions and what was actually done.

The system should be able to move between learning, building, research and
business without losing the larger picture.

## Repository structure

```text
AgenticOS/
├── README.md              # public entry point and system overview
├── CLAUDE.md              # working rules for coding agents
├── log.md                 # chronological system activity
├── wiki/                  # synthesised knowledge and long-term context
├── memory/                # active projects, contacts and daily notes
├── gesprekken/            # archived AI conversations by tool and topic
├── bronnen/               # collected research and source material
├── skills/                # instructions for recurring tools and workflows
├── automations/           # webhooks and automation documentation
├── dashboard/             # quick daily navigation
└── templates/             # reusable Obsidian templates
```

For personal context, start with `memory/projects.md` and `wiki/index.md`.
For technical work, read `CLAUDE.md` and the relevant project or skill files.
For a current timeline, read `log.md` and the latest daily note.

## How the knowledge system works

The repository has two complementary layers:

- **Raw context:** conversations, daily notes, research and logs preserve what
  actually happened.
- **Synthesised context:** wiki pages, project notes and skills turn that raw
  material into information that can be reused.

The system is intentionally living. It changes as I learn, build and discover
which parts of an agentic environment are genuinely useful. Important updates
should be reflected in the relevant project note and in the log, rather than
being left only inside one conversation.

## Working principles

- Context matters more than generic assumptions.
- Projects should share useful knowledge without becoming one tangled codebase.
- Agents should use the smallest capable model for each task.
- Simple choices can use fast typed decision models; generation and deeper
  reasoning should go to models designed for those jobs.
- External actions require clear scope, permissions and an auditable result.
- Uncertainty should be visible instead of being hidden behind confident text.
- The system should remain understandable and usable by its human owner.

## Current status

AgenticOS is an early, active system rather than a finished product. Parts of
it are already useful every day; other parts are experiments, prototypes or
design directions. This repository is intentionally open-ended because the
best architecture is being discovered through building and using it.

The goal is not to pretend that the system is already autonomous or complete.
The goal is to keep turning real work, real mistakes and real learning into a
better personal operating environment.

## Sync and live use

The repository is maintained from the Obsidian vault and synchronised with
GitHub. That makes the repository a live reference rather than a static
portfolio page. Changes should be reviewed with the same care as code: avoid
committing secrets, private credentials or temporary machine state.

The canonical public repository is:

<https://github.com/daydragon20/AgenticOS>

---

AgenticOS is infrastructure for the way I work: a place where knowledge,
experiments, projects and collaboration with AI can compound over time.
