import R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface.EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterfaceDependencyAudit

namespace R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R1962DLeanAnalyticRealization

/-- Bridge from the R2061D witness interface to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterfaceDependencyAudit AP AQ :=
  { auditItemCount := AQ.witnessInterfaceStageCount
    attachedToSlotPopulationBoundary := AQ.respectsSlotPopulationNoProofTermStatus
    auditsEndpointEstimateWitnessInterface := AQ.recordsEndpointEstimateWitnessInterface
    auditsExplicitFormulaWitnessInterface := AQ.recordsExplicitFormulaWitnessInterface
    auditsTransferAssemblyWitnessInterface := AQ.recordsTransferAssemblyWitnessInterface
    auditsFiniteAbelReductionWitnessInterface := AQ.recordsFiniteAbelReductionWitnessInterface
    auditsProofKernelConnectionWitnessInterface := AQ.recordsProofKernelConnectionWitnessInterface
    auditsEveryWitnessInterfaceExposed := AQ.everyWitnessInterfaceExposed
    auditsWitnessPopulationCandidateMatching := AQ.everyWitnessInterfaceMatchesPopulationCandidate
    auditsNoWitnessProofTermHere := AQ.noWitnessProofTermSuppliedHere
    auditsNoWitnessCheckerRunHere := AQ.noWitnessCheckerRunHere
    auditsFutureCheckerKernelPermission := AQ.permitsFutureCertificateCheckerKernel
    actualLiTarget := AQ.actualLiTarget }

/-- The R2061D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface_to_dependency_audit AQ).actualLiTarget

end R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
