# R2062D/R2063D combined Lean patch

This patch adds two proof-critical endpoint-first layers:

1. R2062D — `EndpointFirstConcreteObligationWitnessKernel`.
2. R2063D — `EndpointFirstConcreteObligationLocalDischargeAttempt`.

R2062D exposes the witness proof-term type, endpoint-estimate input, explicit-formula input, transfer input, local-discharge certificate type, and checker-kernel predicate as Lean-level data.

R2063D uses that kernel to expose the first local-discharge attempt and records the missing proof objects as unresolved Lean obligations. It provides only a conditional local-discharge route: the attempt statement follows if the witness, endpoint estimate, explicit formula, transfer, certificate, and checker obligations are supplied.

Neither layer claims a completed endpoint estimate, transfer, local discharge, RH proof, or full RH formalization.
