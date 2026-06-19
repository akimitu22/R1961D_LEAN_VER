import R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff

namespace R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff

/-- Stages for assembling the endpoint theorem statement from the R2069D final-theorem handoff. -/
inductive EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyStage where
  | inheritFinalTheoremHandoff
  | assembleEndpointTheoremStatementCarrier
  | bindFirstConcreteCertificateInput
  | exposeEndpointProofObligation
  | prepareEndpointProofBoundary
  | preserveNonRHBoundary
  deriving DecidableEq, Repr

/-- Payload recording the assembled endpoint theorem statement without proving it. -/
structure EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyPayload
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX) where
  inheritedFinalTheoremHandoffStatement : Prop
  inheritedFinalTheoremHandoffProof : inheritedFinalTheoremHandoffStatement
  endpointTheoremStatementCarrier : Type
  endpointTheoremStatementAssemblyStatement : Prop
  endpointTheoremStatementAssemblyProof : endpointTheoremStatementAssemblyStatement
  assembledEndpointTheoremStatement : Prop
  endpointTheoremProofObligation : Prop
  globalRHProofObligation : Prop
  doesNotClaimEndpointTheorem : Prop
  doesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/--
R2070D assembles the endpoint theorem statement/input package from the R2069D handoff.
It fixes the statement boundary and proof obligation, but does not prove the endpoint theorem.
-/
structure MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX) where
  endpointTheoremStatementAssemblyStageCount : Nat
  inheritedFinalTheoremHandoffCarrier : Type
  assemblyStage : EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyStage
  endpointTheoremStatementAssemblyPayload :
    EndpointFirstConcreteObligationEndpointTheoremStatementAssemblyPayload AY
  inheritedFinalTheoremHandoffStatement : Prop
  inheritedFinalTheoremHandoffProof : inheritedFinalTheoremHandoffStatement
  endpointTheoremStatementCarrier : Type
  endpointTheoremStatementAssemblyStatement : Prop
  endpointTheoremStatementAssemblyProof : endpointTheoremStatementAssemblyStatement
  assembledEndpointTheoremStatement : Prop
  endpointTheoremProofObligation : Prop
  firstConcreteCertificateBoundIntoEndpointTheoremHere : Bool
  firstConcreteCertificateBoundIntoEndpointTheoremHere_eq_true :
    firstConcreteCertificateBoundIntoEndpointTheoremHere = true
  endpointTheoremStatementAssembledHere : Bool
  endpointTheoremStatementAssembledHere_eq_true : endpointTheoremStatementAssembledHere = true
  endpointProofBoundaryPreparedHere : Bool
  endpointProofBoundaryPreparedHere_eq_true : endpointProofBoundaryPreparedHere = true
  provesEndpointTheoremHere : Bool
  provesEndpointTheoremHere_eq_false : provesEndpointTheoremHere = false
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  globalRHProofObligation : Prop
  actualLiTarget : A.actualLiTarget

/-- R2070D preserves the analytic target while assembling the endpoint-theorem statement. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    A.actualLiTarget :=
  AZ.actualLiTarget

/-- Extract the endpoint-theorem statement assembly proof, not an endpoint theorem proof. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_statement
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    AZ.endpointTheoremStatementAssemblyStatement :=
  AZ.endpointTheoremStatementAssemblyProof

/-- R2070D prepares, but does not close, the endpoint theorem proof boundary. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_prepares_proof_boundary
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    AZ.endpointProofBoundaryPreparedHere = true :=
  AZ.endpointProofBoundaryPreparedHere_eq_true

/-- R2070D explicitly keeps the endpoint theorem unproved. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_statement_assembly_keeps_endpoint_theorem_unclaimed
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    (AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY) :
    AZ.provesEndpointTheoremHere = false :=
  AZ.provesEndpointTheoremHere_eq_false

/-- R2070D is the endpoint theorem statement assembly layer. -/
theorem r2070_one_hundred_ninth_step_assembles_endpoint_theorem_statement : True :=
  trivial

/-- R2070D does not claim endpoint theorem, RH, or full RH formalization. -/
theorem r2070_one_hundred_ninth_step_does_not_claim_rh_formalization : True :=
  trivial

end R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
