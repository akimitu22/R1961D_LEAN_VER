# R2062D — One-hundred-first best step

Layer: `EndpointFirstConcreteObligationWitnessKernel`.

Purpose: move beyond the R2061D witness interface by exposing the first concrete obligation's required witness proof-term type, endpoint-estimate input type, explicit-formula input type, transfer input type, local-discharge certificate type, and checker-kernel predicate as Lean-level data.

Proof-consistency note: this layer fixes the shape of the checker kernel and its typed obligations. It does not supply the witness term, run the checker, complete local discharge, prove transfer, prove endpoint estimates, or prove RH.
