import R1949DLean.FiniteToAbelChain
import R1949DLean.StructuralSupportChain
import R1949DLean.TerminalRigidityChain
import R1949DLean.DependencyCertificates

namespace R1949DLean

theorem conditional_finite_to_abel_and_terminal_chain
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
    B.finiteToAbelClosureNecessity ∧ ¬ Th.InternallyKills T C := by
  have hFA : B.finiteToAbelClosureNecessity :=
    finite_to_abel_from_bookkeeping B AI SO hReady
  have hGen : Th.InGeneratedClosure T :=
    coherent_closure_normal_form_chain Th SE LR GR T hCoh
  have hNoKill : ¬ Th.InternallyKills T C :=
    terminal_no_escape_chain Th TE T C hGen hNonzero
  exact And.intro hFA hNoKill

theorem conditional_main_no_escape_from_all_obligations
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
  have hFA : B.finiteToAbelClosureNecessity :=
    finite_to_abel_from_bookkeeping B AI SO hReady
  have hGen : Th.InGeneratedClosure T :=
    coherent_closure_normal_form_chain Th SE LR GR T hCoh
  have hNoKill : ¬ Th.InternallyKills T C :=
    terminal_no_escape_chain Th TE T C hGen hNonzero
  exact And.intro hFA (And.intro hGen hNoKill)

theorem conditional_kill_attempt_forces_terminal_extension
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
  have hFA : B.finiteToAbelClosureNecessity :=
    finite_to_abel_from_bookkeeping B AI SO hReady
  have hGen : Th.InGeneratedClosure T :=
    coherent_closure_normal_form_chain Th SE LR GR T hCoh
  have hExt : Th.TerminalIdealExtension C :=
    kill_attempt_forces_terminal_ideal_extension Th TE T C hGen hNonzero hAttempt
  exact And.intro hFA hExt

def mainDependencyCertificate : DependencyCertificate :=
  mainNoEscapeCertificate

end R1949DLean
