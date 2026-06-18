# R2017D Lean support package

This package adds the R2016D/R2017D two-layer endpoint continuation.

- R2016D records endpoint first execution-witness validation slots.
- R2017D records endpoint first executable-attempt shell boundary.

The default Lean target is `R2017DLeanEndpointFirstExecutableAttemptShellBoundary`.

Non-claim boundary: these layers do not validate or supply witnesses, do not start an executable attempt, do not execute the endpoint proof kernel, do not discharge a concrete endpoint lemma, and do not prove RH.
