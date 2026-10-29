# Maintaining this repository

Public information about Mochila (READMEs, changelog, images, issue forms). The app's code lives in a private repository.

## Identity: public commits only as dev@mainshai.com

Every commit here is authored and committed as `Daniel Mont Ferrandiz <dev@mainshai.com>`. The owner's personal address must never appear in an author, committer, commit message or file.

After cloning, run once in this folder:

```sh
git config user.name "Daniel Mont Ferrandiz"
git config user.email dev@mainshai.com
git config core.hooksPath .githooks
```

- `.githooks/pre-commit` and `.githooks/commit-msg` refuse a commit with another identity or with the personal address in a staged file or the message.
- `.githooks/pre-push` checks every commit about to be pushed, including any made with `--no-verify`.
- `.github/workflows/identity.yml` runs the same check (`.githooks/check-identity.sh`) on GitHub for every push and pull request.

Content copied from the private repository (the changelog, screenshots) goes through the same checks when it is committed here.
