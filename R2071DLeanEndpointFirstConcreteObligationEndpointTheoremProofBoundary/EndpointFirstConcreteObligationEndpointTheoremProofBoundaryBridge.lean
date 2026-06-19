import R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.EndpointFirstConcreteObligationEndpointTheoremProofBoundaryDependencyAudit

namespace R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

/-- Bridge exported by R2071D endpoint theorem proof boundary. -/
structure EndpointFirstConcreteObligationEndpointTheoremProofBoundaryBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) where
  bridgeItemCount : Nat
  exportsProofBoundaryStatement : Prop
  exportsProofBoundaryProof : exportsProofBoundaryStatement
  exportsEndpointTheoremProofTermSlot : Type
  exportsProofBoundaryOpenedHere : Bool
  exportsProofBoundaryOpenedHere_eq_true : exportsProofBoundaryOpenedHere = true
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2071D endpoint theorem proof boundary to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) :
    EndpointFirstConcreteObligationEndpointTheoremProofBoundaryDependencyAudit BA :=
  { auditItemCount := 6
    auditsStatementAssemblyInherited := True
    auditsProofBoundaryOpened := True
    auditsEndpointProofTermSlotExposed := True
    auditsFirstConcreteCertificateAvailableAsPremise := True
    auditsEndpointTheoremStillUnproved := True
    auditsRHStillUnproved := True
    actualLiTarget := BA.actualLiTarget }

/-- Build the R2071D proof-boundary bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) :
    EndpointFirstConcreteObligationEndpointTheoremProofBoundaryBridge BA :=
  { bridgeItemCount := 8
    exportsProofBoundaryStatement := BA.endpointTheoremProofBoundaryStatement
    exportsProofBoundaryProof := BA.endpointTheoremProofBoundaryProof
    exportsEndpointTheoremProofTermSlot := BA.endpointTheoremProofTermSlot
    exportsProofBoundaryOpenedHere := BA.endpointTheoremProofBoundaryOpenedHere
    exportsProofBoundaryOpenedHere_eq_true := BA.endpointTheoremProofBoundaryOpenedHere_eq_true
    exportsEndpointTheoremProvedHere := BA.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := BA.provesEndpointTheoremHere_eq_false
    exportsRHProvedHere := BA.provesRHHere
    exportsRHProvedHere_eq_false := BA.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BA.actualLiTarget }

/-- The R2071D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_to_bridge BA).actualLiTarget

end R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
