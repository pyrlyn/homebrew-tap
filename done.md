# Done

### T3. Add the required project files

The project was missing `AGENTS.md`, `done.md`, `roadmap.md`, `ideas.md`, and `toolchain.md`. Done means: all files exist, with the tap's actual toolchain (brew, git) listed in `toolchain.md`.

Those files are in the repo root. `toolchain.md` lists brew and git. The formula and cask smoke tests stay on T4 until `brew test` is run.

### T2. Drop Intel macOS variants or confirm they are still published

Workspace policy removed `x86_64-apple-darwin` from all projects, but `Casks/ketch.rb` still declares an `intel: "x86_64"` sha256 and `Formula/rtok.rb` still has an Intel macOS block. If the ketch and rtok release pipelines no longer publish `x86_64-apple-darwin` artifacts, those URLs 404 for Intel Mac users. Done means: either the Intel blocks are removed from the cask template (`scripts/cask.sh` in ketch) and the rtok formula generator, or it is documented that Intel artifacts are still published deliberately.

The Intel blocks are gone: commit `5e1e869` (#3) removed the Intel macOS url and install branch from `Formula/rtok.rb` (the Linux x86_64 branch stays) and left `Casks/ketch.rb` with the arm64 tarball and `depends_on arch: :arm64`. ketch's `scripts/cask.sh` emits no Intel variant, as the 0.10.0 cask from #4 shows, and rtok's `dist-workspace.toml` builds no `x86_64-apple-darwin` artifact.
