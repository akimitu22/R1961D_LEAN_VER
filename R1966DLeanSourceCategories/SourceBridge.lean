import R1966DLeanSourceCategories.SourceCategories

namespace R1966DLeanSourceCategories

open R1962DLeanAnalyticRealization
open R1965DLeanRealizationInterfaces

/--
A concrete-source system for the remaining analytic realization work.  This is
one level below R1965D interfaces: it names source categories for actual
Li/zeta constructions, while still treating the hard analytic content as target
propositions.
-/
structure ConcreteAnalyticSourceSystem (A : AnalyticRealizationObligations) where
  liKernelObjectSource : Prop
  liKernelWellPosedSource : Prop
  liKernelNormalizationSource : Prop
  liKernelSourceRealizes :
    liKernelObjectSource → liKernelWellPosedSource → liKernelNormalizationSource →
    A.actualLiKernelRegistered

  abelBoundaryObjectSource : Prop
  abelBoundaryLimitSource : Prop
  abelBoundarySameScaleSource : Prop
  abelBoundarySourceRealizes :
    abelBoundaryObjectSource → abelBoundaryLimitSource → abelBoundarySameScaleSource →
    A.actualAbelBoundaryRegistered

  explicitFormulaObjectSource : Prop
  explicitFormulaIdentitySource : Prop
  explicitFormulaBoundarySource : Prop
  explicitFormulaSourceRealizes :
    explicitFormulaObjectSource → explicitFormulaIdentitySource → explicitFormulaBoundarySource →
    A.actualExplicitFormulaAvailable

  primePacketObjectSource : Prop
  primePacketEstimateSource : Prop
  primePacketFormulaSource : Prop
  primePacketSourceRealizes :
    primePacketObjectSource → primePacketEstimateSource → primePacketFormulaSource →
    A.primePacketEstimate

  zeroPacketObjectSource : Prop
  zeroPacketEstimateSource : Prop
  zeroPacketFormulaSource : Prop
  zeroPacketSourceRealizes :
    zeroPacketObjectSource → zeroPacketEstimateSource → zeroPacketFormulaSource →
    A.zeroPacketEstimate

  endpointObjectSource : Prop
  endpointEstimateSource : Prop
  endpointScaleSource : Prop
  endpointSourceRealizes :
    endpointObjectSource → endpointEstimateSource → endpointScaleSource →
    A.endpointPacketEstimate

  scaleObjectSource : Prop
  scaleLittleOhSource : Prop
  scaleNoDriftSource : Prop
  scaleSourceRealizes :
    scaleObjectSource → scaleLittleOhSource → scaleNoDriftSource →
    A.scaleErrorAndLittleOhEstimate

  obstructionLedgerSource : Prop
  obstructionEntriesSource : Prop
  obstructionCompatibilitySource : Prop
  obstructionSourceRealizes :
    obstructionLedgerSource → obstructionEntriesSource → obstructionCompatibilitySource →
    A.obstructionLedgerCompatibility

  residualObjectSource : Prop
  residualExclusionSource : Prop
  residualTerminalSource : Prop
  residualSourceRealizes :
    residualObjectSource → residualExclusionSource → residualTerminalSource →
    A.terminalNoHiddenResidual

