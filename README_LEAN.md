# R1973D Lean package — finite Abel identity shell

This repository contains the R1961D–R1972D Lean support package for the proof-system manuscript.

## Current top target

```text
R1973DLeanFiniteAbelIdentity
```

`lakefile.lean` sets the default target to `R1973DLeanFiniteAbelIdentity`, and
`Main.lean` imports/checks the chain through R1972D.

## Verified build status

GitHub Codespaces / Linux verification is recorded through R1972D:

```text
Expected after applying R1973D: Build completed successfully (122 jobs).
```

Primary log:

```text
VERIFY_LOG_CODESPACES_R1972D_TOY_ABEL_MODEL.txt
```

R1970D and R1971D logs are also included:

```text
VERIFY_LOG_CODESPACES_R1970D_MINIMAL_FIRST_TARGET.txt
VERIFY_LOG_CODESPACES_R1971D_ABEL_BOUNDARY_SKELETON.txt
```

## Layer progression

```text
R1961D: packet-balance abstract proof layer
R1962D: analytic realization obligations
R1963D: analytic decomposition matrix
R1964D: analytic micro-targets
R1965D: realization interface blocks
R1966D: concrete analytic source categories
R1967D: source-evidence checklist slots
R1968D: anchor classification
R1969D: formalization priority / severity / burden plan
R1970D: minimal first formalization target selection
R1971D: Abel-boundary definition skeleton
R1972D: toy analytic Abel model and boundary-limit placeholder
```

## Main R1971D/R1972D bridge theorems

```lean
R1971DLeanAbelBoundarySkeleton.abel_boundary_skeleton_to_actual_li_target
R1973DLeanFiniteAbelIdentity.toy_abel_model_to_actual_li_target
```

Non-claim certificates:

```lean
R1971DLeanAbelBoundarySkeleton.r1971_tenth_step_is_definition_skeleton_not_abel_boundary_proof
R1973DLeanFiniteAbelIdentity.r1972_eleventh_step_is_toy_model_not_concrete_abel_boundary_proof
```

## Final audit files

Use these as the final audit references for the R1972D package:

```text
MANIFEST_R1972D_FINAL.txt
PATCH_MANIFEST_R1972D_FINAL.txt
SHA256SUMS_R1972D_FINAL.txt
VERIFY_STATUS_CODESPACES.md
VERIFY_STATUS_R1971D_ABEL_BOUNDARY_SKELETON.md
VERIFY_STATUS_R1972D_TOY_ABEL_MODEL.md
```

Older `SHA256SUMS_R19xx...txt` and patch-manifest files are retained as historical
per-patch records. The authoritative whole-package digest for this final audit
state is:

```text
SHA256SUMS_R1972D_FINAL.txt
```

## Non-claim boundary

This Lean package verifies the abstract proof architecture and the analytic-obligation
tracking path through a toy Abel-boundary model layer. It does not claim to
formally prove the real Abel-boundary identity, real boundary-limit theorem,
explicit formula, Li criterion, terminal packet estimates, or the Riemann
Hypothesis.

## R1973D finite Abel identity shell

R1973D extends the R1972D toy Abel model by adding:

```text
finite Abel transform identity shell
boundary compatibility lemma shell
finite-identity-to-actual-Li bridge preservation
```

Main R1973D bridge theorem:

```lean
R1973DLeanFiniteAbelIdentity.finite_abel_identity_shell_to_actual_li_target
```

Non-claim certificate:

```lean
R1973DLeanFiniteAbelIdentity.r1973_twelfth_step_is_identity_shell_not_concrete_abel_boundary_proof
```

R1973D does not prove the concrete finite Abel identity, the concrete boundary
compatibility theorem, the real Abel-boundary identity, the explicit formula, or
RH.  It records a Lean-visible shell that preserves the inherited bridge from
R1972D.
