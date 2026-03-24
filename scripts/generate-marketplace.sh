#!/bin/bash
# Generate .claude-plugin/plugin.json for each skill AND the root marketplace.json
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_DIR="$REPO_ROOT/skills"
MARKETPLACE_FILE="$REPO_ROOT/.claude-plugin/marketplace.json"

# Start marketplace.json
cat > "$MARKETPLACE_FILE" <<'HEADER'
{
  "name": "some-claude-skills",
  "version": "1.0.0",
  "description": "190+ production-ready skills for Claude Code.",
  "owner": {
    "name": "ronandi"
  },
  "metadata": {
    "repository": "https://github.com/ronandi/some_claude_skills",
    "license": "MIT"
  },
  "plugins": [
HEADER

first=true
count=0

for skill_dir in "$SKILLS_DIR"/*/; do
  skill_name=$(basename "$skill_dir")
  skill_md="$skill_dir/SKILL.md"

  [ ! -f "$skill_md" ] && continue

  # Parse description from YAML frontmatter
  description=$(awk '
    /^---$/ { n++; next }
    n == 1 && /^description:/ {
      sub(/^description: */, "")
      desc = $0
      next
    }
    n == 1 && desc != "" && /^[a-zA-Z]/ { exit }
    n == 1 && desc != "" { gsub(/^  /, ""); desc = desc " " $0; next }
    END { print desc }
  ' "$skill_md")

  # Clean up description - escape quotes, trim
  description=$(echo "$description" | sed 's/"/\\"/g' | sed 's/[[:space:]]*$//')

  # Create per-skill .claude-plugin/plugin.json
  # Each skill dir IS the plugin root. SKILL.md is at root level.
  # We need a skills/ subdir for auto-discovery, so create a symlink.
  mkdir -p "$skill_dir/.claude-plugin"
  cat > "$skill_dir/.claude-plugin/plugin.json" <<EOF
{
  "name": "$skill_name"
}
EOF

  # Create skills/<name>/ subdir with symlink to SKILL.md for auto-discovery
  # Plugin auto-discovery looks for skills/*/SKILL.md
  target_dir="$skill_dir/skills/$skill_name"
  if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
    # Symlink SKILL.md
    ln -sf "../../SKILL.md" "$target_dir/SKILL.md"
    # Symlink references if they exist
    [ -d "$skill_dir/references" ] && ln -sf "../../references" "$target_dir/references"
  fi

  # Add to marketplace.json
  if [ "$first" = true ]; then
    first=false
  else
    printf ",\n" >> "$MARKETPLACE_FILE"
  fi

  printf '    {\n      "name": "%s",\n      "source": "./skills/%s",\n      "description": "%s"\n    }' \
    "$skill_name" "$skill_name" "$description" >> "$MARKETPLACE_FILE"

  count=$((count + 1))
done

# Close marketplace.json
cat >> "$MARKETPLACE_FILE" <<'FOOTER'

  ]
}
FOOTER

echo "Generated marketplace.json with $count plugin entries"
echo "Generated per-skill plugin.json and skills/ symlinks"
