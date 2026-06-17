# R1971D Abel-Boundary Definition Skeleton Ledger

## Purpose

R1971D refines the R1970D minimal first formalization target by attaching a
Lean-visible definition skeleton for the Abel-boundary target.  It separates the
first target into:

- a parameter list,
- admissibility hypotheses,
- a definition skeleton,
- a target-statement shell,
- and a bridge back to the R1970D minimal-first-target plan.

## Main Lean layer

- `R1971DLeanAbelBoundarySkeleton.lean`
- `R1971DLeanAbelBoundarySkeleton/DefinitionSkeleton.lean`
- `R1971DLeanAbelBoundarySkeleton/SkeletonBridge.lean`
- `R1971DLeanAbelBoundarySkeleton/ToyAbelBoundarySkeleton.lean`

## Main bridge theorem

```lean
R1971DLeanAbelBoundarySkeleton.abel_boundary_skeleton_to_actual_li_target
```

This theorem says that adding the Abel-boundary parameter/admissibility/statement
skeleton preserves the inherited bridge to the abstract actual-Li target.

## Non-claim boundary

R1971D does not prove the Abel-boundary identity, the Abel limit theorem, the
explicit formula, packet estimates, Li criterion, RH, or a complete analytic
formalization. It only fixes the first target's formal definition interface and
keeps the bridge chain mechanically traceable.
