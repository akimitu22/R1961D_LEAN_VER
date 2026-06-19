# R2063D ledger

- Imports R2062D witness kernel.
- Defines local-discharge attempt status and obstruction categories.
- Exposes missing witness proof term, endpoint estimate, explicit formula, transfer assembly, local-discharge certificate, and checker-kernel execution as unresolved Lean obligations.
- Provides a conditional theorem: if all required obligations are supplied, the attempt's local-discharge statement follows.
- Preserves `actualLiTarget`.
- Does not claim unconditional local discharge, RH, or full RH formalization.
