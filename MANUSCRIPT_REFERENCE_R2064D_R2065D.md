# Manuscript Reference — R2064D/R2065D

This note links the Lean-side R2064D/R2065D layers to the manuscript-side endpoint-first concrete-obligation branch.

## R2064D

```text
R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
```

R2064D supplies the minimal witness proof term required by the R2062D witness kernel.  It is no longer only a Boolean readiness marker: the witness term and its kernel witness-obligation proof are Lean fields.

## R2065D

```text
R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
```

R2065D supplies the remaining checker inputs and records the checker-kernel execution proof.  It exports a derivation of the R2063D attempt statement, but it still does not assert RH or full local-discharge certificate export.

## Non-claim boundary

These layers do not claim:

```text
RH proved
full RH formalization completed
local discharge certificate exported to the final endpoint branch
```
