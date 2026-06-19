import R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly.EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyDependencyAudit

namespace R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff

/-- Bridge exported by R2070D endpoint theorem statement assembly. -/
structure EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) where
  bridgeItemCount : Nat
  exportsEndpointTheoremStatementAssemblyStatement : Prop
  exportsEndpointTheoremStatementAssemblyProof : exportsEndpointTheoremStatementAssemblyStatement
  exportsEndpointTheoremStatementAssembledHere : Bool
  exportsEndpointTheoremStatementAssembledHere_eq_true :
    exportsEndpointTheoremStatementAssembledHere = true
  exportsEndpointProofBoundaryPreparedHere : Bool
  exportsEndpointProofBoundaryPreparedHere_eq_true :
    exportsEndpointProofBoundaryPreparedHere = true
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2070D endpoint theorem statement assembly to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyDependencyAudit AZ :=
  { auditItemCount := 6
    auditsFinalTheoremHandoffInherited := True
    auditsStatementCarrierAssembled := True
    auditsFirstConcreteCertificateBound := True
    auditsEndpointProofObligationExposed := True
    auditsEndpointTheoremStillUnclaimed := True
    auditsRHStillUnclaimed := True
    actualLiTarget := AZ.actualLiTarget }

/-- Build the R2070D bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyBridge AZ :=
  { bridgeItemCount := 8
    exportsEndpointTheoremStatementAssemblyStatement := AZ.endpointTheoremStatementAssemblyStatement
    exportsEndpointTheoremStatementAssemblyProof := AZ.endpointTheoremStatementAssemblyProof
    exportsEndpointTheoremStatementAssembledHere := AZ.endpointTheoremStatementAssembledHere
    exportsEndpointTheoremStatementAssembledHere_eq_true := AZ.endpointTheoremStatementAssembledHere_eq_true
    exportsEndpointProofBoundaryPreparedHere := AZ.endpointProofBoundaryPreparedHere
    exportsEndpointProofBoundaryPreparedHere_eq_true := AZ.endpointProofBoundaryPreparedHere_eq_true
    exportsEndpointTheoremProvedHere := AZ.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := AZ.provesEndpointTheoremHere_eq_false
    exportsRHProvedHere := AZ.provesRHHere
    exportsRHProvedHere_eq_false := AZ.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := AZ.actualLiTarget }

/-- The R2070D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_to_bridge AZ).actualLiTarget

end R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
