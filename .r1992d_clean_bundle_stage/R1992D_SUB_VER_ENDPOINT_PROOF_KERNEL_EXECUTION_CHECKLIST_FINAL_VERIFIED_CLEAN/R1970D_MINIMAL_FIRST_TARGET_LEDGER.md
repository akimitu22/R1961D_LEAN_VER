# R1970D Minimal First Formalization Target Ledger

## Purpose

R1970D fixes a minimal first formalization target above the R1969D priority plan.
The selected first target is the Abel-boundary definition target, represented by
`FirstFormalizationTargetKind.abelBoundaryDefinition` and the evidence slot
`SourceEvidenceSlotKind.abelBoundaryDefinitionEvidence`.

## Main Lean layer

- `R1970DLeanFirstFormalizationTarget.lean`
- `R1970DLeanFirstFormalizationTarget/MinimalTargetKinds.lean`
- `R1970DLeanFirstFormalizationTarget/FirstTargetBridge.lean`
- `R1970DLeanFirstFormalizationTarget/ToyFirstFormalizationTarget.lean`

## Main bridge theorem

```lean
R1970DLeanFirstFormalizationTarget.minimal_first_target_plan_to_actual_li_target
```

This theorem says that a minimal first-target plan still preserves the inherited
actual-Li-target bridge from the R1969D priority plan.

## Non-claim boundary

R1970D does not prove the Abel-boundary identity, the concrete Li kernel, the
explicit formula, packet estimates, Li criterion, RH, or a complete analytic
formalization.  It only records the first target to formalize and connects that
selection to the already verified bridge chain.
