# R1963D Lean analytic decomposition patch

This patch extends the R1962D analytic-realization target layer.

## New layer

```text
R1963DLeanAnalyticDecomposition
```

## Main purpose

R1963D decomposes the remaining analytic obligations into Lean-checkable profiles and a pre-target realization matrix.

The key new bridge theorem is:

```lean
R1963DLeanAnalyticDecomposition.realized_pre_target_slots_to_actual_li_target
```

It says that once the nine pre-target analytic slots are realized, the actual Li target follows through the R1962D analytic-realization bridge and the R1961D packet-balance layer.

## Build command

```bash
lake build
```

For a saved Codespaces log:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1963D_ANALYTIC_DECOMPOSITION.txt
```

## Non-claim boundary

This patch does not prove the actual explicit formula, actual prime/zero packet estimates, endpoint estimates, Li criterion, or RH.  It prepares the remaining analytic layer for stepwise Lean formalization.
