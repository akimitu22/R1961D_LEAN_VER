import R1966DLeanSourceCategories.SourceBridge
import R1965DLeanRealizationInterfaces.ToyRealizationInterfaces

namespace R1966DLeanSourceCategories

open R1962DLeanAnalyticRealization
open R1965DLeanRealizationInterfaces

/-- Toy concrete source-category system. -/
def toyConcreteAnalyticSourceSystem :
    ConcreteAnalyticSourceSystem toyAnalyticRealizationObligations :=
  { liKernelObjectSource := True
    liKernelWellPosedSource := True
    liKernelNormalizationSource := True
    liKernelSourceRealizes := by
      intro _ _ _
      trivial

    abelBoundaryObjectSource := True
    abelBoundaryLimitSource := True
    abelBoundarySameScaleSource := True
    abelBoundarySourceRealizes := by
      intro _ _ _
      trivial

    explicitFormulaObjectSource := True
    explicitFormulaIdentitySource := True
    explicitFormulaBoundarySource := True
    explicitFormulaSourceRealizes := by
      intro _ _ _
      trivial

    primePacketObjectSource := True
    primePacketEstimateSource := True
    primePacketFormulaSource := True
    primePacketSourceRealizes := by
      intro _ _ _
      trivial

    zeroPacketObjectSource := True
    zeroPacketEstimateSource := True
    zeroPacketFormulaSource := True
    zeroPacketSourceRealizes := by
      intro _ _ _
      trivial

    endpointObjectSource := True
    endpointEstimateSource := True
    endpointScaleSource := True
    endpointSourceRealizes := by
      intro _ _ _
      trivial

    scaleObjectSource := True
    scaleLittleOhSource := True
    scaleNoDriftSource := True
    scaleSourceRealizes := by
      intro _ _ _
      trivial

    obstructionLedgerSource := True
    obstructionEntriesSource := True
    obstructionCompatibilitySource := True
    obstructionSourceRealizes := by
      intro _ _ _
      trivial

    residualObjectSource := True
    residualExclusionSource := True
    residualTerminalSource := True
    residualSourceRealizes := by
      intro _ _ _
      trivial }

/-- Toy evidence that all concrete-source categories have witnesses. -/
def toyConcreteAnalyticSourceEvidence :
    ConcreteAnalyticSourceEvidence toyConcreteAnalyticSourceSystem :=
  { hLiKernelObject := trivial
    hLiKernelWellPosed := trivial
    hLiKernelNormalization := trivial
    hAbelBoundaryObject := trivial
    hAbelBoundaryLimit := trivial
    hAbelBoundarySameScale := trivial
    hExplicitFormulaObjects := trivial
    hExplicitFormulaIdentity := trivial
    hExplicitFormulaBoundary := trivial
    hPrimePacketObject := trivial
    hPrimePacketEstimate := trivial
    hPrimePacketFormula := trivial
    hZeroPacketObject := trivial
    hZeroPacketEstimate := trivial
    hZeroPacketFormula := trivial
    hEndpointObject := trivial
    hEndpointEstimate := trivial
    hEndpointScale := trivial
    hScaleObject := trivial
    hScaleLittleOh := trivial
    hScaleNoDrift := trivial
    hObstructionLedger := trivial
    hObstructionEntries := trivial
    hObstructionCompatible := trivial
    hResidualObject := trivial
    hResidualExcluded := trivial
    hResidualTerminal := trivial }

/-- Toy sources produce R1965D realization interfaces. -/
def toy_concrete_sources_to_interfaces_runs :
    ActualAnalyticRealizationInterfaces toyAnalyticRealizationObligations :=
  concrete_sources_to_realization_interfaces toyConcreteAnalyticSourceSystem

/-- Toy sources close the toy actual Li target via the R1965D/R1964D/R1963D/R1962D chain. -/
theorem toy_concrete_sources_to_actual_li_target_runs :
    toyAnalyticRealizationObligations.actualLiTarget := by
  exact concrete_sources_to_actual_li_target
    toyConcreteAnalyticSourceSystem
    toyConcreteAnalyticSourceEvidence

/-- Toy sources also produce the R1963D pre-target slot package. -/
theorem toy_concrete_sources_to_pre_target_slots_runs :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots
      toyAnalyticRealizationObligations := by
  exact concrete_sources_to_pre_target_slots
    toyConcreteAnalyticSourceSystem
    toyConcreteAnalyticSourceEvidence

end R1966DLeanSourceCategories
