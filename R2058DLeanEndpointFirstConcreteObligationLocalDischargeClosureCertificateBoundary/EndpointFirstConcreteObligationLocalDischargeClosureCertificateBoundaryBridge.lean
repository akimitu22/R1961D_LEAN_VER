import R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary.EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundaryDependencyAudit

namespace R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R1962DLeanAnalyticRealization

/-- Bridge from the R2058D closure certificate boundary to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    (AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundaryDependencyAudit AM AN :=
  { auditItemCount := AN.certificateBoundaryStageCount
    attachedToClosureObligationMap := AN.respectsClosureObligationMapOpenStatus
    auditsEndpointEstimateCertificateBoundary := AN.recordsEndpointEstimateCertificateBoundary
    auditsExplicitFormulaCertificateBoundary := AN.recordsExplicitFormulaCertificateBoundary
    auditsTransferAssemblyCertificateBoundary := AN.recordsTransferAssemblyCertificateBoundary
    auditsFiniteAbelReductionCertificateBoundary := AN.recordsFiniteAbelReductionCertificateBoundary
    auditsProofKernelConnectionCertificateBoundary := AN.recordsProofKernelConnectionCertificateBoundary
    auditsNoCertificateProofTerm := AN.suppliesNoCertificateProofTerm
    auditsNoCertificateCheckingHere := AN.checksNoCertificateHere
    auditsFutureClosureCertificateSlotsPermission := AN.permitsFutureClosureCertificateSlots
    actualLiTarget := AN.actualLiTarget }

/-- The R2058D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    (AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_to_dependency_audit AN).actualLiTarget

end R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
