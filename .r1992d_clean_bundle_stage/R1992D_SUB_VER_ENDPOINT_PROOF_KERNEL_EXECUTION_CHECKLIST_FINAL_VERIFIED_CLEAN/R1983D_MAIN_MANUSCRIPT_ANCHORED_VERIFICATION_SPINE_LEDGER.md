# R1983D main-manuscript-anchored verification-spine ledger

## Scope

R1983D repairs the continuation after R1982D by explicitly reattaching the
current Lean verification chain to the R1974D submission bundle:

1. the main manuscript,
2. the historical `Main.lean` long `#check` spine,
3. `PROOF_OBLIGATIONS.md`,
4. the R1975D--R1982D continuation layers.

The immediate purpose is to prevent the default build graph from narrowing to
only the newest local layer while silently dropping the broader manuscript audit
spine.

## Central bridge

```lean
R1983DLeanMainManuscriptAnchoredVerificationSpine.main_manuscript_anchored_verification_spine_to_actual_li_target
```

## Verification-spine repair

`R1983DLeanMainManuscriptAnchoredVerificationSpine.lean` imports the aggregate
modules from R1961D through R1982D and then imports the R1983D anchor modules.
The default Lake target is moved to R1983D, so `lake build` must traverse the
historical aggregate spine and the new continuation layer.

`Main.lean` is also restored from the R1974D bundle's long check spine and then
extended with R1980D, R1982D, and R1983D continuation checks.

## Non-claim boundary

R1983D does not prove endpoint estimates, boundary-error estimates, remainder
estimates, Abel-parameter uniformity estimates, sign-transfer estimates, the
real Abel-boundary identity, the explicit formula, or RH.  It is a
main-manuscript anchoring and verification-spine repair layer only.
