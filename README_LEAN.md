# R2019D Lean support package

This package adds the R2018D/R2019D two-layer endpoint continuation.

- R2018D records endpoint first executable-attempt input slots.
- R2019D records endpoint first executable-attempt start boundary.

The default Lean target is `R2019DLeanEndpointFirstExecutableAttemptStartBoundary`.

Non-claim boundary: these layers do not start an executable attempt, do not validate or supply witnesses, do not execute the endpoint proof kernel, do not discharge a concrete endpoint lemma, and do not prove RH.
