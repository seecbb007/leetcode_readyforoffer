#!/usr/bin/env bash
set -euo pipefail

# Create a new day folder under days/YYYY-MM-DD/.
# Usage:
#   ./scripts/new_day.sh            # uses today's date
#   ./scripts/new_day.sh 2026-01-17 # uses a specific date

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DATE_STR="${1:-$(date +%F)}"
DAY_DIR="${ROOT_DIR}/days/${DATE_STR}"

mkdir -p "${DAY_DIR}/images"

if [[ ! -f "${DAY_DIR}/README.md" ]]; then
  cat > "${DAY_DIR}/README.md" <<EOF
# ${DATE_STR}

## Problems

- (add links to lcXXXX.md here)

## Notes

- (optional)
EOF
fi

echo "Created: ${DAY_DIR}"
echo "Next:"
echo "  - Add a note: cp \"${ROOT_DIR}/templates/problem.md\" \"${DAY_DIR}/lcXXXX.md\""
echo "  - Put screenshots in: \"${DAY_DIR}/images/\" and reference them via ./images/..."

