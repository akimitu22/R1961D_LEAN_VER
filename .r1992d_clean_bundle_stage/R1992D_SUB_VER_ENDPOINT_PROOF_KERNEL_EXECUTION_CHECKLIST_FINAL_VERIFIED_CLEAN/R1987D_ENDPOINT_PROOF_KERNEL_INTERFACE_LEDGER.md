# R1987D Endpoint Proof-Kernel Interface Ledger

## Purpose

R1987D is the twenty-sixth continuation step.  It keeps the R1983D
main-manuscript anchored verification spine, the R1984D queue, the R1985D
endpoint implementation block, and the R1986D endpoint statement group intact.
It then records the first endpoint proof-kernel interface and a dependency
interface for later concrete proof-file work.

## Added Lean layer

```text
R1987DLeanEndpointProofKernelInterface.lean
R1987DLeanEndpointProofKernelInterface/
├── EndpointProofKernelSlots.lean
├── EndpointKernelDependencyInterface.lean
├── EndpointProofKernelBridge.lean
└── ToyEndpointProofKernelInterface.lean
```

## Main bridge

```lean
R1987DLeanEndpointProofKernelInterface.endpoint_proof_kernel_interface_to_actual_li_target
```

The bridge inherits the target through R1986D.  It does not supply an endpoint
estimate proof.

## Non-claim boundary

R1987D records a proof-kernel interface only.  It does not prove:

- endpoint estimate;
- boundary-error estimate;
- remainder/uniformity estimate;
- sign transfer;
- real Abel boundary identity;
- explicit formula;
- RH.
