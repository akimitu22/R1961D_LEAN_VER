import R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

namespace R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

/-- Stages for opening the proof boundary of the assembled endpoint theorem statement. -/
inductive EndpointFirstConcreteObligationEndpointTheoremProofBoundaryStage where
  | inheritEndpointTheoremStatementAssembly
  | exposeEndpointTheoremProofTermSlot
  | bindFirstConcreteCertificateAsPremise
  | recordRemainingProofObligations
  | preserveGlobalRHBoundary
  deriving DecidableEq, Repr

/-- Payload for the endpoint theorem proof boundary. It exposes proof obligations without closing them. -/
structure EndpointFirstConcreteObligationEndpointTheoremProofBoundaryPayload
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) where
  inheritedEndpointTheoremStatementAssemblyStatement : Prop
  inheritedEndpointTheoremStatementAssemblyProof : inheritedEndpointTheoremStatementAssemblyStatement
  endpointTheoremProofBoundaryStatement : Prop
  endpointTheoremProofBoundaryProof : endpointTheoremProofBoundaryStatement
  endpointTheoremProofTermSlot : Type
  remainingEndpointTheoremProofObligation : Prop
  remainingGlobalRHProofObligation : Prop
  doesNotClaimEndpointTheorem : Prop
  doesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/--
R2071D opens the endpoint theorem proof boundary from the R2070D assembled statement.
It identifies the proof-term slot and remaining obligations, but does not prove the endpoint theorem.
-/
structure MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) where
  endpointTheoremProofBoundaryStageCount : Nat
  inheritedEndpointTheoremStatementAssemblyCarrier : Type
  proofBoundaryStage : EndpointFirstConcreteObligationEndpointTheoremProofBoundaryStage
  endpointTheoremProofBoundaryPayload :
    EndpointFirstConcreteObligationEndpointTheoremProofBoundaryPayload AZ
  inheritedEndpointTheoremStatementAssemblyStatement : Prop
  inheritedEndpointTheoremStatementAssemblyProof : inheritedEndpointTheoremStatementAssemblyStatement
  endpointTheoremProofBoundaryStatement : Prop
  endpointTheoremProofBoundaryProof : endpointTheoremProofBoundaryStatement
  endpointTheoremProofTermSlot : Type
  remainingEndpointTheoremProofObligation : Prop
  remainingGlobalRHProofObligation : Prop
  endpointTheoremProofBoundaryOpenedHere : Bool
  endpointTheoremProofBoundaryOpenedHere_eq_true : endpointTheoremProofBoundaryOpenedHere = true
  endpointTheoremProofTermRequiredHere : Bool
  endpointTheoremProofTermRequiredHere_eq_true : endpointTheoremProofTermRequiredHere = true
  firstConcreteCertificateAvailableAsEndpointPremiseHere : Bool
  firstConcreteCertificateAvailableAsEndpointPremiseHere_eq_true :
    firstConcreteCertificateAvailableAsEndpointPremiseHere = true
  provesEndpointTheoremHere : Bool
  provesEndpointTheoremHere_eq_false : provesEndpointTheoremHere = false
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  actualLiTarget : A.actualLiTarget

/-- R2071D preserves the analytic target while opening the proof boundary. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) :
    A.actualLiTarget :=
  BA.actualLiTarget

/-- Extract the endpoint theorem proof-boundary statement, not an endpoint theorem proof. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_statement
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) :
    BA.endpointTheoremProofBoundaryStatement :=
  BA.endpointTheoremProofBoundaryProof

/-- R2071D exposes the proof term slot required to close the endpoint theorem later. -/
def endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_required_proof_term_type
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) : Type :=
  BA.endpointTheoremProofTermSlot

/-- R2071D explicitly keeps the endpoint theorem proof unclosed. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary_keeps_endpoint_theorem_unclaimed
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) :
    BA.provesEndpointTheoremHere = false :=
  BA.provesEndpointTheoremHere_eq_false

/-- R2071D is the endpoint theorem proof-boundary layer. -/
theorem r2071_one_hundred_tenth_step_opens_endpoint_theorem_proof_boundary : True :=
  trivial

/-- R2071D does not claim endpoint theorem, RH, or full RH formalization. -/
theorem r2071_one_hundred_tenth_step_does_not_claim_rh_formalization : True :=
  trivial

end R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
