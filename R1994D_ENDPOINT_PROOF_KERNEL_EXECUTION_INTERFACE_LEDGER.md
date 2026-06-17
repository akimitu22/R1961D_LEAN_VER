# R1994D endpoint proof-kernel execution interface

R1994D extends the R1993D endpoint proof-kernel implementation ledger by adding
an endpoint proof-kernel execution interface and an execution-interface
dependency plan.

The layer records the interface through which later executable endpoint proof
kernel files may read:

1. the R1993D implementation ledger;
2. the R1993D implementation-dependency ledger;
3. the R1992D execution-dependency checklist;
4. the R1992D execution checklist;
5. local-reduction execution-interface inputs;
6. finite-Abel execution-interface inputs;
7. normalization and boundary-window execution-interface inputs;
8. endpoint-majorant and later executable proof-file boundaries;
9. audit/non-claim execution boundaries.

It intentionally does not execute any endpoint proof kernel and does not prove
endpoint estimates, boundary-error estimates, remainder or uniformity estimates,
sign transfer, the explicit formula, or RH.
