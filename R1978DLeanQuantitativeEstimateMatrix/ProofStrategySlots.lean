import R1978DLeanQuantitativeEstimateMatrix.QuantitativeTargetSlots

namespace R1978DLeanQuantitativeEstimateMatrix

open R1977DLeanEstimateDependencyClosure
open R1976DLeanFiniteAbelEstimateGates
open R1962DLeanAnalyticRealization

/--
A proof-strategy slot for a quantitative target.

R1978D records strategy metadata without claiming the strategy has been executed.
-/
structure EstimateProofStrategySlot where
  strategyCarrier : Type
  localReductionStepRegistered : Prop
  globalComparisonStepRegistered : Prop
  uniformityStepRegistered : Prop
  terminalVanishingStepRegistered : Prop
  proofScriptAvailableHere : Bool
  proofCompleteHere : Bool
  nonClaimBoundary : Prop

/-- Endpoint strategy metadata attached to the endpoint target. -/
structure EndpointProofStrategySlot
    {A : AnalyticRealizationObligations}
    {P : EstimateDependencyClosurePlan A}
    (E : QuantitativeEndpointTargetSlot P) where
  endpointTarget : QuantitativeEndpointTargetSlot P
  endpointStrategy : EstimateProofStrategySlot
  endpointStrategyUsesScale : Prop
  endpointStrategyUsesMajorant : Prop
  endpointStrategyUsesLocalReduction : Prop
  endpointStrategyReadyForConcreteLemma : Prop
  endpointConcreteLemmaNamed : Prop

/-- Boundary-error strategy metadata attached to the boundary target. -/
structure BoundaryErrorProofStrategySlot
    {A : AnalyticRealizationObligations}
    {P : EstimateDependencyClosurePlan A}
    (B : QuantitativeBoundaryErrorTargetSlot P) where
  boundaryErrorTarget : QuantitativeBoundaryErrorTargetSlot P
  boundaryErrorStrategy : EstimateProofStrategySlot
  boundaryStrategyUsesScale : Prop
  boundaryStrategyUsesMajorant : Prop
  boundaryStrategyUsesCompatibility : Prop
  boundaryStrategyReadyForConcreteLemma : Prop
  boundaryConcreteLemmaNamed : Prop

/-- Remainder/uniformity strategy metadata attached to the joint target. -/
structure RemainderUniformityProofStrategySlot
    {A : AnalyticRealizationObligations}
    {P : EstimateDependencyClosurePlan A}
    (R : QuantitativeRemainderUniformityTargetSlot P) where
  remainderUniformityTarget : QuantitativeRemainderUniformityTargetSlot P
  remainderStrategy : EstimateProofStrategySlot
  uniformityStrategy : EstimateProofStrategySlot
  remainderStrategyUsesScale : Prop
  uniformityStrategyUsesParameterWindow : Prop
  jointStrategyReadyForConcreteLemma : Prop
  jointConcreteLemmaNamed : Prop

/--
R1978D strategy matrix.

This sits beside the quantitative target matrix and names the proof-strategy
slots that later concrete estimates must fill.
-/
structure QuantitativeEstimateProofStrategyMatrix
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) where
  endpointStrategy : EndpointProofStrategySlot M.endpointTarget
  boundaryErrorStrategy : BoundaryErrorProofStrategySlot M.boundaryErrorTarget
  remainderUniformityStrategy : RemainderUniformityProofStrategySlot M.remainderUniformityTarget
  strategiesFeedQuantitativeTargets : Prop
  strategiesFeedDependencyClosure : Prop
  strategiesReadyForConcreteEstimateFiles : Prop
  noConcreteProofScriptIncludedHere : Prop
  nonClaimBoundary : Prop

/-- Strategy slot records incomplete proof status. -/
theorem strategy_slot_records_no_complete_proof
    (S : EstimateProofStrategySlot)
    (h : S.proofCompleteHere = false) :
    S.proofCompleteHere = false := by
  exact h

/-- Strategy matrix forgets to its quantitative target matrix. -/
def strategy_matrix_to_quantitative_matrix
    {A : AnalyticRealizationObligations}
    {M : QuantitativeEstimateTargetMatrix A}
    (_S : QuantitativeEstimateProofStrategyMatrix M) :
    QuantitativeEstimateTargetMatrix A :=
  M

end R1978DLeanQuantitativeEstimateMatrix
