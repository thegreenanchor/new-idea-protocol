#!/usr/bin/env bash
set -euo pipefail

target="${1:-}"
if [ -z "$target" ]; then
  echo "Usage: bash scripts/scaffold.sh <target-directory>" >&2
  exit 2
fi

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$target"
cp -R "$repo_dir/templates" "$target/"
cp -R "$repo_dir/prompts" "$target/"
mkdir -p "$target/ideas/001-my-idea"
for f in RAW-IDEA QUESTIONS SPEC ASSUMPTIONS DECISIONS WIZARD-OF-OZ HANDOFF; do
  cp "$repo_dir/templates/$f.md" "$target/ideas/001-my-idea/$f.md"
done
printf 'Scaffolded New Idea Protocol into %s\n' "$target"
