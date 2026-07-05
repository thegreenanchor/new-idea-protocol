#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

required=(README.md PROTOCOL.md CREDIT.md LICENSE CHANGELOG.md scripts/scaffold.sh scripts/validate.sh)
for f in "${required[@]}"; do
  test -f "$f" || { echo "Missing required file: $f" >&2; exit 1; }
done

for d in prompts templates examples/personal-command-center guides adapters; do
  test -d "$d" || { echo "Missing required directory: $d" >&2; exit 1; }
done

# No private Jose paths outside the Hermes adapter.
if grep -RInE 'C:\\Users\\moveb|iCloudDrive|nameless' . --exclude-dir=.git --exclude='adapters/hermes.md' --exclude='validate.sh'; then
  echo "Private path found outside adapters/hermes.md" >&2
  exit 1
fi

# Obvious secret patterns.
if grep -RInE '(ghp_|gho_|xox[baprs]-|sk-[A-Za-z0-9]|API_KEY=.*[A-Za-z0-9]{12}|SECRET=.*[A-Za-z0-9]{12}|TOKEN=.*[A-Za-z0-9]{12})' . --exclude-dir=.git --exclude='validate.sh'; then
  echo "Secret-like pattern found" >&2
  exit 1
fi

# Keep em dash count low.
dash_count=$(grep -Roh '—' . --exclude-dir=.git | wc -l | tr -d ' ')
if [ "$dash_count" -gt 3 ]; then
  echo "Too many em dashes: $dash_count" >&2
  exit 1
fi

echo "Validation passed. Em dash count: $dash_count"
