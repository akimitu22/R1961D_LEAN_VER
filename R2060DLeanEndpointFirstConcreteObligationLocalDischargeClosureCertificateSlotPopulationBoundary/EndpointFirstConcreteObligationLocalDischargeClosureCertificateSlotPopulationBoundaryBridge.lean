import R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary.EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundaryDependencyAudit

namespace R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary


open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R1962DLeanAnalyticRealization


/-- Bridge from the R2060D slot-population boundary to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    (AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundaryDependencyAudit AO AP :=
  { auditItemCount := AP.slotPopulationBoundaryStageCount
    attachedToClosureCertificateSlots := AP.respectsClosureCertificateSlotsUnfilledStatus
    auditsEndpointEstimatePopulationCandidate := AP.recordsEndpointEstimatePopulationCandidate
    auditsExplicitFormulaPopulationCandidate := AP.recordsExplicitFormulaPopulationCandidate
    auditsTransferAssemblyPopulationCandidate := AP.recordsTransferAssemblyPopulationCandidate
    auditsFiniteAbelReductionPopulationCandidate := AP.recordsFiniteAbelReductionPopulationCandidate
    auditsProofKernelConnectionPopulationCandidate := AP.recordsProofKernelConnectionPopulationCandidate
    auditsEveryPopulationCandidateRegistered := AP.everyPopulationCandidateRegistered
    auditsCandidateSlotInterfaceMatching := AP.everyCandidateMatchesAllocatedSlotInterface
    auditsNoPopulationProofTermHere := AP.noPopulationCandidateCarriesProofTermHere
    auditsNoPopulationCandidateCheckedHere := AP.noPopulationCandidateCheckedHere
    auditsFutureWitnessInterfacePermission := AP.permitsFutureWitnessInterface
    actualLiTarget := AP.actualLiTarget }

/-- The R2060D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    (AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary_to_dependency_audit AP).actualLiTarget

end R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
