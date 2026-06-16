import R1956DLeanInterface.InterfaceAxioms
import R1955DLeanScaffold.RefinedBridgeTheorems

namespace R1956DLeanInterface

open R1949DLean
open R1955DLeanScaffold

theorem analytic_interface_conditional_no_escape_to_standard_conclusion
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (IA : AnalyticInterfaceAxioms S M)
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
  exact R1955DLeanScaffold.refined_bridge_conditional_no_escape_to_standard_conclusion
    S M (analytic_interface_to_refined_bridge_axioms S M IA)
    AI SO SE LR GR TE hReady hCoh hNonzero

theorem analytic_interface_conditional_kill_attempt_to_standard_conclusion
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (IA : AnalyticInterfaceAxioms S M)
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
  exact R1955DLeanScaffold.refined_bridge_conditional_kill_attempt_to_standard_conclusion
    S M (analytic_interface_to_refined_bridge_axioms S M IA)
    AI SO SE LR GR TE hReady hCoh hNonzero hAttempt

end R1956DLeanInterface
