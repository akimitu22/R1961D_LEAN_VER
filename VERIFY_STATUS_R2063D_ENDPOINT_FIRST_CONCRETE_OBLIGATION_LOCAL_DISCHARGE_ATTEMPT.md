# Verification status — R2063D

Prepared patch layer. Not yet verified by `lake build` in this environment.

Expected verification command in Codespaces:

```bash
lake build
```

Scope of the layer:

- R2063D exposes the first local-discharge attempt and its unresolved obligations.
- It provides a conditional local-discharge theorem requiring supplied witness, estimate, formula, transfer, certificate, and checker obligations.
- It preserves `actualLiTarget`.
- It does **not** claim unconditional local discharge, RH, or full RH formalization.
