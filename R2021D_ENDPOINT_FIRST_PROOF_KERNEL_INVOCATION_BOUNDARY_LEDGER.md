# R2021D endpoint first proof-kernel invocation boundary ledger

Center layer: `R2021DLeanEndpointFirstProofKernelInvocationBoundary`.

Center theorem:

```lean
R2021DLeanEndpointFirstProofKernelInvocationBoundary.endpoint_first_proof_kernel_invocation_boundary_to_actual_li_target
```

R2021D refines the R2020D start-certificate slots into a proof-kernel invocation boundary. It is still a boundary/interface layer: it records the formal boundary for a later invocation but does not invoke or execute the endpoint proof kernel.

Non-claim boundary: this layer does not start an executable attempt in the substantive sense, does not invoke or execute the endpoint proof kernel, does not discharge a concrete endpoint lemma, does not prove an endpoint estimate, does not prove the explicit formula, and does not prove RH.