/-- Convert concrete source categories into the R1965D realization interfaces. -/
def sourcesToInterfaces
    {A : AnalyticRealizationObligations}
    (S : ConcreteAnalyticSourceSystem A) :
    ActualAnalyticRealizationInterfaces A :=
  { kernel :=
      { actualObjectDefinition := S.liKernelObjectSource
        wellPosednessAndDomain := S.liKernelWellPosedSource
        normalizationAndScale := S.liKernelNormalizationSource
        realizesKernelSlot := S.liKernelSourceRealizes }
    boundary :=
      { actualBoundaryDefinition := S.abelBoundaryObjectSource
        boundaryWellPosednessAndLimit := S.abelBoundaryLimitSource
        sameScaleAsLiKernel := S.abelBoundarySameScaleSource
        realizesBoundarySlot := S.abelBoundarySourceRealizes }
    explicitFormula :=
      { primeZeroObjectsRegistered := S.explicitFormulaObjectSource
        explicitFormulaIdentity := S.explicitFormulaIdentitySource
        boundaryCompatibility := S.explicitFormulaBoundarySource
        realizesExplicitFormulaSlot := S.explicitFormulaSourceRealizes }
    prime :=
      { packetObjectDefined := S.primePacketObjectSource
        packetEstimateAtBoundaryScale := S.primePacketEstimateSource
        explicitFormulaCompatibility := S.primePacketFormulaSource
        realizesPrimePacketSlot := S.primePacketSourceRealizes }
    zero :=
      { packetObjectDefined := S.zeroPacketObjectSource
        packetEstimateAtBoundaryScale := S.zeroPacketEstimateSource
        explicitFormulaCompatibility := S.zeroPacketFormulaSource
        realizesZeroPacketSlot := S.zeroPacketSourceRealizes }
    endpoint :=
      { endpointObjectDefined := S.endpointObjectSource
        endpointRemainderEstimate := S.endpointEstimateSource
        boundaryScaleCompatibility := S.endpointScaleSource
        realizesEndpointPacketSlot := S.endpointSourceRealizes }
    scale :=
      { scaleErrorObjectDefined := S.scaleObjectSource
        littleOhEstimate := S.scaleLittleOhSource
        noHiddenScaleDrift := S.scaleNoDriftSource
        realizesScaleErrorSlot := S.scaleSourceRealizes }
    obstruction :=
      { ledgerDefined := S.obstructionLedgerSource
        packetEntriesRegistered := S.obstructionEntriesSource
        compatibleWithR1961PacketLayer := S.obstructionCompatibilitySource
        realizesObstructionSlot := S.obstructionSourceRealizes }
    residual :=
      { residualObjectDefined := S.residualObjectSource
        residualAbsorbedOrExcluded := S.residualExclusionSource
        terminalNoHiddenResidualAtTargetScale := S.residualTerminalSource
        realizesResidualSlot := S.residualSourceRealizes } }

/-- Evidence that each concrete-source category is populated. -/
structure ConcreteAnalyticSourceEvidence
    {A : AnalyticRealizationObligations}
    (S : ConcreteAnalyticSourceSystem A) where
  hLiKernelObject : S.liKernelObjectSource
  hLiKernelWellPosed : S.liKernelWellPosedSource
  hLiKernelNormalization : S.liKernelNormalizationSource
  hAbelBoundaryObject : S.abelBoundaryObjectSource
  hAbelBoundaryLimit : S.abelBoundaryLimitSource
  hAbelBoundarySameScale : S.abelBoundarySameScaleSource
  hExplicitFormulaObjects : S.explicitFormulaObjectSource
  hExplicitFormulaIdentity : S.explicitFormulaIdentitySource
  hExplicitFormulaBoundary : S.explicitFormulaBoundarySource
  hPrimePacketObject : S.primePacketObjectSource
  hPrimePacketEstimate : S.primePacketEstimateSource
  hPrimePacketFormula : S.primePacketFormulaSource
  hZeroPacketObject : S.zeroPacketObjectSource
  hZeroPacketEstimate : S.zeroPacketEstimateSource
  hZeroPacketFormula : S.zeroPacketFormulaSource
  hEndpointObject : S.endpointObjectSource
  hEndpointEstimate : S.endpointEstimateSource
  hEndpointScale : S.endpointScaleSource
  hScaleObject : S.scaleObjectSource
  hScaleLittleOh : S.scaleLittleOhSource
  hScaleNoDrift : S.scaleNoDriftSource
  hObstructionLedger : S.obstructionLedgerSource
  hObstructionEntries : S.obstructionEntriesSource
  hObstructionCompatible : S.obstructionCompatibilitySource
  hResidualObject : S.residualObjectSource
  hResidualExcluded : S.residualExclusionSource
  hResidualTerminal : S.residualTerminalSource

