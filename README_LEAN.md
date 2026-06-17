# R2007D Lean support package

This combined patch adds two layers:

- R2006D: endpoint first-discharge execution gate.
- R2007D: endpoint first-discharge dry-run trace.

The default target is `R2007DLeanEndpointFirstDischargeDryRunTrace`.

Non-claim boundary: this package still does not execute the endpoint proof
kernel, discharge a concrete endpoint lemma, prove an endpoint estimate, prove
the explicit formula, or prove RH.
