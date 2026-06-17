# R2005D Endpoint First Discharge Execution Precheck Ledger

R2005D adds an endpoint first-discharge execution precheck and dependency audit.

Center layer: `R2005DLeanEndpointFirstDischargeExecutionPrecheck`

Center theorem:

```lean
R2005DLeanEndpointFirstDischargeExecutionPrecheck.endpoint_first_discharge_execution_precheck_to_actual_li_target
```

Boundary: this layer records precheck carriers only; it does not run the precheck, execute the endpoint proof kernel, discharge a concrete endpoint lemma, or prove endpoint/RH claims.
