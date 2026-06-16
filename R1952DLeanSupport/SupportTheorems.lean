import R1949DLean
import R1952DLeanSupport.VersionMap

namespace R1952DLeanSupport

open R1949DLean


theorem r1952_conditional_main_no_escape_from_verified_core
    (B : AbelBookkeeping)
    (AI : AbelIdentityAxioms B)
    (SO : SameObjectPreservationAxioms B)
    (Th : Theory)
    (SE : SupportExhaustionAxioms Th)
    (LR : LayerRealizationAxioms Th.layerCtx)
    (GR : GeneratorRealizationAxioms Th)
    (TE : TerminalExtensionAxioms Th)
    (T : CoherentOperation)
    (C : TerminalClass)
    (hReady : AbelReady B)
    (hCoh : Th.InCoherentClosure T)
    (hNonzero : Th.TerminalClassNonzero C) :
    B.finiteToAbelClosureNecessity ∧ Th.InGeneratedClosure T ∧ ¬ Th.InternallyKills T C := by
  exact R1949DLean.conditional_main_no_escape_from_all_obligations
    B AI SO Th SE LR GR TE T C hReady hCoh hNonzero


theorem r1952_conditional_terminal_extension_from_verified_core
    (B : AbelBookkeeping)
    (AI : AbelIdentityAxioms B)
    (SO : SameObjectPreservationAxioms B)
    (Th : Theory)
    (SE : SupportExhaustionAxioms Th)
    (LR : LayerRealizationAxioms Th.layerCtx)
    (GR : GeneratorRealizationAxioms Th)
    (TE : TerminalExtensionAxioms Th)
    (T : CoherentOperation)
    (C : TerminalClass)
    (hReady : AbelReady B)
    (hCoh : Th.InCoherentClosure T)
    (hNonzero : Th.TerminalClassNonzero C)
    (hAttempt : Th.AttemptsToKill T C) :
    B.finiteToAbelClosureNecessity ∧ Th.TerminalIdealExtension C := by
  exact R1949DLean.conditional_kill_attempt_forces_terminal_extension
    B AI SO Th SE LR GR TE T C hReady hCoh hNonzero hAttempt

end R1952DLeanSupport
