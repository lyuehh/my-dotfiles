#!/bin/sh

t=()

while IFS= read -r file; do
  [ ! -f "$file" ] && t+=("$file") && /usr/bin/touch "$file"
done <<<"$(printf '%s\n' "$@")"

$(/usr/bin/open -a /Applications/Emacs.app "$@") &

if [ ! -z "$t" ]; then
  $(/bin/sleep 10; for file in "${t[@]}"; do /bin/rm "$file"; done) &
fi
