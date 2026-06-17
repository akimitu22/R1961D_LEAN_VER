# R1991D endpoint concrete proof-route bank ledger

R1991D adds a main-manuscript anchored endpoint concrete proof-route layer on top
of the verified R1990D endpoint concrete-lemma statement bank.

## Added Lean modules

- `R1991DLeanEndpointConcreteProofRouteBank.lean`
- `R1991DLeanEndpointConcreteProofRouteBank/EndpointConcreteProofRouteSlots.lean`
- `R1991DLeanEndpointConcreteProofRouteBank/EndpointProofRouteDependencyPlan.lean`
- `R1991DLeanEndpointConcreteProofRouteBank/EndpointProofRouteBridge.lean`
- `R1991DLeanEndpointConcreteProofRouteBank/ToyEndpointProofRouteBank.lean`

## Main bridge

- `R1991DLeanEndpointConcreteProofRouteBank.endpoint_concrete_proof_route_bank_to_actual_li_target`
- `R1991DLeanEndpointConcreteProofRouteBank.endpoint_proof_route_dependency_plan_to_actual_li_target`

## Boundary statement

R1991D records proof-route carriers and route dependency order for the first
endpoint concrete lemma family.  It does not prove the endpoint estimate,
boundary-error estimate, remainder/uniformity estimate, sign-transfer estimate,
explicit formula, or RH.
