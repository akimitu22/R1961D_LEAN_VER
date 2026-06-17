# R1974D Lean package — finite Abel component decomposition

This repository contains the R1961D–R1974D Lean support package for the proof-system manuscript.

## Current top target

```text
R1974DLeanFiniteAbelComponents
```

`lakefile.lean` sets the default target to `R1974DLeanFiniteAbelComponents`, and
`Main.lean` imports/checks the chain through R1974D.

## Verification status

The intended current GitHub Codespaces / Linux verification line is:

```text
Build completed successfully (126 jobs).
```

R1973D has a recorded Codespaces build log:

```text
VERIFY_LOG_CODESPACES_R1973D_FINITE_ABEL_IDENTITY.txt
Build completed successfully (122 jobs).
```

R1974D should be verified after applying this final-audit patch by running:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1974D_FINITE_ABEL_COMPONENTS.txt
```

After that run, refresh the final whole-package checksum ledger:

```bash
find . -type f \
  ! -path './.git/*' \
  ! -path './.lake/*' \
  ! -name 'SHA256SUMS_R1974D_FINAL.txt' \
  ! -name '*.zip' \
  | sort | xargs sha256sum > SHA256SUMS_R1974D_FINAL.txt
sha256sum -c SHA256SUMS_R1974D_FINAL.txt
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
R1973D: finite Abel transform identity shell and boundary compatibility shell
R1974D: finite Abel component decomposition
```

## Main bridge theorems

```lean
R1971DLeanAbelBoundarySkeleton.abel_boundary_skeleton_to_actual_li_target
R1972DLeanToyAbelModel.toy_abel_model_to_actual_li_target
R1973DLeanFiniteAbelIdentity.finite_abel_identity_shell_to_actual_li_target
R1974DLeanFiniteAbelComponents.finite_abel_components_to_actual_li_target
```

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
RH. It records a Lean-visible shell that preserves the inherited bridge from
R1972D.

## R1974D finite Abel component decomposition

R1974D extends the R1973D finite identity shell by splitting it into:

```text
finite sum operator
finite Abel weight system
endpoint correction slot
boundary error term slot
```

Main R1974D bridge theorem:

```lean
R1974DLeanFiniteAbelComponents.finite_abel_components_to_actual_li_target
```

Toy execution check:

```lean
R1974DLeanFiniteAbelComponents.toy_finite_abel_components_to_actual_li_target_runs
```

Non-claim certificate:

```lean
R1974DLeanFiniteAbelComponents.r1974_thirteenth_step_is_component_shell_not_concrete_abel_proof
```

R1974D does not prove the concrete finite Abel identity, endpoint estimate,
boundary error estimate, real Abel-boundary identity, explicit formula, or RH.
It records a Lean-visible component decomposition that preserves the inherited
actual-Li-target bridge from R1973D.

## Final audit files

Use these as the final audit references for the R1974D package:

```text
MANIFEST_R1974D_FINAL.txt
PATCH_MANIFEST_R1974D_FINAL.txt
SHA256SUMS_R1974D_FINAL.txt
VERIFY_STATUS_CODESPACES.md
VERIFY_STATUS_R1973D_FINITE_ABEL_IDENTITY.md
VERIFY_STATUS_R1974D_FINITE_ABEL_COMPONENTS.md
VERIFY_LOG_CODESPACES_R1973D_FINITE_ABEL_IDENTITY.txt
VERIFY_LOG_CODESPACES_R1974D_FINITE_ABEL_COMPONENTS.txt
```

Older `SHA256SUMS_R19xx...txt` and patch-manifest files are retained as historical
per-patch records. The authoritative whole-package digest for the R1974D final
audit state is:

```text
SHA256SUMS_R1974D_FINAL.txt
```

## Non-claim boundary

This Lean package verifies the abstract proof architecture and the analytic-obligation
tracking path through finite Abel identity/component shell layers. It does not claim
to formally prove the real Abel-boundary identity, real boundary-limit theorem,
explicit formula, Li criterion, terminal packet estimates, or the Riemann Hypothesis.
