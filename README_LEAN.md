# R2001D Lean support package

This combined patch advances the endpoint branch by two layers at once:

- R2000D: endpoint concrete-discharge obligation slots / dependency table.
- R2001D: endpoint first discharge certificate interface / dependency map.

The default target is `R2001DLeanEndpointFirstDischargeCertificateInterface`.
The aggregate import spine explicitly preserves `R1999DLeanEndpointFirstConcreteDischargeInterface` through `R2000DLeanEndpointConcreteDischargeObligationSlots` and then into R2001D.

Non-claim boundary:

- No endpoint proof kernel is executed here.
- No concrete endpoint lemma is discharged here.
- No proof certificate term is supplied here.
- No endpoint estimate, boundary-error estimate, remainder-uniformity estimate, sign-transfer estimate, explicit formula, or RH statement is proved here.

Expected Codespaces verification:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R2001D_ENDPOINT_FIRST_DISCHARGE_CERTIFICATE_INTERFACE.txt
```

Expected result: `Build completed successfully (... jobs).` Because R1999D previously built with 253 jobs, this two-layer patch should not be accepted if the job count falls below 253.
