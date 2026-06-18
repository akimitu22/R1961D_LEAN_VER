# R2027D Lean support package

This patch adds R2026D and R2027D endpoint layers:

- R2026D: endpoint first concrete-lemma discharge certificate slots
- R2027D: endpoint first endpoint-estimate handoff boundary

The top target after applying the patch is:

```text
R2027DLeanEndpointFirstEstimateHandoffBoundary
```

Non-claim boundary: the patch does not prove endpoint estimates, an explicit formula, RH, or concrete endpoint lemma discharge.
