# R1959D Same-Scale Transfer Map

R1959D adds one deeper formal layer over R1958D.

## Formalized abstract core

The central Lean theorem is:

```lean
theorem same_scale_target_transfer
```

It proves that, for a target predicate indexed by a shared scale coordinate, equality of the finite and Abel scale coordinates transfers the finite target to the Abel target.

The equivalence theorem is:

```lean
theorem same_scale_target_equivalence
```

This records that no target information is lost or changed when both sides are literally the same coordinate.

## No-hidden-normalization variant

R1959D also adds:

```lean
theorem no_hidden_normalization_target_transfer
theorem no_hidden_normalization_target_equivalence
```

These force both finite and Abel raw scales through the same normalizing map before transfer.

## Relation to R1956D slots

The R1959D certificate explicitly connects the transfer layer to:

- `finiteLiCompatibilitySlot`
- `abelBoundaryEstimateSlot`
- `conclusionTransferSlot`

This does not fill those analytic slots. It formalizes the abstract equality-transfer mechanism that the analytic slot must instantiate.
