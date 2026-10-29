#!/bin/sh
# Keeps the owner's personal e-mail out of this public repository.
#
# Public commits are made as "Daniel Mont Ferrandiz <dev@mainshai.com>". This
# script refuses the personal address in authors, committers, commit messages
# and file contents. Used by the hooks in .githooks/ and by the GitHub Actions
# workflow .github/workflows/identity.yml.
#
#   check-identity.sh staged          pre-commit: identity + staged files
#   check-identity.sh msg <file>      commit-msg: the message being written
#   check-identity.sh range <revs>    pre-push: commits in <revs> (rev-list args)
#   check-identity.sh ci <revs>       CI: same as range, without the allowlist
#
# The address is assembled here so this file never contains it whole.

set -eu

personal_user=dferrandizmont
personal_domain=gmail.com
personal="$personal_user@$personal_domain"
public_email=dev@mainshai.com
# Commits edited on github.com are committed by GitHub itself.
github_committer=noreply@github.com

fail=0

say() { printf '%s\n' "$*" >&2; }

flag() {
  say "identity check: $*"
  fail=1
}

lower() { printf '%s' "$1" | tr '[:upper:]' '[:lower:]'; }

# Shell pattern matching, not grep: Git for Windows' grep can abort when it
# runs many times in a loop, and an aborted grep must not read as "clean".
contains_personal() {
  case "$(lower "$1")" in
    *"$personal"*) return 0 ;;
  esac
  return 1
}

check_ident() {
  # $1 = what (author/committer), $2 = e-mail, $3 = allowed list (space separated) or empty
  what=$1
  email=$(lower "$2")
  allowed=$3
  if contains_personal "$email"; then
    flag "$what e-mail is the personal address; use $public_email"
    return
  fi
  [ -z "$allowed" ] && return
  for a in $allowed; do
    [ "$email" = "$a" ] && return
  done
  flag "$what e-mail <$email> is not allowed; public commits use $public_email"
}

ident_email() {
  # "Name <email> 123 +0100" -> email
  printf '%s' "$1" | sed -n 's/.*<\(.*\)>.*/\1/p'
}

check_commit() {
  # $1 = sha, $2 = 1 to apply the allowlist
  sha=$1
  short=$(git rev-parse --short "$sha")
  ae=$(git log -1 --format=%ae "$sha")
  ce=$(git log -1 --format=%ce "$sha")
  if [ "$2" = 1 ]; then
    check_ident "author of $short" "$ae" "$public_email"
    check_ident "committer of $short" "$ce" "$public_email $github_committer"
  else
    check_ident "author of $short" "$ae" ""
    check_ident "committer of $short" "$ce" ""
  fi
  if contains_personal "$(git log -1 --format=%B "$sha")"; then
    flag "message of $short contains the personal address"
  fi
  # git grep exits 1 when nothing matches and 2+ on errors: an error fails the check.
  set +e
  hits=$(git grep -a -i -l -F -e "$personal" "$sha" -- . ':!.githooks/check-identity.sh' 2>/dev/null)
  rc=$?
  set -e
  if [ "$rc" -gt 1 ]; then
    flag "could not search the files of $short"
  elif [ -n "$hits" ]; then
    flag "files in $short contain the personal address:"
    printf '%s\n' "$hits" | sed "s|^$sha:|  |" >&2
  fi
}

check_range() {
  # $1 = 1 to apply the allowlist, rest = rev-list arguments
  strict=$1
  shift
  for sha in $(git rev-list "$@"); do
    check_commit "$sha" "$strict"
  done
}

mode=${1:-}
case "$mode" in
  staged)
    check_ident "author" "$(ident_email "$(git var GIT_AUTHOR_IDENT)")" "$public_email"
    check_ident "committer" "$(ident_email "$(git var GIT_COMMITTER_IDENT)")" "$public_email $github_committer"
    set +e
    hits=$(git grep --cached -a -i -l -F -e "$personal" -- . ':!.githooks/check-identity.sh' 2>/dev/null)
    rc=$?
    set -e
    if [ "$rc" -gt 1 ]; then
      flag "could not search the staged files"
    elif [ -n "$hits" ]; then
      flag "staged files contain the personal address:"
      printf '  %s\n' $hits >&2
    fi
    ;;
  msg)
    if contains_personal "$(sed '/^#/d' "$2")"; then
      flag "the commit message contains the personal address"
    fi
    ;;
  range)
    shift
    check_range 1 "$@"
    ;;
  ci)
    shift
    check_range 0 "$@"
    ;;
  *)
    say "usage: $0 staged | msg <file> | range <revs> | ci <revs>"
    exit 2
    ;;
esac

if [ "$fail" -ne 0 ]; then
  say "Fix: git config user.email $public_email (in this repo), then amend or rewrite the commits."
  exit 1
fi
