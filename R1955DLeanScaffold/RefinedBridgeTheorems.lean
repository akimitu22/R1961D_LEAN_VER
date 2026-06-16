import R1955DLeanScaffold.RefinedBridgeAxioms

namespace R1955DLeanScaffold

open R1949DLean
open R1954DLeanBridge

theorem refined_bridge_conditional_no_escape_to_standard_conclusion
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M)
    (AI : AbelIdentityAxioms M.bridgeContext.bookkeeping)
    (SO : SameObjectPreservationAxioms M.bridgeContext.bookkeeping)
    (SE : SupportExhaustionAxioms M.bridgeContext.theory)
    (LR : LayerRealizationAxioms M.bridgeContext.theory.layerCtx)
    (GR : GeneratorRealizationAxioms M.bridgeContext.theory)
    (TE : TerminalExtensionAxioms M.bridgeContext.theory)
    (hReady : AbelReady M.bridgeContext.bookkeeping)
    (hCoh : M.bridgeContext.theory.InCoherentClosure M.bridgeContext.operation)
    (hNonzero : M.bridgeContext.theory.TerminalClassNonzero M.bridgeContext.terminalClass) :
    S.standardContext.standardAnalyticConclusion := by
  exact R1954DLeanBridge.bridge_conditional_no_escape_to_standard_conclusion
    S.standardContext
    M.bridgeContext
    (refined_bridge_axioms_to_r1954_bridge_axioms S M RA)
    AI SO SE LR GR TE hReady hCoh hNonzero


theorem refined_bridge_conditional_kill_attempt_to_standard_conclusion
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M)
    (AI : AbelIdentityAxioms M.bridgeContext.bookkeeping)
    (SO : SameObjectPreservationAxioms M.bridgeContext.bookkeeping)
    (SE : SupportExhaustionAxioms M.bridgeContext.theory)
    (LR : LayerRealizationAxioms M.bridgeContext.theory.layerCtx)
    (GR : GeneratorRealizationAxioms M.bridgeContext.theory)
    (TE : TerminalExtensionAxioms M.bridgeContext.theory)
    (hReady : AbelReady M.bridgeContext.bookkeeping)
    (hCoh : M.bridgeContext.theory.InCoherentClosure M.bridgeContext.operation)
    (hNonzero : M.bridgeContext.theory.TerminalClassNonzero M.bridgeContext.terminalClass)
    (hAttempt : M.bridgeContext.theory.AttemptsToKill M.bridgeContext.operation M.bridgeContext.terminalClass) :
    S.standardContext.standardAnalyticConclusion := by
  exact R1954DLeanBridge.bridge_conditional_kill_attempt_to_standard_conclusion
    S.standardContext
    M.bridgeContext
    (refined_bridge_axioms_to_r1954_bridge_axioms S M RA)
    AI SO SE LR GR TE hReady hCoh hNonzero hAttempt

end R1955DLeanScaffold
