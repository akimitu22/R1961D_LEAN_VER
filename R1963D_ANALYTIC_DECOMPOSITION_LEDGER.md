# R1963D analytic decomposition ledger

## Purpose

R1963D is the second analytic-realization step after R1962D.  R1962D introduced the Lean target language for the remaining analytic obligations.  R1963D decomposes those obligations into stable Lean-checkable profiles and a packet-connection matrix.

This is not a full analytic proof of the Riemann Hypothesis.  It is a narrower target-language layer: it says exactly how the remaining concrete analytic tasks must be grouped before they can instantiate the already verified R1961D packet-balance theorem.

## New Lean layer

```text
R1963DLeanAnalyticDecomposition.lean
R1963DLeanAnalyticDecomposition/ObligationProfiles.lean
R1963DLeanAnalyticDecomposition/PacketConnectionMatrix.lean
R1963DLeanAnalyticDecomposition/ToyDecomposition.lean
```

## Main new objects

```lean
AnalyticWorkKind
FormalizationStatus
ObligationProfile
profileOfSlot
slotRealized
RealizedAnalyticPreTargetSlots
AnalyticObligationDecompositionMatrix
defaultAnalyticObligationDecompositionMatrix
```

## Main new theorem

```lean
realized_pre_target_slots_to_actual_li_target
```

This theorem states that, once the nine pre-target analytic slots are realized as fields of `AnalyticRealizationObligations`, the actual Li target follows by the R1962D bridge, which in turn uses the R1961D packet-balance layer.

## Decomposition groups

### Common anchor group

```text
actual Li kernel
actual Abel boundary
actual explicit formula
```

These provide the shared anchor required by the packet controls.

### Packet estimate group

```text
prime packet estimate
zero packet estimate
endpoint packet estimate
scale-error / little-oh estimate
```

These feed the R1961D packet controls.

### Compatibility and residual group

```text
obstruction ledger compatibility
terminal no-hidden-residual
```

These close the obstruction/residual part of the packet bridge.

### Target group

```text
actual Li target
```

This is reached from the nine pre-target slots by `realized_pre_target_slots_to_actual_li_target`.

## Non-claim boundary

R1963D does not claim to prove:

```text
actual Li kernel theory
actual explicit formula
actual prime estimate
actual zero estimate
actual endpoint estimate
actual Li criterion
RH
```

It only decomposes the remaining obligations into Lean-checkable slots and connects the resulting pre-target package to the existing R1962D/R1961D bridge.
