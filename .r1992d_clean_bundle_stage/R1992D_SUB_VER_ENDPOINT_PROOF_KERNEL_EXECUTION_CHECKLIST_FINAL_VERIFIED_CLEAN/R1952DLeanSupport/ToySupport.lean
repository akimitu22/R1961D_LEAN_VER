import R1949DLean
import R1952DLeanSupport.ObligationFieldBindings

namespace R1952DLeanSupport

open R1949DLean


theorem toy_model_satisfies_all_hardened_packages :
    Nonempty (AbelIdentityAxioms toyAbelBookkeeping) ∧
    Nonempty (SameObjectPreservationAxioms toyAbelBookkeeping) ∧
    Nonempty (SupportExhaustionAxioms toyTheory) ∧
    Nonempty (LayerRealizationAxioms toyTheory.layerCtx) ∧
    Nonempty (GeneratorRealizationAxioms toyTheory) ∧
    Nonempty (TerminalExtensionAxioms toyTheory) := by
  exact And.intro ⟨toyAbelIdentityAxioms⟩
    (And.intro ⟨toySameObjectPreservationAxioms⟩
      (And.intro ⟨toySupportExhaustionAxioms⟩
        (And.intro ⟨toyLayerRealizationAxioms⟩
          (And.intro ⟨toyGeneratorRealizationAxioms⟩
            ⟨toyTerminalExtensionAxioms⟩))))


theorem toy_model_ready_and_main_run :
    AbelReady toyAbelBookkeeping ∧
    toyAbelBookkeeping.finiteToAbelClosureNecessity ∧
    toyTheory.InGeneratedClosure toyOperation ∧
    ¬ toyTheory.InternallyKills toyOperation toyTerminal := by
  exact And.intro toyAbelReady R1949DLean.toy_model_runs_conditional_main


theorem toy_model_terminal_extension_branch_runs
    (hAttempt : toyTheory.AttemptsToKill toyOperation toyTerminal) :
    toyTheory.TerminalIdealExtension toyTerminal := by
  have hExt := R1949DLean.kill_attempt_forces_terminal_ideal_extension
    toyTheory
    toyTerminalExtensionAxioms
    toyOperation
    toyTerminal
    trivial
    trivial
    hAttempt
  exact hExt


theorem toy_model_uses_verified_support_wrapper :
    toyAbelBookkeeping.finiteToAbelClosureNecessity ∧
    toyTheory.InGeneratedClosure toyOperation ∧
    ¬ toyTheory.InternallyKills toyOperation toyTerminal := by
  exact r1952_conditional_main_no_escape_from_verified_core
    toyAbelBookkeeping
    toyAbelIdentityAxioms
    toySameObjectPreservationAxioms
    toyTheory
    toySupportExhaustionAxioms
    toyLayerRealizationAxioms
    toyGeneratorRealizationAxioms
    toyTerminalExtensionAxioms
    toyOperation
    toyTerminal
    toyAbelReady
    trivial
    trivial

end R1952DLeanSupport
