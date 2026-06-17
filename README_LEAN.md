# R1970D Lean patch — Minimal First Formalization Target

This repository now includes Lean support files through R1970D.

R1970D selects a minimal first formalization target, currently the
Abel-boundary definition target, and connects that selection to the R1969D
formalization priority plan.

Main theorem:

```lean
R1970DLeanFirstFormalizationTarget.minimal_first_target_plan_to_actual_li_target
```

Verified Codespaces result:

```text
Build completed successfully (110 jobs).
```

R1970D-specific verification log:

```text
VERIFY_LOG_CODESPACES_R1970D_MINIMAL_FIRST_TARGET.txt
```

The older files `VERIFY_LOG_CODESPACES.txt` and `VERIFY_LOG_WINDOWS.txt` are
legacy R1961D logs recording the 75-job build of the earlier packet-balance
project. They are intentionally retained for provenance. The R1970D-specific
110-job log is the current extended-project Codespaces log.

## Layer progression

| Layer | Meaning | Build jobs |
| --- | --- | ---: |
| R1961D | packet-balance layer | 75 |
| R1962D | analytic realization obligations | 78 |
| R1963D | analytic decomposition matrix | 82 |
| R1964D | micro-target layer | 86 |
| R1965D | realization interface layer | 90 |
| R1966D | concrete source category layer | 94 |
| R1967D | source evidence checklist layer | 98 |
| R1968D | anchor classification layer | 102 |
| R1969D | formalization priority layer | 106 |
| R1970D | minimal first formalization target layer | 110 |

## Current verified chain

```text
minimal first formalization target
→ formalization priority plan
→ anchor classification
→ source evidence slots
→ concrete source categories
→ realization interfaces
→ micro-targets
→ analytic decomposition slots
→ analytic realization obligations
→ R1961D packet-balance layer
→ actual Li target
```

## Correct non-claim boundary

The R1962D--R1970D extension is best described as:

```text
abstract proof architecture plus a Lean-verifiable realization-obligation
system for transferring the manuscript's analytic connections into concrete
formalization targets.
```

It is not a full formalization of the Abel-boundary identity, Li criterion,
explicit formula, packet estimates, zeta theory, or RH.
