# homebrew-vibesafer

Homebrew tap for [vibesafer](https://github.com/jjjkkkjjj/vibesafer).

## Install

```bash
brew tap jjjkkkjjj/vibesafer
brew install vibesafer
```

## How the formula stays up to date

When a new release tag is pushed to the main `vibesafer` repo, its CI:

1. Builds binaries for macOS (ARM + Intel) and Linux
2. Uploads versioned **and** version-free tarballs to GitHub Releases
3. Dispatches a `repository_dispatch` event (`type: release`) to this repo

The `update-formula.yml` workflow in this repo then:

1. Downloads all three tarballs from the new release
2. Computes `sha256` for each
3. Rewrites `Formula/vibesafer.rb` (version + sha256 fields)
4. Commits and pushes — Homebrew users get the update on next `brew upgrade`

## Required secret

Add a GitHub Personal Access Token (PAT) with `Contents: write` permission on **this repo** as a secret named `HOMEBREW_TAP_TOKEN` in **both** this repo (for the push in `update-formula.yml`) and in the main `vibesafer` repo (for the `repository_dispatch` request).
