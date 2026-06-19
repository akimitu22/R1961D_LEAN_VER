import R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder.EndpointFirstConcreteObligationLocalDischargeDependencyBinderBridge
import R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry.ToyEndpointFirstConcreteObligationLocalDischargeCandidateRegistry

namespace R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder

open R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry
open R1962DLeanAnalyticRealization

private def mkBinding {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget)
    (name : String) (idx : Nat) (source : String)
    (depEndpoint depExplicit depTransfer depFinite depKernel : Bool) :
    EndpointFirstConcreteObligationLocalDischargeDependencyBinding A :=
  { bindingName := name
    bindingIndex := idx
    sourceCandidateName := source
    requiredCarrier := Unit
    suppliedCarrier := Unit
    bindingPrecondition := True
    bindingPostcondition := True
    dependsOnEndpointEstimate := depEndpoint
    dependsOnExplicitFormula := depExplicit
    dependsOnTransferAssembly := depTransfer
    dependsOnFiniteAbelReduction := depFinite
    dependsOnProofKernelConnection := depKernel
    closedHere := false
    actualLiTarget := h }

/-- Toy constructor for R2054D local discharge dependency binder. -/
def toy_endpoint_first_concrete_obligation_local_discharge_dependency_binder
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) Unit :=
  { binderStageCount := 7
    endpointEstimateBinding := mkBinding h "endpoint-estimate-dependency-binding" 0 "endpoint-estimate-local-discharge-candidate" true false false false false
    explicitFormulaBinding := mkBinding h "explicit-formula-dependency-binding" 1 "explicit-formula-local-discharge-candidate" false true false false false
    transferAssemblyBinding := mkBinding h "transfer-assembly-dependency-binding" 2 "transfer-assembly-local-discharge-candidate" true true true false false
    finiteAbelReductionBinding := mkBinding h "finite-abel-reduction-dependency-binding" 3 "finite-abel-reduction-local-discharge-candidate" false false true true false
    proofKernelConnectionBinding := mkBinding h "proof-kernel-connection-dependency-binding" 4 "proof-kernel-connection-local-discharge-candidate" true true true true true
    inheritedLocalDischargeCandidateRegistry := Unit
    bindsEndpointEstimateCandidate := True
    bindsExplicitFormulaCandidate := True
    bindsTransferAssemblyCandidate := True
    bindsFiniteAbelReductionCandidate := True
    bindsProofKernelConnectionCandidate := True
    allBindingsRemainOpen := True
    suppliesNoDischargeProofTerm := True
    permitsFutureProofSkeletonBoundary := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_dependency_binder_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_dependency_binder_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_dependency_binder h)

end R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
