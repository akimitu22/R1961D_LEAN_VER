# R1997D Endpoint Executable Proof-Kernel Stub Ledger

## Role

R1997D refines the R1996D endpoint executable kernel boundary into an endpoint
executable proof-kernel stub and dependency plan.

## Center layer

- `R1997DLeanEndpointExecutableProofKernelStub`
- Center bridge theorem:
  `R1997DLeanEndpointExecutableProofKernelStub.endpoint_executable_proof_kernel_stub_to_actual_li_target`

## Non-claim boundary

This layer records the first explicit stub boundary for a later executable
endpoint proof-kernel body. It does not implement or execute an endpoint proof
kernel, discharge an endpoint estimate, prove an explicit formula, or prove RH.

## Import-spine guard

The aggregate file explicitly imports:

```lean
import R1996DLeanEndpointExecutableKernelBoundary
```

so the R1996D aggregate spine remains reachable from the R1997D default target.
