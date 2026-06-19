import R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly.EndpointFirstConcreteObligationEndpointTheoremStatementAssembly

namespace R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff

/-- Dependency audit for R2070D endpoint theorem statement assembly. -/
structure EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyDependencyAudit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) where
  auditItemCount : Nat
  auditsFinalTheoremHandoffInherited : Prop
  auditsStatementCarrierAssembled : Prop
  auditsFirstConcreteCertificateBound : Prop
  auditsEndpointProofObligationExposed : Prop
  auditsEndpointTheoremStillUnclaimed : Prop
  auditsRHStillUnclaimed : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2070D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (audit : EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyDependencyAudit AZ) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
