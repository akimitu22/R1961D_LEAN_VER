import R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.EndpointFirstConcreteObligationEndpointTheoremProofBoundary

namespace R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

/-- Dependency audit for R2071D endpoint theorem proof boundary. -/
structure EndpointFirstConcreteObligationEndpointTheoremProofBoundaryDependencyAudit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) where
  auditItemCount : Nat
  auditsStatementAssemblyInherited : Prop
  auditsProofBoundaryOpened : Prop
  auditsEndpointProofTermSlotExposed : Prop
  auditsFirstConcreteCertificateAvailableAsPremise : Prop
  auditsEndpointTheoremStillUnproved : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2071D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (audit : EndpointFirstConcreteObligationEndpointTheoremProofBoundaryDependencyAudit BA) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
