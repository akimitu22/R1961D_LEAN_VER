# R1983D Lean main-manuscript-anchored verification spine

This repository layer repairs the verification-spine shape after R1982D by
anchoring the continuation to the R1974D main-manuscript bundle.

## Top module

```lean
import R1983DLeanMainManuscriptAnchoredVerificationSpine
```

## Main theorem

```lean
R1983DLeanMainManuscriptAnchoredVerificationSpine.main_manuscript_anchored_verification_spine_to_actual_li_target
```

## Added layer

```text
R1983DLeanMainManuscriptAnchoredVerificationSpine.lean
R1983DLeanMainManuscriptAnchoredVerificationSpine/
├── ManuscriptAnchorSlots.lean
├── VerificationSpineLedger.lean
├── SpineBridge.lean
└── ToyAnchoredSpine.lean
```

## Main.lean repair

`Main.lean` is restored from the R1974D bundle's long historical check spine and
then extended with R1980D, R1982D, and R1983D continuation checks.

## Default target repair

The R1983D aggregate module imports the aggregate modules from R1961D through
R1982D before importing the R1983D files.  The Lake default target is moved to
R1983D so that `lake build` must traverse the restored manuscript-compatible
verification spine.

## Scope boundary

R1983D records manuscript anchoring and verification-spine repair.  It does not
prove endpoint estimates, boundary-error estimates, remainder estimates,
Abel-parameter uniformity estimates, sign-transfer estimates, the real
Abel-boundary identity, the explicit formula, or RH.
