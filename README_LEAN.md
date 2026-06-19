# R2052D/R2053D Lean Patch

This combined patch adds two endpoint-first concrete proof-obligation layers:

1. `R2052DLeanEndpointFirstConcreteObligationTraceReplayCheckpoint`
   - replays the R2051D open proof-attempt trace ledger into checkpoint entries.
2. `R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry`
   - registers local discharge candidates attached to the replay checkpoints.

Both layers are bookkeeping/proof-preparation layers only. They preserve `A.actualLiTarget` and explicitly avoid claiming proof of the endpoint estimate, transfer assembly, finite-Abel reduction, proof-kernel connection, RH, or full formalization.
