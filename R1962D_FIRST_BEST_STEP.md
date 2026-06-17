# R1962D first best step: analytic realization target language

This is the first step after R1961D.

R1961D already verifies the abstract packet-balance transfer:

```text
finite tail target
  + same-scale boundary limit
  + packet controls
  + no hidden residual
  => abstract Li target
```

The remaining hard part is no longer the packet-accounting logic itself.  The remaining hard part is to show that the actual Li / zeta / explicit-formula objects satisfy the packet hypotheses required by R1961D.

Therefore the first best step is not to try to formalize the whole Riemann Hypothesis at once.  The first best step is to introduce a Lean-checkable target language for the final analytic realization layer.

## New Lean component

```text
R1962DLeanAnalyticRealization/
├── AnalyticObligationTargets.lean
└── ToyAnalyticRealization.lean
```

Top import:

```text
R1962DLeanAnalyticRealization.lean
```

The default Lake target is now:

```text
R1962DLeanAnalyticRealization
```

Because this library imports R1961DLeanPacket, `lake build` checks the inherited R1961D layer and the new R1962D target-language layer.

## What this step adds

It introduces the structure:

```lean
AnalyticRealizationObligations
```

with the concrete remaining analytic slots:

1. actual Li kernel registered;
2. actual Abel boundary registered;
3. actual explicit formula available;
4. prime packet estimate;
5. zero packet estimate;
6. endpoint packet estimate;
7. scale-error / uniform little-oh estimate;
8. obstruction ledger compatibility;
9. terminal no-hidden-residual statement;
10. actual Li target.

It then defines:

```lean
toExplicitPacketBalanceSystem
```

which converts those concrete analytic obligations into the exact R1961D `ExplicitPacketBalanceSystem`.

The central bridge theorem is:

```lean
analytic_realization_packet_balance_to_li_target
```

This theorem says: if the actual analytic obligations are supplied, then the existing R1961D packet-balance theorem yields the Li target.

## What this step does not claim

This step does not prove the actual zeta explicit formula, the actual prime packet estimate, the actual zero packet estimate, the Li criterion, or RH.

It records this explicitly in:

```lean
r1962_first_step_is_target_language_not_full_analytic_proof
```

## Why this is the best first step

The final hard layer must be attacked by replacing abstract Props with actual definitions and proofs.  This step names the exact Props to be replaced and verifies that, once replaced, they connect to the already-verified R1961D packet-balance theorem.

This turns the remaining work from:

```text
formalize the whole proof
```

into:

```text
realize each named analytic obligation in AnalyticRealizationObligations
```

That is the smallest useful first move toward complete Lean verification.
