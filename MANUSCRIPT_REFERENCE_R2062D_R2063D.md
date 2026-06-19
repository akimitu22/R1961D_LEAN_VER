# Manuscript reference — R2062D/R2063D

This combined patch is a Lean-side continuation of the R2061D main-manuscript/Lean bundle.

Manuscript role:

- R2062D corresponds to the manuscript point where the first concrete obligation's witness proof term and checker-kernel requirements must be typed explicitly.
- R2063D corresponds to the first local-discharge attempt layer: the attempt is conditional, and any failure is represented as named unresolved obligations rather than hidden behind another interface.

This patch does not include a new LaTeX/PDF manuscript. It preserves the distinction between the Lean bundle and manuscript material. It also does not claim completion of the local discharge or RH proof.
