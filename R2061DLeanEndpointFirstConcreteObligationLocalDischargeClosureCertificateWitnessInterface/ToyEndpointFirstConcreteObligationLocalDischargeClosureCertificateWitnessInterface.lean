import R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface.EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterfaceBridge
import R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary.ToyEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary

namespace R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R1962DLeanAnalyticRealization

private def mkWitnessInterfaceEntry {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget)
    (name : String) (source : String) (idx : Nat) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterfaceEntry A :=
  { witnessInterfaceName := name
    sourcePopulationCandidateName := source
    witnessInterfaceIndex := idx
    requiredWitnessObject := Unit
    checkerInputObject := Unit
    checkerOutputObject := Unit
    witnessInterfaceInvariant := True
    witnessInterfaceMatchesPopulationCandidate := true
    witnessProofTermSuppliedHere := false
    witnessCheckerRunsHere := false
    actualLiTarget := h }

/-- Toy constructor for R2061D local-discharge closure certificate witness interface. -/
def toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
      (R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary.toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary h) :=
  { witnessInterfaceStageCount := 9
    endpointEstimateWitnessInterface := mkWitnessInterfaceEntry h "endpoint-estimate-witness-interface" "endpoint-estimate-population-candidate" 0
    explicitFormulaWitnessInterface := mkWitnessInterfaceEntry h "explicit-formula-witness-interface" "explicit-formula-population-candidate" 1
    transferAssemblyWitnessInterface := mkWitnessInterfaceEntry h "transfer-assembly-witness-interface" "transfer-assembly-population-candidate" 2
    finiteAbelReductionWitnessInterface := mkWitnessInterfaceEntry h "finite-abel-reduction-witness-interface" "finite-abel-reduction-population-candidate" 3
    proofKernelConnectionWitnessInterface := mkWitnessInterfaceEntry h "proof-kernel-connection-witness-interface" "proof-kernel-connection-population-candidate" 4
    inheritedSlotPopulationBoundary := Unit
    recordsEndpointEstimateWitnessInterface := True
    recordsExplicitFormulaWitnessInterface := True
    recordsTransferAssemblyWitnessInterface := True
    recordsFiniteAbelReductionWitnessInterface := True
    recordsProofKernelConnectionWitnessInterface := True
    everyWitnessInterfaceExposed := True
    everyWitnessInterfaceMatchesPopulationCandidate := True
    noWitnessProofTermSuppliedHere := True
    noWitnessCheckerRunHere := True
    respectsSlotPopulationNoProofTermStatus := True
    permitsFutureCertificateCheckerKernel := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface h)

end R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
