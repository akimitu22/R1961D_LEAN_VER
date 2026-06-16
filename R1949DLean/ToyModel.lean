import R1949DLean.ProofObligationMap

namespace R1949DLean

def toyGenerator : Generator :=
  { tag := 0 }

def toyOperation : CoherentOperation :=
  { tag := 0 }

def toyTerminal : TerminalClass :=
  { kind := TerminalKind.endpoint }

def toyLayerCtx : LayerRealizationContext :=
  { RealizesLayer := fun _ _ => True }

def toyLayerRealizationAxioms : LayerRealizationAxioms toyLayerCtx :=
  { kernelRealizable := Exists.intro toyGenerator trivial
    phaseRealizable := Exists.intro toyGenerator trivial
    tangentRealizable := Exists.intro toyGenerator trivial
    phaseCellRealizable := Exists.intro toyGenerator trivial
    abelBoundaryRealizable := Exists.intro toyGenerator trivial
    explicitFormulaRealizable := Exists.intro toyGenerator trivial
    densityRealizable := Exists.intro toyGenerator trivial
    residualRealizable := Exists.intro toyGenerator trivial
    scaleTopologyRealizable := Exists.intro toyGenerator trivial
    obstructionQuotientRealizable := Exists.intro toyGenerator trivial }

def toyAbelBookkeeping : AbelBookkeeping :=
  { finiteObj := { tag := 0 }
    abelObj := { tag := 0 }
    coordinate := { tag := 0 }
    quotientIdentity := True
    sameScaleCoordinate := True
    sameObjectPreservation := True
    noHiddenNormalization := True
    coordinateClosure := True
    finiteToAbelClosureNecessity := True }

def toyAbelReady : AbelReady toyAbelBookkeeping :=
  And.intro trivial (And.intro trivial trivial)

def toyAbelIdentityAxioms : AbelIdentityAxioms toyAbelBookkeeping :=
  { quotientIdentityYieldsSameScaleCoordinate := by
      intro _
      trivial }

def toySameObjectPreservationAxioms : SameObjectPreservationAxioms toyAbelBookkeeping :=
  { sameObjectAndNoHiddenForceCoordinateClosure := by
      intro _ _ _
      trivial
    coordinateClosureForcesFiniteToAbelClosure := by
      intro _
      trivial }

def toyTheory : Theory :=
  { layerCtx := toyLayerCtx
    InCoherentClosure := fun _ => True
    HasStructuralSupport := fun _ _ => True
    GeneratorRealized := fun _ => True
    InGeneratedClosure := fun _ => True
    TerminalClassNonzero := fun _ => True
    PreservesTerminalClass := fun _ _ => True
    AttemptsToKill := fun _ _ => False
    InternallyKills := fun _ _ => False
    TerminalIdealExtension := fun _ => True }

def toySupportExhaustionAxioms : SupportExhaustionAxioms toyTheory :=
  { coordinateSupportExhaustion := by
      intro _ _
      exact Exists.intro { layer := StructuralLayer.kernel } trivial }

def toyGeneratorRealizationAxioms : GeneratorRealizationAxioms toyTheory :=
  { supportActionGeneratorRealization := by
      intro _ _ _ _
      trivial
    generatorRealizationEntersGeneratedClosure := by
      intro _ _
      trivial }

def toyTerminalExtensionAxioms : TerminalExtensionAxioms toyTheory :=
  { generatedOperationsPreserveNonzeroTerminalClasses := by
      intro _ _ _ _
      trivial
    preservingTerminalClassExcludesInternalKill := by
      intro _ _ _ hKill
      cases hKill
    killAttemptClassification := by
      intro _ _ hAttempt
      cases hAttempt }

theorem toy_model_runs_conditional_main :
    toyAbelBookkeeping.finiteToAbelClosureNecessity ∧
    toyTheory.InGeneratedClosure toyOperation ∧
    ¬ toyTheory.InternallyKills toyOperation toyTerminal := by
  exact conditional_main_no_escape_from_all_obligations
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

theorem toy_model_terminal_branch_consistency :
    ¬ toyTheory.InternallyKills toyOperation toyTerminal := by
  intro hKill
  cases hKill

end R1949DLean
