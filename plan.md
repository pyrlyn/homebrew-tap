# homebrew-tap

<https://github.com/pyrlyn/homebrew-tap>

Homebrew tap distributing listepo tools: the `ketch` cask (updated by ketch's release workflow) and the `rtok` formula.

| # | Status | Priority | Complexity | Readiness | Agent |
| --- | --- | --- | --- | --- | --- |
| T1 | todo | P1 | 1 | 0% | |
| T4 | in progress | P2 | 2 | 70% | Cursor / grok 4.7 |

### T1. Fix stale README: the sync workflow it describes was removed

`README.md` says `Formula/rtok.rb` is updated by `.github/workflows/sync-rtok.yml`, but that workflow was deleted in commit `dc0bd49` ("Remove unused sync-rtok GitHub Actions workflow") and no `.github` directory exists. The formula is maintained by hand and stays pinned at 0.1.0. Done means: either the automation is restored (sync workflow, or a release hook in rtok) or the README is rewritten to describe the real manual process. While there, confirm which remote is canonical: `origin` points at `listepo/homebrew-tap`, while the README and formula URLs point at the `pyrlyn` org.

### T4. Add rulebook files and formula smoke tests

The tap had `README.md`, `plan.md`, and `todo.md`, and no `AGENTS.md`, `done.md`, `roadmap.md`, `ideas.md`, or `toolchain.md`. `Formula/rtok.rb` and `Casks/ketch.rb` had no `test do` block.

Read the README, the cask, and the formula. Write the five docs from those files. Add a `test do` that runs `--version` on `bin/rtok`, and one that runs `--version` on the staged `ketch` binary (`stage_only` does not link it into the prefix). Do not change download URLs. Leave `brew test` unrun. The cask header says the next ketch release overwrites `Casks/ketch.rb`; the generator lives outside this repo.
