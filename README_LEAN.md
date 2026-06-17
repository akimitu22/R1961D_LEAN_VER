# R1965D Lean Verification Package

R1965D extends the R1964D micro-target layer with realization interfaces for the
remaining analytic blocks.

## Verification

Run:

```bash
lake build
```

or, to save a Codespaces log:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1965D_REALIZATION_INTERFACES.txt
```

## Main new theorem

```lean
R1965DLeanRealizationInterfaces.realized_interfaces_to_actual_li_target
```

## Scope

This is a verified interface layer.  It is not a complete formalization of the
zeta explicit formula, Li criterion, terminal estimates, or RH.
