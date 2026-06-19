import R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary.EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundaryBridge
import R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots.ToyEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots

namespace R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary


open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R1962DLeanAnalyticRealization


private def mkPopulationCandidate {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget)
    (name : String) (source : String) (idx : Nat) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificatePopulationCandidate A :=
  { populationCandidateName := name
    sourceCertificateSlotName := source
    populationCandidateIndex := idx
    expectedWitnessObject := Unit
    expectedCheckerInputObject := Unit
    expectedCheckerOutputObject := Unit
    populationCandidateInvariant := True
    candidateMatchesSlotInterface := true
    candidateCarriesProofTermHere := false
    candidateIsCheckedHere := false
    actualLiTarget := h }

/-- Toy constructor for R2060D local-discharge closure certificate slot-population boundary. -/
def toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
      (R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots.toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_slots h) :=
  { slotPopulationBoundaryStageCount := 9
    endpointEstimatePopulationCandidate := mkPopulationCandidate h "endpoint-estimate-population-candidate" "endpoint-estimate-closure-certificate-slot" 0
    explicitFormulaPopulationCandidate := mkPopulationCandidate h "explicit-formula-population-candidate" "explicit-formula-closure-certificate-slot" 1
    transferAssemblyPopulationCandidate := mkPopulationCandidate h "transfer-assembly-population-candidate" "transfer-assembly-closure-certificate-slot" 2
    finiteAbelReductionPopulationCandidate := mkPopulationCandidate h "finite-abel-reduction-population-candidate" "finite-abel-reduction-closure-certificate-slot" 3
    proofKernelConnectionPopulationCandidate := mkPopulationCandidate h "proof-kernel-connection-population-candidate" "proof-kernel-connection-closure-certificate-slot" 4
    inheritedClosureCertificateSlots := Unit
    recordsEndpointEstimatePopulationCandidate := True
    recordsExplicitFormulaPopulationCandidate := True
    recordsTransferAssemblyPopulationCandidate := True
    recordsFiniteAbelReductionPopulationCandidate := True
    recordsProofKernelConnectionPopulationCandidate := True
    everyPopulationCandidateRegistered := True
    everyCandidateMatchesAllocatedSlotInterface := True
    noPopulationCandidateCarriesProofTermHere := True
    noPopulationCandidateCheckedHere := True
    respectsClosureCertificateSlotsUnfilledStatus := True
    permitsFutureWitnessInterface := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary h)

end R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
