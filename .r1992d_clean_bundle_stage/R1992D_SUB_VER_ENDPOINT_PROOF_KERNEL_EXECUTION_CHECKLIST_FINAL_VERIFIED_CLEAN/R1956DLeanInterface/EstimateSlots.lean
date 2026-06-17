import R1956DLeanInterface.AnalyticInterfaces

namespace R1956DLeanInterface

inductive EstimateKind where
  | liKernelIdentity
  | finiteLiCompatibility
  | abelBoundaryPassage
  | explicitFormulaPrimePacket
  | explicitFormulaZeroPacket
  | endpointBoundaryTerm
  | admissibleScaleControl
  | uniformLittleOhControl
  | terminalClassification
  | obstructionLedger
  | conclusionTransfer
  deriving Repr, DecidableEq

structure EstimateSlot where
  slotName : String
  kind : EstimateKind
  sourceLayer : String
  targetLayer : String
  isAnalyticTheoremSlot : Bool
  currentlyFormalizedHere : Bool

def EstimateSlotPendingFormalization (E : EstimateSlot) : Prop :=
  E.isAnalyticTheoremSlot = true ∧ E.currentlyFormalizedHere = false

def liKernelEstimateSlot : EstimateSlot :=
  { slotName := "Li-kernel identity and compatibility"
    kind := EstimateKind.liKernelIdentity
    sourceLayer := "standard Li kernel"
    targetLayer := "finite Li object"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def finiteLiCompatibilitySlot : EstimateSlot :=
  { slotName := "finite Li input compatibility"
    kind := EstimateKind.finiteLiCompatibility
    sourceLayer := "Li coefficient family"
    targetLayer := "finite Li object"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def abelBoundaryEstimateSlot : EstimateSlot :=
  { slotName := "Abel boundary same-scale passage"
    kind := EstimateKind.abelBoundaryPassage
    sourceLayer := "finite Li object"
    targetLayer := "Abel boundary coordinate"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def explicitFormulaPrimeSlot : EstimateSlot :=
  { slotName := "explicit formula prime packet"
    kind := EstimateKind.explicitFormulaPrimePacket
    sourceLayer := "prime packet"
    targetLayer := "coherent closure"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def explicitFormulaZeroSlot : EstimateSlot :=
  { slotName := "explicit formula zero packet"
    kind := EstimateKind.explicitFormulaZeroPacket
    sourceLayer := "zero packet"
    targetLayer := "coherent closure"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def endpointBoundarySlot : EstimateSlot :=
  { slotName := "endpoint boundary term"
    kind := EstimateKind.endpointBoundaryTerm
    sourceLayer := "endpoint boundary object"
    targetLayer := "terminal packet ledger"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def scaleTopologyEstimateSlot : EstimateSlot :=
  { slotName := "admissible scale topology"
    kind := EstimateKind.admissibleScaleControl
    sourceLayer := "scale topology object"
    targetLayer := "uniform passage"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def uniformLittleOhEstimateSlot : EstimateSlot :=
  { slotName := "uniform little-oh control"
    kind := EstimateKind.uniformLittleOhControl
    sourceLayer := "admissible scale topology"
    targetLayer := "boundary estimate"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def terminalClassificationSlot : EstimateSlot :=
  { slotName := "terminal packet classification"
    kind := EstimateKind.terminalClassification
    sourceLayer := "prime-zero-endpoint packet"
    targetLayer := "terminal class"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def obstructionLedgerSlot : EstimateSlot :=
  { slotName := "obstruction quotient ledger compatibility"
    kind := EstimateKind.obstructionLedger
    sourceLayer := "obstruction quotient"
    targetLayer := "non-internal cancellation ledger"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def conclusionTransferSlot : EstimateSlot :=
  { slotName := "Li target to standard conclusion"
    kind := EstimateKind.conclusionTransfer
    sourceLayer := "Li criterion target"
    targetLayer := "standard analytic conclusion"
    isAnalyticTheoremSlot := true
    currentlyFormalizedHere := false }

def analyticEstimateSlots : List EstimateSlot :=
  [liKernelEstimateSlot, finiteLiCompatibilitySlot, abelBoundaryEstimateSlot,
   explicitFormulaPrimeSlot, explicitFormulaZeroSlot, endpointBoundarySlot,
   scaleTopologyEstimateSlot, uniformLittleOhEstimateSlot,
   terminalClassificationSlot, obstructionLedgerSlot, conclusionTransferSlot]

theorem analytic_estimate_slots_declared :
    analyticEstimateSlots =
      [liKernelEstimateSlot, finiteLiCompatibilitySlot, abelBoundaryEstimateSlot,
       explicitFormulaPrimeSlot, explicitFormulaZeroSlot, endpointBoundarySlot,
       scaleTopologyEstimateSlot, uniformLittleOhEstimateSlot,
       terminalClassificationSlot, obstructionLedgerSlot, conclusionTransferSlot] := by
  rfl

theorem estimate_slots_are_pending_formalization_examples :
    EstimateSlotPendingFormalization liKernelEstimateSlot ∧
    EstimateSlotPendingFormalization abelBoundaryEstimateSlot ∧
    EstimateSlotPendingFormalization explicitFormulaPrimeSlot ∧
    EstimateSlotPendingFormalization scaleTopologyEstimateSlot ∧
    EstimateSlotPendingFormalization terminalClassificationSlot ∧
    EstimateSlotPendingFormalization obstructionLedgerSlot := by
  constructor
  · exact ⟨rfl, rfl⟩
  constructor
  · exact ⟨rfl, rfl⟩
  constructor
  · exact ⟨rfl, rfl⟩
  constructor
  · exact ⟨rfl, rfl⟩
  constructor
  · exact ⟨rfl, rfl⟩
  · exact ⟨rfl, rfl⟩

end R1956DLeanInterface
