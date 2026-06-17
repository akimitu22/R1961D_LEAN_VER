# R1966D Lean Verification Package

R1966D extends the R1965D realization-interface layer with concrete analytic
source categories.

## Verification

Run:

```bash
lake build
```

or, to save a Codespaces log:

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1966D_SOURCE_CATEGORIES.txt
```

## Main new theorem

```lean
R1966DLeanSourceCategories.concrete_sources_to_actual_li_target
```

## Scope

This is a verified source-category bridge layer.  It is not a complete
formalization of the zeta explicit formula, Li criterion, terminal estimates, or
RH.
