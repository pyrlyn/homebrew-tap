# pyrlyn/homebrew-tap

Homebrew tap for listepo tools.

```bash
brew tap pyrlyn/tap
brew install --cask ketch     # existing
brew install --cask mailune  # arm64 macOS app; no Intel cask
brew install rtok           # formula synced from pyrlyn/rtok releases
```

`Casks/ketch.rb` is updated by ketch's release workflow.
`Formula/rtok.rb` is updated by [.github/workflows/sync-rtok.yml](.github/workflows/sync-rtok.yml):
it downloads the formula artifact from the latest `pyrlyn/rtok` GitHub Release and opens a PR.
No `HOMEBREW_TAP_TOKEN` — the workflow runs in this repo with `GITHUB_TOKEN`.
