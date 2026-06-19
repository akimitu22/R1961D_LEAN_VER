import R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary.EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary

namespace R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2058D local discharge closure certificate boundary. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundaryDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    (AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL)
    (AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM) where
  auditItemCount : Nat
  attachedToClosureObligationMap : Prop
  auditsEndpointEstimateCertificateBoundary : Prop
  auditsExplicitFormulaCertificateBoundary : Prop
  auditsTransferAssemblyCertificateBoundary : Prop
  auditsFiniteAbelReductionCertificateBoundary : Prop
  auditsProofKernelConnectionCertificateBoundary : Prop
  auditsNoCertificateProofTerm : Prop
  auditsNoCertificateCheckingHere : Prop
  auditsFutureClosureCertificateSlotsPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2058D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    (AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL)
    (AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM)
    (audit : EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundaryDependencyAudit AM AN) : A.actualLiTarget :=
  audit.actualLiTarget

end R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
