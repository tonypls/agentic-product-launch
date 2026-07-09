#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
em_dash="$(printf '\342\200\224')"

if git -C "$repo_root" grep -n -I -- "$em_dash" -- .; then
  printf '\nFound em dash characters (U+2014). Replace them with hyphens, colons, commas, or sentence breaks.\n' >&2
  exit 1
fi
