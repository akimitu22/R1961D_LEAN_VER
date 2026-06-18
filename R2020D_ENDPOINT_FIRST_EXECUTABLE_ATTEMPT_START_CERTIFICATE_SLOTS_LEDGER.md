# R2020D endpoint first executable-attempt start-certificate slots ledger

Center layer: `R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots`.

Center theorem:

```lean
R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots.endpoint_first_executable_attempt_start_certificate_slots_to_actual_li_target
```

R2020D refines the R2019D executable-attempt start boundary into start-certificate slots and dependency-audit slots. It records the certificate carriers needed before any executable attempt or proof-kernel invocation is actually run.

Non-claim boundary: this layer does not start an executable attempt, does not invoke or execute the endpoint proof kernel, does not discharge a concrete endpoint lemma, does not prove an endpoint estimate, does not prove the explicit formula, and does not prove RH.
