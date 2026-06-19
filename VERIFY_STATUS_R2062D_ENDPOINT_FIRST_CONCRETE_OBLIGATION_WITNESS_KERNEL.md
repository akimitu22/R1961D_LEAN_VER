# Verification status — R2062D

Prepared patch layer. Not yet verified by `lake build` in this environment.

Expected verification command in Codespaces:

```bash
lake build
```

Scope of the layer:

- R2062D exposes the typed witness kernel for the first concrete obligation.
- It fixes the required witness proof-term type and checker-kernel predicate as Lean-level data.
- It preserves `actualLiTarget`.
- It does **not** prove endpoint estimate, explicit formula, transfer, local discharge, RH, or full RH formalization.
