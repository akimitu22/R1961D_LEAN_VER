# R1981D fix note — no-proof boundary declarations

This patch fixes the R1981D Lean build failure in the four proof-skeleton family files.

The failed declarations attempted to prove structure fields whose type was only `Prop`.
Those fields are audit/record propositions, not proof terms.  The fix changes the four
boundary-preservation declarations into definitions returning the recorded proposition.

Affected files:

- `R1981DLeanConcreteProofSkeletons/EndpointSkeletons.lean`
- `R1981DLeanConcreteProofSkeletons/BoundaryErrorSkeletons.lean`
- `R1981DLeanConcreteProofSkeletons/RemainderUniformitySkeletons.lean`
- `R1981DLeanConcreteProofSkeletons/SignTransferSkeletons.lean`

This does not add any proof of endpoint estimates, boundary-error estimates,
remainder/uniformity estimates, explicit formula, or RH.
