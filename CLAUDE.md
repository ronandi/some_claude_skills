# CLAUDE.md - Some Claude Skills

## What This Is

A curated collection of 190+ production-ready Claude Code skills, packaged for distribution as a Claude Code plugin.

**This repo**: `ronandi/some_claude_skills` — skills-only fork for plugin distribution
**Upstream**: `curiositech/some_claude_skills` — the original gallery website (Docusaurus + Win31 aesthetic)

The upstream repo is ~600MB with a full website, images, audio, and broken git submodules. It cannot be imported as a Claude Code plugin. This fork exists to provide a clean, lightweight package of just the skills.

## Structure

```
.claude/
├── skills/          # 191 skills — each is a self-contained folder
│   └── <skill>/
│       ├── SKILL.md        # Skill definition (frontmatter + content)
│       ├── references/     # Optional supporting docs
│       └── CHANGELOG.md    # Optional change history
└── skills.zip       # Pre-packaged bundle of all skills
```

## Adding a Skill

1. Create a folder in `.claude/skills/<skill-name>/`
2. Add `SKILL.md` with frontmatter (`name`, `description`, `metadata.filePattern`, `metadata.bashPattern`)
3. Optionally add `references/` for supporting material
4. Commit

## Installing Skills

### As a Plugin

```bash
claude plugin add ronandi/some_claude_skills
```

### Manual

```bash
git clone git@github.com:ronandi/some_claude_skills.git
cp -r some_claude_skills/.claude/skills/* ~/.claude/skills/
```
