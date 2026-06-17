# R1963D second analytic step

## Best next move after R1962D

After the first analytic-realization target layer, the best next move is not to try to formalize all zeta analysis at once.  The correct next move is to decompose each remaining analytic obligation into:

```text
actual definition
target theorem
mathlib dependency
new analytic lemma needed
connection to R1962D obligations
connection to R1961D packet layer
non-claim boundary
```

R1963D implements exactly that decomposition as Lean objects.

## Why this is the right next step

The previous R1962D layer already made the final analytic obligations visible.  R1963D now prevents those obligations from remaining vague.  Each obligation receives a canonical `ObligationProfile`, and the nine pre-target obligations are placed into an explicit `AnalyticObligationDecompositionMatrix`.

The most important theorem is:

```lean
realized_pre_target_slots_to_actual_li_target
```

It is the Lean-checkable statement that the nine realized pre-target analytic slots are sufficient to reach the actual Li target through the existing R1962D/R1961D bridge.

## Verification expectation

After applying this patch, run:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1963D_ANALYTIC_DECOMPOSITION.txt
```

Expected result:

```text
Build completed successfully
```

The job count should increase from the R1962D count because the new decomposition library is added.
