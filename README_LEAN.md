# R1970D Lean patch — Minimal First Formalization Target

This patch adds the R1970D layer:

```text
R1970DLeanFirstFormalizationTarget
```

It selects a minimal first formalization target, currently the Abel-boundary
definition target, and connects that selection to the R1969D formalization
priority plan.

Main theorem:

```lean
R1970DLeanFirstFormalizationTarget.minimal_first_target_plan_to_actual_li_target
```

Non-claim boundary: this is not a full formalization of the Abel-boundary
identity, Li criterion, explicit formula, packet estimates, or RH.