/-- Convert concrete-source evidence into R1965D interface evidence. -/
def sourceEvidenceToInterfaceEvidence
    {A : AnalyticRealizationObligations}
    (S : ConcreteAnalyticSourceSystem A)
    (E : ConcreteAnalyticSourceEvidence S) :
    ActualAnalyticRealizationEvidence (sourcesToInterfaces S) :=
  { hKernelDefinition := E.hLiKernelObject
    hKernelWellPosed := E.hLiKernelWellPosed
    hKernelNormalized := E.hLiKernelNormalization
    hBoundaryDefinition := E.hAbelBoundaryObject
    hBoundaryLimit := E.hAbelBoundaryLimit
    hBoundarySameScale := E.hAbelBoundarySameScale
    hFormulaObjects := E.hExplicitFormulaObjects
    hFormulaIdentity := E.hExplicitFormulaIdentity
    hFormulaBoundary := E.hExplicitFormulaBoundary
    hPrimeObject := E.hPrimePacketObject
    hPrimeEstimate := E.hPrimePacketEstimate
    hPrimeFormula := E.hPrimePacketFormula
    hZeroObject := E.hZeroPacketObject
    hZeroEstimate := E.hZeroPacketEstimate
    hZeroFormula := E.hZeroPacketFormula
    hEndpointObject := E.hEndpointObject
    hEndpointEstimate := E.hEndpointEstimate
    hEndpointScale := E.hEndpointScale
    hScaleObject := E.hScaleObject
    hScaleLittleOh := E.hScaleLittleOh
    hScaleNoDrift := E.hScaleNoDrift
    hLedgerDefined := E.hObstructionLedger
    hLedgerEntries := E.hObstructionEntries
    hLedgerCompatible := E.hObstructionCompatible
    hResidualObject := E.hResidualObject
    hResidualExcluded := E.hResidualExcluded
    hResidualTerminal := E.hResidualTerminal }

/-- Concrete source categories produce R1965D realization interfaces. -/
def concrete_sources_to_realization_interfaces
    {A : AnalyticRealizationObligations}
    (S : ConcreteAnalyticSourceSystem A) :
    ActualAnalyticRealizationInterfaces A :=
  sourcesToInterfaces S

/-- Main R1966D bridge: concrete source categories imply the actual Li target. -/
theorem concrete_sources_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (S : ConcreteAnalyticSourceSystem A)
    (E : ConcreteAnalyticSourceEvidence S) :
    A.actualLiTarget := by
  exact realized_interfaces_to_actual_li_target
    (sourcesToInterfaces S)
    (sourceEvidenceToInterfaceEvidence S E)

/-- Concrete source categories also produce the R1963D pre-target slot package. -/
theorem concrete_sources_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (S : ConcreteAnalyticSourceSystem A)
    (E : ConcreteAnalyticSourceEvidence S) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A := by
  exact realized_interfaces_to_pre_target_slots
    (sourcesToInterfaces S)
    (sourceEvidenceToInterfaceEvidence S E)

/-- R1966D non-claim certificate. -/
structure ConcreteSourceCategoryCertificate where
  assignsConcreteSourceCategories : Bool
  connectsSourcesToR1965Interfaces : Bool
  connectsSourcesToActualLiTargetBridge : Bool
  provesConcreteLiKernelHere : Bool
  provesConcreteExplicitFormulaHere : Bool
  provesConcretePrimeEstimateHere : Bool
  provesConcreteZeroEstimateHere : Bool
  provesLiCriterionHere : Bool
  claimsFullRHFormalization : Bool

def r1966ConcreteSourceCategoryCertificate : ConcreteSourceCategoryCertificate :=
  { assignsConcreteSourceCategories := true
    connectsSourcesToR1965Interfaces := true
    connectsSourcesToActualLiTargetBridge := true
    provesConcreteLiKernelHere := false
    provesConcreteExplicitFormulaHere := false
    provesConcretePrimeEstimateHere := false
    provesConcreteZeroEstimateHere := false
    provesLiCriterionHere := false
    claimsFullRHFormalization := false }

theorem r1966_fifth_step_is_source_category_assignment_not_full_analytic_proof :
    r1966ConcreteSourceCategoryCertificate.assignsConcreteSourceCategories = true ∧
    r1966ConcreteSourceCategoryCertificate.connectsSourcesToR1965Interfaces = true ∧
    r1966ConcreteSourceCategoryCertificate.connectsSourcesToActualLiTargetBridge = true ∧
    r1966ConcreteSourceCategoryCertificate.provesConcreteLiKernelHere = false ∧
    r1966ConcreteSourceCategoryCertificate.provesConcreteExplicitFormulaHere = false ∧
    r1966ConcreteSourceCategoryCertificate.provesConcretePrimeEstimateHere = false ∧
    r1966ConcreteSourceCategoryCertificate.provesConcreteZeroEstimateHere = false ∧
    r1966ConcreteSourceCategoryCertificate.provesLiCriterionHere = false ∧
    r1966ConcreteSourceCategoryCertificate.claimsFullRHFormalization = false := by
  simp [r1966ConcreteSourceCategoryCertificate]

end R1966DLeanSourceCategories
