# Verify Status: R1995D Endpoint First Executable Skeleton

Prepared for Codespaces verification.

Expected command:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1995D_ENDPOINT_FIRST_EXECUTABLE_SKELETON.txt
```

Expected condition: `Build completed successfully (... jobs)` and not fewer than 228 jobs.
