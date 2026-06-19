import R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff.EndpointFirstConcreteObligationFinalTheoremHandoffDependencyAudit

namespace R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration

/-- Bridge object exported by R2069D final-theorem handoff. -/
structure EndpointFirstConcreteObligationFinalTheoremHandoffBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX) where
  bridgeItemCount : Nat
  exportsFinalTheoremHandoffStatement : Prop
  exportsFinalTheoremHandoffProof : exportsFinalTheoremHandoffStatement
  exportsEndpointTheoremInputPackagedHere : Bool
  exportsEndpointTheoremInputPackagedHere_eq_true : exportsEndpointTheoremInputPackagedHere = true
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2069D handoff to a dependency audit. -/
def endpoint_first_concrete_obligation_final_theorem_handoff_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX) :
    EndpointFirstConcreteObligationFinalTheoremHandoffDependencyAudit AY :=
  { auditItemCount := 6
    auditsEndpointBranchIntegrationInherited := True
    auditsFinalTheoremInputPackaged := True
    auditsHandoffStatement := True
    auditsEndpointTheoremStillUnclaimed := True
    auditsGlobalRHStillUnclaimed := True
    auditsRemainingGlobalObligationsExposed := True
    actualLiTarget := AY.actualLiTarget }

/-- Build the R2069D final-theorem handoff bridge. -/
def endpoint_first_concrete_obligation_final_theorem_handoff_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX) :
    EndpointFirstConcreteObligationFinalTheoremHandoffBridge AY :=
  { bridgeItemCount := 8
    exportsFinalTheoremHandoffStatement := AY.finalTheoremHandoffStatement
    exportsFinalTheoremHandoffProof := AY.finalTheoremHandoffProof
    exportsEndpointTheoremInputPackagedHere := AY.endpointTheoremInputPackagedHere
    exportsEndpointTheoremInputPackagedHere_eq_true := AY.endpointTheoremInputPackagedHere_eq_true
    exportsEndpointTheoremProvedHere := AY.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := AY.provesEndpointTheoremHere_eq_false
    exportsRHProvedHere := AY.provesRHHere
    exportsRHProvedHere_eq_false := AY.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := AY.actualLiTarget }

/-- The R2069D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_final_theorem_handoff_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_final_theorem_handoff_to_bridge AY).actualLiTarget

end R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
