import R1949DLean.Basic
import R1949DLean.AbelBookkeeping
import R1949DLean.StructuralLayers
import R1949DLean.TerminalClasses

namespace R1949DLean

structure Theory where
  layerCtx : LayerRealizationContext
  InCoherentClosure : CoherentOperation → Prop
  HasStructuralSupport : CoherentOperation → StructuralSupport → Prop
  GeneratorRealized : CoherentOperation → Prop
  InGeneratedClosure : CoherentOperation → Prop
  TerminalClassNonzero : TerminalClass → Prop
  PreservesTerminalClass : CoherentOperation → TerminalClass → Prop
  AttemptsToKill : CoherentOperation → TerminalClass → Prop
  InternallyKills : CoherentOperation → TerminalClass → Prop
  TerminalIdealExtension : TerminalClass → Prop

structure AbelIdentityAxioms (B : AbelBookkeeping) where
  quotientIdentityYieldsSameScaleCoordinate :
    B.quotientIdentity → B.sameScaleCoordinate

structure SameObjectPreservationAxioms (B : AbelBookkeeping) where
  sameObjectAndNoHiddenForceCoordinateClosure :
    B.sameScaleCoordinate →
    B.sameObjectPreservation →
    B.noHiddenNormalization →
    B.coordinateClosure
  coordinateClosureForcesFiniteToAbelClosure :
    B.coordinateClosure → B.finiteToAbelClosureNecessity

structure SupportExhaustionAxioms (Th : Theory) where
  coordinateSupportExhaustion :
    ∀ T : CoherentOperation,
      Th.InCoherentClosure T →
      ∃ S : StructuralSupport, Th.HasStructuralSupport T S

structure GeneratorRealizationAxioms (Th : Theory) where
  supportActionGeneratorRealization :
    ∀ (T : CoherentOperation) (S : StructuralSupport),
      Th.HasStructuralSupport T S →
      LayerRealizable Th.layerCtx S.layer →
      Th.GeneratorRealized T
  generatorRealizationEntersGeneratedClosure :
    ∀ T : CoherentOperation,
      Th.GeneratorRealized T →
      Th.InGeneratedClosure T

structure TerminalExtensionAxioms (Th : Theory) where
  generatedOperationsPreserveNonzeroTerminalClasses :
    ∀ (T : CoherentOperation) (C : TerminalClass),
      Th.InGeneratedClosure T →
      Th.TerminalClassNonzero C →
      Th.PreservesTerminalClass T C
  preservingTerminalClassExcludesInternalKill :
    ∀ (T : CoherentOperation) (C : TerminalClass),
      Th.PreservesTerminalClass T C →
      ¬ Th.InternallyKills T C
  killAttemptClassification :
    ∀ (T : CoherentOperation) (C : TerminalClass),
      Th.AttemptsToKill T C →
      Th.InternallyKills T C ∨ Th.TerminalIdealExtension C

def BranchConclusion
    (Th : Theory) (b : TerminalBranch)
    (T : CoherentOperation) (C : TerminalClass) : Prop :=
  match b with
  | TerminalBranch.internal => Th.InternallyKills T C
  | TerminalBranch.terminalIdealExtension => Th.TerminalIdealExtension C

end R1949DLean
