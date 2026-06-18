# VERIFY_STATUS R2037D endpoint final package closure boundary

Expected Codespaces validation:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R2037D_ENDPOINT_FINAL_PACKAGE_CLOSURE_BOUNDARY.txt
```

Expected job count after R2035D: about 443 jobs.
Stop if the job count drops below 433.
