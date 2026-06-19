import R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots.EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots

namespace R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2059D local discharge closure certificate slots. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotsDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    (AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM)
    (AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN) where
  auditItemCount : Nat
  attachedToClosureCertificateBoundary : Prop
  auditsEndpointEstimateCertificateSlot : Prop
  auditsExplicitFormulaCertificateSlot : Prop
  auditsTransferAssemblyCertificateSlot : Prop
  auditsFiniteAbelReductionCertificateSlot : Prop
  auditsProofKernelConnectionCertificateSlot : Prop
  auditsEverySlotAllocated : Prop
  auditsNoSlotFilledHere : Prop
  auditsNoSlotCheckedHere : Prop
  auditsFutureSlotCheckingPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2059D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_slots_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    (AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM)
    (AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN)
    (audit : EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotsDependencyAudit AN AO) : A.actualLiTarget :=
  audit.actualLiTarget

end R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
