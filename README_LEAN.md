# R2048D/R2049D Lean Patch

This combined patch adds two endpoint-first concrete proof-obligation layers:

1. `R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph`
   - turns the R2047D lemma-statement bank into a directed dependency graph.
2. `R2049DLeanEndpointFirstConcreteObligationProofReadinessChecklist`
   - turns the graph into a proof-readiness checklist for the next executable proof-attempt layer.

Both layers are bookkeeping/proof-preparation layers only. They preserve `A.actualLiTarget` and explicitly avoid claiming proof of the endpoint estimate, transfer, finite-Abel reduction, proof-kernel connection, RH, or full formalization.
