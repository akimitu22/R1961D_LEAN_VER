import R1963DLeanAnalyticDecomposition.PacketConnectionMatrix

namespace R1963DLeanAnalyticDecomposition

open R1962DLeanAnalyticRealization

/-- Toy realization of all nine pre-target slots, using the R1962D toy obligations. -/
def toyRealizedAnalyticPreTargetSlots :
    RealizedAnalyticPreTargetSlots toyAnalyticRealizationObligations :=
  { hActualLiKernel := trivial
    hActualAbelBoundary := trivial
    hActualExplicitFormula := trivial
    hPrimePacketEstimate := trivial
    hZeroPacketEstimate := trivial
    hEndpointPacketEstimate := trivial
    hScaleErrorAndLittleOhEstimate := trivial
    hObstructionLedgerCompatibility := trivial
    hTerminalNoHiddenResidual := trivial }

/-- The decomposed toy pre-target slots close the toy Li target. -/
theorem toy_decomposition_bridge_runs :
    slotRealized toyAnalyticRealizationObligations AnalyticRealizationSlot.actualLiTarget := by
  exact realized_pre_target_slots_to_actual_li_target
    toyAnalyticRealizationObligations
    toyRealizedAnalyticPreTargetSlots

/-- The toy bridge agrees with the R1962D direct toy bridge. -/
theorem toy_decomposition_agrees_with_r1962_bridge :
    toyAnalyticRealizationObligations.actualLiTarget := by
  exact toy_decomposition_bridge_runs

/-- The default matrix can be referenced as a concrete decomposition object. -/
theorem toy_default_matrix_has_profiles :
    defaultAnalyticObligationDecompositionMatrix.kernelProfile.slot = AnalyticRealizationSlot.actualLiKernel ∧
    defaultAnalyticObligationDecompositionMatrix.boundaryProfile.slot = AnalyticRealizationSlot.actualAbelBoundary ∧
    defaultAnalyticObligationDecompositionMatrix.explicitFormulaProfile.slot = AnalyticRealizationSlot.actualExplicitFormula ∧
    defaultAnalyticObligationDecompositionMatrix.primeProfile.slot = AnalyticRealizationSlot.primePacketEstimate ∧
    defaultAnalyticObligationDecompositionMatrix.zeroProfile.slot = AnalyticRealizationSlot.zeroPacketEstimate ∧
    defaultAnalyticObligationDecompositionMatrix.endpointProfile.slot = AnalyticRealizationSlot.endpointPacketEstimate ∧
    defaultAnalyticObligationDecompositionMatrix.scaleProfile.slot = AnalyticRealizationSlot.scaleErrorAndLittleOhEstimate ∧
    defaultAnalyticObligationDecompositionMatrix.obstructionProfile.slot = AnalyticRealizationSlot.obstructionLedgerCompatibility ∧
    defaultAnalyticObligationDecompositionMatrix.residualProfile.slot = AnalyticRealizationSlot.terminalNoHiddenResidual ∧
    defaultAnalyticObligationDecompositionMatrix.targetProfile.slot = AnalyticRealizationSlot.actualLiTarget := by
  exact default_matrix_profiles_match_slots

end R1963DLeanAnalyticDecomposition
