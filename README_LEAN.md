# R2003D Lean support package

This combined patch adds two endpoint-discharge preparation layers:

- R2002D: endpoint first-certificate payload slots / dependency plan.
- R2003D: endpoint first-discharge attempt boundary / dependency audit.

The default Lake target is `R2003DLeanEndpointFirstDischargeAttemptBoundary`.

This package preserves the existing aggregate import spine by importing
`R2001DLeanEndpointFirstDischargeCertificateInterface` through R2002D and then
R2002D through R2003D.

Non-claim boundary: this package does not start the first discharge attempt,
does not discharge a concrete endpoint lemma, does not execute the endpoint proof
kernel, and does not prove the endpoint estimate, explicit formula, or RH.
