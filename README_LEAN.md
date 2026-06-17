# R1964D Lean Verification Package

This repository contains a Lean companion package for the R-series proof
candidate.  The R1964D layer adds an analytic micro-target refinement layer.

## Current layer sequence

```text
R1961DLeanPacket
  packet-balance layer
R1962DLeanAnalyticRealization
  analytic realization target language
R1963DLeanAnalyticDecomposition
  analytic obligation decomposition layer
R1964DLeanAnalyticMicroTargets
  micro-target refinement layer
```

## Build command

```bash
lake build
```

For Codespaces log capture:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1964D_MICRO_TARGETS.txt
```

## R1964D central theorem

```lean
R1964DLeanAnalyticMicroTargets.micro_targets_to_actual_li_target
```

This theorem says that a full micro-target realization package implies the
actual Li target through the already verified R1963D/R1962D/R1961D bridge chain.

## Non-claim boundary

The R1964D layer does not claim a complete Lean formalization of the Riemann
Hypothesis or of the analytic number theory required for it. It gives the next
Lean-checkable target language for the remaining analytic realization problem.
