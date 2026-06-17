# R1971D Lean patch — Abel-Boundary Definition Skeleton

This patch adds the R1971D layer:

```text
R1971DLeanAbelBoundarySkeleton
```

It refines the R1970D minimal first formalization target by giving the
Abel-boundary definition target a Lean-visible skeleton:

```text
parameter list
admissibility hypotheses
definition skeleton
target-statement shell
```

Main theorem:

```lean
R1971DLeanAbelBoundarySkeleton.abel_boundary_skeleton_to_actual_li_target
```

Expected Codespaces verification after application:

```text
Build completed successfully (114 jobs).
```

Non-claim boundary: this is not a full formalization of the Abel-boundary
identity, Li criterion, explicit formula, packet estimates, or RH. It is a
formalization-entry layer for the first selected analytic target.
