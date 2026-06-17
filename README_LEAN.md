# R2005D Lean support package

This combined patch adds two endpoint-discharge interface layers:

- R2004D: endpoint first-discharge attempt input slots
- R2005D: endpoint first-discharge execution precheck

The default target is `R2005DLeanEndpointFirstDischargeExecutionPrecheck`.

## Verification

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R2005D_ENDPOINT_FIRST_DISCHARGE_EXECUTION_PRECHECK.txt
```

Expected: `Build completed successfully (... jobs)`. Stop if fewer than 273 jobs are built.

## Non-claim boundary

This package does not run the endpoint proof kernel, does not discharge a concrete endpoint lemma, does not prove the endpoint estimate, does not prove the explicit formula, and does not prove RH.
