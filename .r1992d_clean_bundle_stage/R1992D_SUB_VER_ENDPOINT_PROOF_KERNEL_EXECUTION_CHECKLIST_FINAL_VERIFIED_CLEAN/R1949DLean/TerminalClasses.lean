import R1949DLean.Basic

namespace R1949DLean

inductive TerminalKind where
  | endpoint
  | primePacket
  | zeroPhase
  deriving Repr, DecidableEq

structure TerminalClass where
  kind : TerminalKind

inductive TerminalBranch where
  | internal
  | terminalIdealExtension
  deriving Repr, DecidableEq

def IsEndpoint (C : TerminalClass) : Prop :=
  C.kind = TerminalKind.endpoint

def IsPrimePacket (C : TerminalClass) : Prop :=
  C.kind = TerminalKind.primePacket

def IsZeroPhase (C : TerminalClass) : Prop :=
  C.kind = TerminalKind.zeroPhase

theorem terminal_kind_cases (C : TerminalClass) :
    IsEndpoint C ∨ IsPrimePacket C ∨ IsZeroPhase C := by
  cases C with
  | mk k =>
    cases k with
    | endpoint =>
      exact Or.inl rfl
    | primePacket =>
      exact Or.inr (Or.inl rfl)
    | zeroPhase =>
      exact Or.inr (Or.inr rfl)

theorem branch_cases_exhaustive (b : TerminalBranch) :
    b = TerminalBranch.internal ∨ b = TerminalBranch.terminalIdealExtension := by
  cases b with
  | internal =>
    exact Or.inl rfl
  | terminalIdealExtension =>
    exact Or.inr rfl

end R1949DLean
