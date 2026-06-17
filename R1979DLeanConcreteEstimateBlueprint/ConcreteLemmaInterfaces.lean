import R1979DLeanConcreteEstimateBlueprint.BlueprintSlots

namespace R1979DLeanConcreteEstimateBlueprint

open R1978DLeanQuantitativeEstimateMatrix
open R1962DLeanAnalyticRealization

/--
A concrete lemma interface slot.

This is not a lemma proof.  It records the future statement carrier,
dependency carrier, proof-location carrier, and completion flag.
-/
structure ConcreteLemmaInterfaceSlot where
  statementCarrier : Type
  dependencyCarrier : Type
  proofLocationCarrier : Type
  reviewLabelCarrier : Type
  statementRegistered : Prop
  dependenciesRegistered : Prop
  proofLocationRegistered : Prop
  reviewLabelRegistered : Prop
  proofCompleteHere : Bool
  nonClaimBoundary : Prop

/-- Endpoint concrete lemma interface. -/
structure EndpointConcreteLemmaInterfaceSlot
    {A : AnalyticRealizationObligations}
    {M : QuantitativeEstimateTargetMatrix A}
    (E : EndpointEstimateBlueprintSlot M) where
  endpointBlueprint : EndpointEstimateBlueprintSlot M
  localReductionInterface : ConcreteLemmaInterfaceSlot
  scaleNormalizationInterface : ConcreteLemmaInterfaceSlot
  majorantInterface : ConcreteLemmaInterfaceSlot
  terminalSmallnessInterface : ConcreteLemmaInterfaceSlot
  endpointInterfacesCoherent : Prop
  endpointInterfacesReadyForProofFile : Prop

/-- Boundary-error concrete lemma interface. -/
structure BoundaryErrorConcreteLemmaInterfaceSlot
    {A : AnalyticRealizationObligations}
    {M : QuantitativeEstimateTargetMatrix A}
    (B : BoundaryErrorEstimateBlueprintSlot M) where
  boundaryErrorBlueprint : BoundaryErrorEstimateBlueprintSlot M
  finiteBoundaryComparisonInterface : ConcreteLemmaInterfaceSlot
  boundaryErrorMajorantInterface : ConcreteLemmaInterfaceSlot
  skeletonCompatibilityInterface : ConcreteLemmaInterfaceSlot
  boundaryLimitHandoffInterface : ConcreteLemmaInterfaceSlot
  boundaryInterfacesCoherent : Prop
  boundaryInterfacesReadyForProofFile : Prop

/-- Remainder/uniformity concrete lemma interface. -/
structure RemainderUniformityConcreteLemmaInterfaceSlot
    {A : AnalyticRealizationObligations}
    {M : QuantitativeEstimateTargetMatrix A}
    (R : RemainderUniformityEstimateBlueprintSlot M) where
  remainderUniformityBlueprint : RemainderUniformityEstimateBlueprintSlot M
  finiteRemainderInterface : ConcreteLemmaInterfaceSlot
  parameterWindowInterface : ConcreteLemmaInterfaceSlot
  uniformMajorantInterface : ConcreteLemmaInterfaceSlot
  jointLimitInterchangeInterface : ConcreteLemmaInterfaceSlot
  remainderUniformityInterfacesCoherent : Prop
  remainderUniformityInterfacesReadyForProofFile : Prop

/-- Sign-transfer concrete lemma interface. -/
structure SignTransferConcreteLemmaInterfaceSlot
    {A : AnalyticRealizationObligations}
    {M : QuantitativeEstimateTargetMatrix A}
    (S : SignTransferEstimateBlueprintSlot M) where
  signTransferBlueprint : SignTransferEstimateBlueprintSlot M
  finiteIdentityInputInterface : ConcreteLemmaInterfaceSlot
  estimateInputInterface : ConcreteLemmaInterfaceSlot
  signComparisonInterface : ConcreteLemmaInterfaceSlot
  liTargetHandoffInterface : ConcreteLemmaInterfaceSlot
  signTransferInterfacesCoherent : Prop
  signTransferInterfacesReadyForProofFile : Prop

/-- R1979D concrete lemma interface plan. -/
structure ConcreteEstimateLemmaInterfacePlan
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  endpointInterfaces : EndpointConcreteLemmaInterfaceSlot P.endpointBlueprint
  boundaryErrorInterfaces : BoundaryErrorConcreteLemmaInterfaceSlot P.boundaryErrorBlueprint
  remainderUniformityInterfaces : RemainderUniformityConcreteLemmaInterfaceSlot P.remainderUniformityBlueprint
  signTransferInterfaces : SignTransferConcreteLemmaInterfaceSlot P.signTransferBlueprint
  interfacesCoverAllBlueprintFamilies : Prop
  interfacesFeedBlueprintPlan : Prop
  interfacesReadyForLaterConcreteProofFiles : Prop
  noProofScriptCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget concrete lemma interfaces back to the R1979D blueprint plan. -/
def interface_plan_to_concrete_blueprint_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (_I : ConcreteEstimateLemmaInterfacePlan P) :
    ConcreteEstimateBlueprintPlan A :=
  P

/-- A concrete lemma interface can explicitly record incomplete proof status. -/
theorem concrete_lemma_interface_records_no_complete_proof
    (I : ConcreteLemmaInterfaceSlot)
    (h : I.proofCompleteHere = false) :
    I.proofCompleteHere = false := by
  exact h

end R1979DLeanConcreteEstimateBlueprint
