# R2021D Lean support package

This package adds the R2020D/R2021D two-layer endpoint continuation.

- R2020D records endpoint first executable-attempt start-certificate slots.
- R2021D records endpoint first proof-kernel invocation boundary.

The default Lean target is `R2021DLeanEndpointFirstProofKernelInvocationBoundary`.

Non-claim boundary: these layers do not actually start an executable attempt, do not invoke or execute the endpoint proof kernel, do not discharge a concrete endpoint lemma, do not prove the endpoint estimate, do not prove the explicit formula, and do not prove RH.
