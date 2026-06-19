import R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots.EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotsDependencyAudit

namespace R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R1962DLeanAnalyticRealization

/-- Bridge from the R2059D closure certificate slots to their dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_closure_certificate_slots_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    (AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotsDependencyAudit AN AO :=
  { auditItemCount := AO.certificateSlotStageCount
    attachedToClosureCertificateBoundary := AO.respectsCertificateBoundaryNoProofTermStatus
    auditsEndpointEstimateCertificateSlot := AO.recordsEndpointEstimateCertificateSlot
    auditsExplicitFormulaCertificateSlot := AO.recordsExplicitFormulaCertificateSlot
    auditsTransferAssemblyCertificateSlot := AO.recordsTransferAssemblyCertificateSlot
    auditsFiniteAbelReductionCertificateSlot := AO.recordsFiniteAbelReductionCertificateSlot
    auditsProofKernelConnectionCertificateSlot := AO.recordsProofKernelConnectionCertificateSlot
    auditsEverySlotAllocated := AO.everySlotAllocated
    auditsNoSlotFilledHere := AO.noSlotFilledHere
    auditsNoSlotCheckedHere := AO.noSlotCheckedHere
    auditsFutureSlotCheckingPermission := AO.permitsFutureCertificateSlotChecking
    actualLiTarget := AO.actualLiTarget }

/-- The R2059D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_slots_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    (AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_closure_certificate_slots_to_dependency_audit AO).actualLiTarget

end R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
