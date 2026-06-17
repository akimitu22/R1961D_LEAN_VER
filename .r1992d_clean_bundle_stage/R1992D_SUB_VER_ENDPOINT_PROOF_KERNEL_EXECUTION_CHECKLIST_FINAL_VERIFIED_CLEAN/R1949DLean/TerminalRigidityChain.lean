import R1949DLean.AssumptionPackages

namespace R1949DLean

theorem terminal_preserved_by_generated_operation
    (Th : Theory)
    (TE : TerminalExtensionAxioms Th)
    (T : CoherentOperation)
    (C : TerminalClass)
    (hGen : Th.InGeneratedClosure T)
    (hNonzero : Th.TerminalClassNonzero C) :
    Th.PreservesTerminalClass T C := by
  exact TE.generatedOperationsPreserveNonzeroTerminalClasses T C hGen hNonzero

theorem terminal_no_escape_chain
    (Th : Theory)
    (TE : TerminalExtensionAxioms Th)
    (T : CoherentOperation)
    (C : TerminalClass)
    (hGen : Th.InGeneratedClosure T)
    (hNonzero : Th.TerminalClassNonzero C) :
    ¬ Th.InternallyKills T C := by
  have hPres : Th.PreservesTerminalClass T C :=
    terminal_preserved_by_generated_operation Th TE T C hGen hNonzero
  exact TE.preservingTerminalClassExcludesInternalKill T C hPres

theorem kill_attempt_forces_terminal_ideal_extension
    (Th : Theory)
    (TE : TerminalExtensionAxioms Th)
    (T : CoherentOperation)
    (C : TerminalClass)
    (hGen : Th.InGeneratedClosure T)
    (hNonzero : Th.TerminalClassNonzero C)
    (hAttempt : Th.AttemptsToKill T C) :
    Th.TerminalIdealExtension C := by
  have hNoKill : ¬ Th.InternallyKills T C :=
    terminal_no_escape_chain Th TE T C hGen hNonzero
  have hClass := TE.killAttemptClassification T C hAttempt
  cases hClass with
  | inl hKill =>
    exact False.elim (hNoKill hKill)
  | inr hExt =>
    exact hExt

end R1949DLean
