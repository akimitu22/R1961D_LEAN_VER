import R1965DLeanRealizationInterfaces

namespace R1966DLeanSourceCategories

open R1962DLeanAnalyticRealization
open R1965DLeanRealizationInterfaces

/--
R1966D concrete-source categories.  These are not yet full analytic
formalizations.  They name the source files or source families that later
concrete Li/zeta work must instantiate.
-/
inductive ConcreteAnalyticSourceKind where
  | liKernelSource
  | abelBoundarySource
  | explicitFormulaSource
  | primePacketSource
  | zeroPacketSource
  | endpointResidualSource
  | scaleControlSource
  | obstructionLedgerSource
  | finalAssemblySource
  deriving DecidableEq, Repr

/-- Assign each R1965D realization-interface block to its concrete-source category. -/
def sourceKindOfBlock : RealizationInterfaceBlockKind → ConcreteAnalyticSourceKind
  | RealizationInterfaceBlockKind.actualLiKernelBlock => ConcreteAnalyticSourceKind.liKernelSource
  | RealizationInterfaceBlockKind.abelBoundaryBlock => ConcreteAnalyticSourceKind.abelBoundarySource
  | RealizationInterfaceBlockKind.explicitFormulaBlock => ConcreteAnalyticSourceKind.explicitFormulaSource
  | RealizationInterfaceBlockKind.primePacketBlock => ConcreteAnalyticSourceKind.primePacketSource
  | RealizationInterfaceBlockKind.zeroPacketBlock => ConcreteAnalyticSourceKind.zeroPacketSource
  | RealizationInterfaceBlockKind.endpointPacketBlock => ConcreteAnalyticSourceKind.endpointResidualSource
  | RealizationInterfaceBlockKind.scaleErrorBlock => ConcreteAnalyticSourceKind.scaleControlSource
  | RealizationInterfaceBlockKind.obstructionLedgerBlock => ConcreteAnalyticSourceKind.obstructionLedgerSource
  | RealizationInterfaceBlockKind.residualExclusionBlock => ConcreteAnalyticSourceKind.endpointResidualSource
  | RealizationInterfaceBlockKind.finalAssemblyBlock => ConcreteAnalyticSourceKind.finalAssemblySource

/--
A profile for a concrete analytic source category.  Each field is still a target
slot, not a claim that the analytic number theory has already been proved.
-/
structure SourceCategoryProfile where
  sourceKind : ConcreteAnalyticSourceKind
  feedsBlock : RealizationInterfaceBlockKind
  actualObjectsNamed : Prop
  sourceTheoremOrEstimateNamed : Prop
  scaleCompatibilityNamed : Prop
  feedsRealizationInterface : Prop
  nonClaimBoundary : Prop

/-- Default profile assigning a realization block to its source family. -/
def profileOfBlock (b : RealizationInterfaceBlockKind) : SourceCategoryProfile :=
  { sourceKind := sourceKindOfBlock b
    feedsBlock := b
    actualObjectsNamed := True
    sourceTheoremOrEstimateNamed := True
    scaleCompatibilityNamed := True
    feedsRealizationInterface := True
    nonClaimBoundary := True }

/-- Every default source profile records the block it feeds. -/
theorem profileOfBlock_feedsBlock (b : RealizationInterfaceBlockKind) :
    (profileOfBlock b).feedsBlock = b := by
  rfl

/-- The default concrete-source category for the Li-kernel block is Li-kernel source. -/
theorem li_kernel_block_source_kind :
    sourceKindOfBlock RealizationInterfaceBlockKind.actualLiKernelBlock =
      ConcreteAnalyticSourceKind.liKernelSource := by
  rfl

/-- The default concrete-source category for the explicit-formula block is explicit-formula source. -/
theorem explicit_formula_block_source_kind :
    sourceKindOfBlock RealizationInterfaceBlockKind.explicitFormulaBlock =
      ConcreteAnalyticSourceKind.explicitFormulaSource := by
  rfl

/-- The default concrete-source category for the prime packet block is prime-packet source. -/
theorem prime_packet_block_source_kind :
    sourceKindOfBlock RealizationInterfaceBlockKind.primePacketBlock =
      ConcreteAnalyticSourceKind.primePacketSource := by
  rfl

/-- The default concrete-source category for the zero packet block is zero-packet source. -/
theorem zero_packet_block_source_kind :
    sourceKindOfBlock RealizationInterfaceBlockKind.zeroPacketBlock =
      ConcreteAnalyticSourceKind.zeroPacketSource := by
  rfl

/-- The default profiles explicitly keep the non-claim boundary. -/
theorem source_profile_non_claim_boundary (b : RealizationInterfaceBlockKind) :
    (profileOfBlock b).nonClaimBoundary := by
  trivial

end R1966DLeanSourceCategories
