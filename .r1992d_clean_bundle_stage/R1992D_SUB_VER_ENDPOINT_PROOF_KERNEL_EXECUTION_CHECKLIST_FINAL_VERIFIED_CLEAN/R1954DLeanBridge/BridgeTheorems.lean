import R1954DLeanBridge.BridgeObligations

namespace R1954DLeanBridge

open R1949DLean
open R1952DLeanSupport

structure BridgeAxioms
    (S : StandardRHBridgeContext)
    (M : ManuscriptBridgeContext S) where
  standardReady : StandardRHReady S
  manuscriptReady : ManuscriptBridgeReady M
  noEscapeToLiCriterionTarget :
    M.bookkeeping.finiteToAbelClosureNecessity →
    M.theory.InGeneratedClosure M.operation →
    (¬ M.theory.InternallyKills M.operation M.terminalClass) →
    S.liCriterionTarget
  liCriterionTargetToStandardConclusion :
    S.liCriterionTarget → S.standardAnalyticConclusion
  terminalExtensionToStandardConclusion :
    M.theory.TerminalIdealExtension M.terminalClass →
    S.standardAnalyticConclusion


theorem bridge_axioms_provide_standard_readiness
    (S : StandardRHBridgeContext)
    (M : ManuscriptBridgeContext S)
    (BA : BridgeAxioms S M) :
    StandardRHReady S := by
  exact BA.standardReady


theorem bridge_axioms_provide_manuscript_readiness
    (S : StandardRHBridgeContext)
    (M : ManuscriptBridgeContext S)
    (BA : BridgeAxioms S M) :
    ManuscriptBridgeReady M := by
  exact BA.manuscriptReady


theorem bridge_conditional_no_escape_to_standard_conclusion
    (S : StandardRHBridgeContext)
    (M : ManuscriptBridgeContext S)
    (BA : BridgeAxioms S M)
    (AI : AbelIdentityAxioms M.bookkeeping)
    (SO : SameObjectPreservationAxioms M.bookkeeping)
    (SE : SupportExhaustionAxioms M.theory)
    (LR : LayerRealizationAxioms M.theory.layerCtx)
    (GR : GeneratorRealizationAxioms M.theory)
    (TE : TerminalExtensionAxioms M.theory)
    (hReady : AbelReady M.bookkeeping)
    (hCoh : M.theory.InCoherentClosure M.operation)
    (hNonzero : M.theory.TerminalClassNonzero M.terminalClass) :
    S.standardAnalyticConclusion := by
  have hMain := R1952DLeanSupport.r1952_conditional_main_no_escape_from_verified_core
    M.bookkeeping AI SO M.theory SE LR GR TE M.operation M.terminalClass
    hReady hCoh hNonzero
  have hLi : S.liCriterionTarget :=
    BA.noEscapeToLiCriterionTarget hMain.left hMain.right.left hMain.right.right
  exact BA.liCriterionTargetToStandardConclusion hLi


theorem bridge_conditional_kill_attempt_to_standard_conclusion
    (S : StandardRHBridgeContext)
    (M : ManuscriptBridgeContext S)
    (BA : BridgeAxioms S M)
    (AI : AbelIdentityAxioms M.bookkeeping)
    (SO : SameObjectPreservationAxioms M.bookkeeping)
    (SE : SupportExhaustionAxioms M.theory)
    (LR : LayerRealizationAxioms M.theory.layerCtx)
    (GR : GeneratorRealizationAxioms M.theory)
    (TE : TerminalExtensionAxioms M.theory)
    (hReady : AbelReady M.bookkeeping)
    (hCoh : M.theory.InCoherentClosure M.operation)
    (hNonzero : M.theory.TerminalClassNonzero M.terminalClass)
    (hAttempt : M.theory.AttemptsToKill M.operation M.terminalClass) :
    S.standardAnalyticConclusion := by
  have hExt := R1952DLeanSupport.r1952_conditional_terminal_extension_from_verified_core
    M.bookkeeping AI SO M.theory SE LR GR TE M.operation M.terminalClass
    hReady hCoh hNonzero hAttempt
  exact BA.terminalExtensionToStandardConclusion hExt.right

end R1954DLeanBridge
