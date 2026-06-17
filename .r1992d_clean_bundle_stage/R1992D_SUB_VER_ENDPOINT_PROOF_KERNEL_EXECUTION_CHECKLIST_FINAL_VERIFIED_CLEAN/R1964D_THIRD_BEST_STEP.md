# R1964D Third Best Step

The best next step after R1963D is to refine the analytic pre-target slots into
micro-targets.  R1963D identified the major analytic obligations.  R1964D turns
each major obligation into a small set of concrete formalization tasks.

## What this adds

R1964D introduces:

```text
R1964DLeanAnalyticMicroTargets
```

This layer contains:

1. micro-target structures for each analytic slot;
2. witness structures for those micro-targets;
3. a theorem turning micro-target witnesses into R1963D pre-target witnesses;
4. a theorem turning those witnesses into the actual Li target through the
   existing R1963D/R1962D/R1961D bridge chain;
5. toy checks showing that the bridge shape is Lean-checkable.

## Why this is the right step

The remaining hard part is not repository setup or abstract packet bookkeeping.
The remaining hard part is the concrete analytic realization of the Li kernel,
Abel boundary, explicit formula, and packet estimates.

R1964D narrows that hard part from broad obligations to micro-obligations such
as:

- define the actual Li kernel;
- prove its domain/well-posedness;
- state and connect the explicit formula;
- prove prime/zero/endpoint packet estimates;
- prove little-oh and no-hidden-scale-drift statements;
- prove terminal no-hidden-residual.

## Verification command

```bash
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1964D_MICRO_TARGETS.txt
```

Expected successful result:

```text
Build completed successfully (... jobs).
```
