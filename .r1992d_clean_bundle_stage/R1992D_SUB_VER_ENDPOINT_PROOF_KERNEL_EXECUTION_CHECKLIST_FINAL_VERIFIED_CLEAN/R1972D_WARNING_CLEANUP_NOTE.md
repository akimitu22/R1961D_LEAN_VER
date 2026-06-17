# R1972D warning cleanup note

This cleanup changes only an intentionally unused binder name in
`R1972DLeanToyAbelModel/ToyAnalyticAbelModel.lean`:

```lean
M
```

to:

```lean
_M
```

This removes the Lean linter warning while preserving the R1972D toy Abel model
and the bridge theorem:

```lean
R1972DLeanToyAbelModel.toy_abel_model_to_actual_li_target
```
