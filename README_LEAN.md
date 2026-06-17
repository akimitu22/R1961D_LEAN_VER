# R1974D Lean package — finite Abel component decomposition

This repository contains the R1961D–R1975D Lean support package for the proof-system manuscript.

## Current top target

```text
R1975DLeanFiniteAbelNormalization
```

`lakefile.lean` sets the default target to `R1975DLeanFiniteAbelNormalization`, and
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

R1974D has a recorded GitHub Codespaces / Linux build log:

```text
VERIFY_LOG_CODESPACES_R1974D_FINITE_ABEL_COMPONENTS.txt
Build completed successfully (126 jobs).
```

The authoritative whole-package checksum ledger for this cleaned final package is:

```text
SHA256SUMS_R1974D_FINAL.txt
```

To reproduce the verification, run:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1974D_FINITE_ABEL_COMPONENTS.txt
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
R1975DLeanFiniteAbelNormalization.finite_abel_components_to_actual_li_target
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
R1975DLeanFiniteAbelNormalization.finite_abel_components_to_actual_li_target
```

Toy execution check:

```lean
R1975DLeanFiniteAbelNormalization.toy_finite_abel_components_to_actual_li_target_runs
```

Non-claim certificate:

```lean
R1975DLeanFiniteAbelNormalization.r1974_thirteenth_step_is_component_shell_not_concrete_abel_proof
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

Historical per-patch checksum ledgers were removed from this cleaned final ZIP to avoid stale checksum failures after later audit updates. Patch manifests are retained as historical descriptions. The authoritative whole-package digest for the R1974D final audit state is:

```text
SHA256SUMS_R1974D_FINAL.txt
```

## Non-claim boundary

This Lean package verifies the abstract proof architecture and the analytic-obligation
tracking path through finite Abel identity/component shell layers. It does not claim
to formally prove the real Abel-boundary identity, real boundary-limit theorem,
explicit formula, Li criterion, terminal packet estimates, or the Riemann Hypothesis.


## R1975D finite Abel normalization/routing layer

R1975D adds a normalization and routing shell over the R1974D finite Abel
component decomposition.  It records finite-sum normalization, weight
normalization, endpoint/boundary routing, and boundary-error normalization
slots while preserving the inherited actual-Li-target bridge.

Central theorem:

```lean
R1975DLeanFiniteAbelNormalization.finite_abel_normalization_to_actual_li_target
```

Non-claim boundary:

```lean
R1975DLeanFiniteAbelNormalization.r1975_fourteenth_step_is_normalization_shell_not_concrete_abel_proof
```

R1975D does not prove a concrete finite Abel identity, endpoint estimate,
boundary-error estimate, real Abel-boundary identity, explicit formula, or RH.
It is a proof-obligation / target-language refinement layer.


## R1978D quantitative estimate target matrix shell

R1976D adds a larger post-normalization target layer.  It packages four finite
Abel estimate gates: endpoint estimate, boundary-error estimate, summation
remainder, and Abel-parameter uniformity.  The top target is now
`R1976DLeanFiniteAbelEstimateGates`.  The recorded bridge is
`finite_abel_estimate_gates_to_actual_li_target`, which forgets through the
R1975D normalization plan and preserves the existing chain to the analytic
realization target.

R1976D is not a concrete proof of endpoint estimates, boundary-error estimates,
uniformity estimates, a real Abel-boundary identity, the explicit formula, or RH.
Those analytic estimates remain the external mathematical obligations.


## R1978D quantitative estimate target matrix shell

R1977D consolidates the R1976D estimate gates into explicit dependency tables:
endpoint dependencies, boundary-error dependencies, joint remainder/uniformity
dependencies, and one closure/audit table.  The top target is now
`R1977DLeanEstimateDependencyClosure`.  The recorded bridge is
`finite_abel_dependency_closure_to_actual_li_target`, which forgets through the
R1976D estimate-gate plan and preserves the existing chain to the analytic
realization target.

R1977D is not a concrete proof of endpoint estimates, boundary-error estimates,
uniformity estimates, a real Abel-boundary identity, the explicit formula, or RH.
It is a dependency-closure table for the remaining analytic estimate obligations.


## R1978D quantitative estimate target matrix shell

R1978D takes the R1977D dependency-closure tables and refines them into named
quantitative estimate targets: endpoint target, boundary-error target, joint
remainder/uniformity target, and sign-transfer target.  It also records proof
strategy metadata for these targets.  The top target is now
`R1978DLeanQuantitativeEstimateMatrix`.

The main bridge is
`finite_abel_quantitative_matrix_to_actual_li_target`, which forgets to the
R1977D dependency closure plan and preserves the already checked actual-Li
bridge.  R1978D is not a concrete endpoint estimate, boundary-error estimate,
uniformity estimate, real Abel-boundary identity, explicit formula proof, or RH
proof.


## R1979D concrete estimate blueprint layer

R1979D converts the R1978D quantitative estimate matrix into a concrete estimate
blueprint.  It names endpoint, boundary-error, remainder/uniformity, and
sign-transfer lemma families, adds concrete lemma interface records, and records
a review-facing gap table.  The top target is now
`R1979DLeanConcreteEstimateBlueprint`.

The main bridge is
`concrete_estimate_blueprint_to_actual_li_target`, which forgets to the R1978D
quantitative estimate matrix and preserves the previously checked actual-Li
bridge.  R1979D is not a proof of the endpoint estimate, boundary-error
estimate, remainder estimate, Abel-parameter uniformity estimate, real
Abel-boundary identity, explicit formula, or RH.


## R1980D concrete estimate statement-bank layer

R1980D turns the R1979D concrete estimate blueprint into named future theorem
statement slots.  It adds a statement bank, dependency-closure records, and
proof-file routing metadata for endpoint, boundary-error, remainder/uniformity,
and sign-transfer estimates.  The top target is now
`R1980DLeanConcreteEstimateStatements`.

The main bridge is
`concrete_estimate_statement_bank_to_actual_li_target`, which forgets to the
R1979D blueprint and preserves the existing actual-Li bridge.  R1980D is not a
proof of the endpoint estimate, boundary-error estimate, remainder estimate,
Abel-parameter uniformity estimate, real Abel-boundary identity, explicit
formula, or RH.
