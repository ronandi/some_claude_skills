# CLAUDE.md - Some Claude Skills

## What This Is

A curated collection of 190+ production-ready Claude Code skills, packaged as a plugin marketplace.

**This repo**: `ronandi/some_claude_skills` — skills-only fork for plugin distribution
**Upstream**: `curiositech/some_claude_skills` — the original gallery website (Docusaurus + Win31 aesthetic)

The upstream repo powers a full gallery website at someclaudeskills.com and includes media assets and submodules, making it larger than what `claude plugin add` supports. This fork extracts just the skills for lightweight plugin distribution.

## Structure

```
.claude-plugin/
├── plugin.json           # Root plugin manifest
└── marketplace.json      # Marketplace with 191 individually installable skills
skills/
└── <skill-name>/
    ├── .claude-plugin/
    │   └── plugin.json   # Per-skill plugin manifest (generated)
    ├── skills/
    │   └── <skill-name>/
    │       ├── SKILL.md → ../../SKILL.md    # Symlink for auto-discovery
    │       └── references → ../../references
    ├── SKILL.md           # Skill definition (source of truth)
    ├── references/        # Optional supporting docs
    └── CHANGELOG.md       # Optional change history
scripts/
└── generate-marketplace.sh  # Regenerates marketplace.json + per-skill manifests
```

## Regenerating Marketplace

After adding or removing skills:

```bash
./scripts/generate-marketplace.sh
```

## Adding a Skill

1. Create `skills/<skill-name>/SKILL.md` with frontmatter
2. Optionally add `references/` for supporting material
3. Run `./scripts/generate-marketplace.sh`
4. Commit
