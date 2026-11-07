#!/bin/sh
# Render the public skills from the chezmoi source into skills/.
set -eu
cd "$(dirname "$0")"
rm -rf skills
for s in context-authoring handoff handoff-resume reflect; do
  mkdir -p "skills/$s"
  printf %s "{{ template \"skills/$s/SKILL.md\" (dict \"agent\" \"public\") }}" | chezmoi execute-template > "skills/$s/SKILL.md"
done
