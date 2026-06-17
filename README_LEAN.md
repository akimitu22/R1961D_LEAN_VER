# R1969D Lean verification package

R1969D extends the existing R1961D--R1968D Lean package by adding a formalization-priority layer.

## New layer

```text
R1969DLeanFormalizationPriority.lean
R1969DLeanFormalizationPriority/PriorityKinds.lean
R1969DLeanFormalizationPriority/PriorityBridge.lean
R1969DLeanFormalizationPriority/ToyFormalizationPriority.lean
```

## Main bridge

```lean
R1969DLeanFormalizationPriority.priority_plan_to_actual_li_target
```

This bridge states that a formalization-priority plan preserves the existing verified bridge from anchor classification to the actual Li target.

## Verification

Run:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1969D_FORMALIZATION_PRIORITY.txt
```

Expected result:

```text
Build completed successfully (106 jobs).
```

## Boundary

R1969D is not a full analytic formalization.  It does not prove the concrete Li kernel, the explicit formula, packet estimates, the Li criterion, or RH.
