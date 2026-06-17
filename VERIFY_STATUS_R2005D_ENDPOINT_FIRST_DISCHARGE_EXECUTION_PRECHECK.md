# VERIFY STATUS: R2005D Endpoint First Discharge Execution Precheck

Prepared for Codespaces verification.

Expected check:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R2005D_ENDPOINT_FIRST_DISCHARGE_EXECUTION_PRECHECK.txt
```

Expected result: `Build completed successfully (... jobs)`. Stop if the job count is below 273 jobs.
