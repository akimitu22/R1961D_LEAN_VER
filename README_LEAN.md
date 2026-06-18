# R2013D Lean support package

This patch adds two endpoint-support layers:

- R2012D: endpoint first execution handoff payload slots
- R2013D: endpoint first discharge execution rehearsal boundary

The default target is `R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary`.

## Verification

Run:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R2013D_ENDPOINT_FIRST_DISCHARGE_EXECUTION_REHEARSAL_BOUNDARY.txt
```

Expected result:

```text
Build completed successfully (... jobs).
```

Stop if the job count drops below 313 jobs.

## Non-claim boundary

R2012D/R2013D do not execute the endpoint proof kernel, discharge a concrete endpoint lemma, prove the endpoint estimate, prove the explicit formula, or prove RH.
