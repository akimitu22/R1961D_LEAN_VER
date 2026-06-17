# R1972D warning cleanup note

This patch removes the Lean linter warning reported in the Codespaces build of
R1972D.

## Change

In `R1972DLeanToyAbelModel/ToyAnalyticAbelModel.lean`, the theorem
`toy_abel_model_target_is_abel_boundary_definition` kept a model argument for
interface readability, but the proof only needs the skeleton plan `P`.

The argument name was changed from `M` to `_M`, making the intentional unused
status explicit to Lean.

## Scope

- No theorem statement is materially changed.
- No proof dependency is changed.
- No analytic claim is strengthened.
- This is a warning-cleanup patch only.

## Expected verification

After applying the patch, `lake build` should still complete with 118 jobs, now
without the unused-variable warning in `ToyAnalyticAbelModel.lean`.
