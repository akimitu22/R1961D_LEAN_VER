# R1983D verification status

Status before Codespaces run: unverified in this environment.

Expected command:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1983D_MAIN_MANUSCRIPT_ANCHORED_VERIFICATION_SPINE.txt
```

Expected success condition:

```text
Build completed successfully (... jobs).
```

The exact job count is intentionally not fixed here because R1983D restores the
historical aggregate spine; the correct criterion is successful completion, not a
pre-guessed job number.
