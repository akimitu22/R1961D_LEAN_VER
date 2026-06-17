import R1979DLeanConcreteEstimateBlueprint

namespace R1980DLeanConcreteEstimateStatements

open R1979DLeanConcreteEstimateBlueprint
open R1978DLeanQuantitativeEstimateMatrix
open R1962DLeanAnalyticRealization

/--
R1980D statement tags for the concrete estimate proof files still to be written.

The tags split the R1979D blueprint into named future theorem statements.  The
current layer registers statement identities and dependencies; it does not prove
any of the analytic statements.
-/
inductive ConcreteEstimateStatementTag where
  | endpointLocalReduction
  | endpointScaleNormalization
  | endpointMajorant
  | endpointTerminalSmallness
  | finiteBoundaryComparison
  | boundaryErrorMajorant
  | skeletonCompatibility
  | boundaryLimitHandoff
  | finiteRemainder
  | parameterWindow
  | uniformMajorant
  | jointLimitInterchange
  | finiteIdentityInput
  | estimateInput
  | signComparison
  | liTargetHandoff
  deriving DecidableEq, Repr

/--
A single concrete estimate statement slot.

This records the carrier for a later theorem statement, the dependency carrier,
the mathlib/source anchors, and a Boolean non-claim marker saying whether the
proof is completed in this layer.
-/
structure ConcreteEstimateStatementSlot
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  tag : ConcreteEstimateStatementTag
  statementCarrier : Type
  dependencyCarrier : Type
  mathlibAnchorCarrier : Type
  sourceLocationCarrier : Type
  reviewLocationCarrier : Type
  statementNamed : Prop
  dependenciesNamed : Prop
  mathlibAnchorsRecorded : Prop
  sourceLocationsRecorded : Prop
  reviewLocationRecorded : Prop
  theoremStatementReady : Prop
  proofCompletedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderEstimateHere : Bool
  provesUniformityEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Endpoint statement bank. -/
structure EndpointConcreteStatementBank
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  localReductionStatement : ConcreteEstimateStatementSlot P
  scaleNormalizationStatement : ConcreteEstimateStatementSlot P
  majorantStatement : ConcreteEstimateStatementSlot P
  terminalSmallnessStatement : ConcreteEstimateStatementSlot P
  endpointStatementsMatchBlueprint : Prop
  endpointStatementsFeedInterfaces : Prop
  endpointStatementsReadyForProofFiles : Prop
  noEndpointProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Boundary-error statement bank. -/
structure BoundaryErrorConcreteStatementBank
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  finiteBoundaryComparisonStatement : ConcreteEstimateStatementSlot P
  boundaryErrorMajorantStatement : ConcreteEstimateStatementSlot P
  skeletonCompatibilityStatement : ConcreteEstimateStatementSlot P
  boundaryLimitHandoffStatement : ConcreteEstimateStatementSlot P
  boundaryStatementsMatchBlueprint : Prop
  boundaryStatementsFeedInterfaces : Prop
  boundaryStatementsReadyForProofFiles : Prop
  noBoundaryErrorProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Remainder/uniformity statement bank. -/
structure RemainderUniformityConcreteStatementBank
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  finiteRemainderStatement : ConcreteEstimateStatementSlot P
  parameterWindowStatement : ConcreteEstimateStatementSlot P
  uniformMajorantStatement : ConcreteEstimateStatementSlot P
  jointLimitInterchangeStatement : ConcreteEstimateStatementSlot P
  remainderUniformityStatementsMatchBlueprint : Prop
  remainderUniformityStatementsFeedInterfaces : Prop
  remainderUniformityStatementsReadyForProofFiles : Prop
  noRemainderUniformityProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Sign-transfer statement bank. -/
structure SignTransferConcreteStatementBank
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  finiteIdentityInputStatement : ConcreteEstimateStatementSlot P
  estimateInputStatement : ConcreteEstimateStatementSlot P
  signComparisonStatement : ConcreteEstimateStatementSlot P
  liTargetHandoffStatement : ConcreteEstimateStatementSlot P
  signTransferStatementsMatchBlueprint : Prop
  signTransferStatementsFeedInterfaces : Prop
  signTransferStatementsReadyForProofFiles : Prop
  noSignTransferProofCompletedHere : Prop
  nonClaimBoundary : Prop

/--
R1980D concrete estimate statement bank.

This is the first layer whose main role is to name the future theorem
statements themselves rather than only blueprint families.  It still deliberately
keeps all analytic proofs out of scope.
-/
structure ConcreteEstimateStatementBank
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  endpointStatements : EndpointConcreteStatementBank P
  boundaryErrorStatements : BoundaryErrorConcreteStatementBank P
  remainderUniformityStatements : RemainderUniformityConcreteStatementBank P
  signTransferStatements : SignTransferConcreteStatementBank P
  statementBankCoversAllBlueprintFamilies : Prop
  statementBankRefinesConcreteLemmaInterfaces : Prop
  statementBankFeedsReviewGapTable : Prop
  statementBankReadyForConcreteProofFiles : Prop
  noConcreteEstimateProofCompletedHere : Prop
  noRealBoundaryIdentityProofCompletedHere : Prop
  noExplicitFormulaProofCompletedHere : Prop
  noRHProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R1980D statement bank to the R1979D blueprint plan. -/
def statement_bank_to_concrete_blueprint_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (_S : ConcreteEstimateStatementBank P) :
    ConcreteEstimateBlueprintPlan A :=
  P

/-- Statement slots can record explicitly that no proof is completed here. -/
theorem statement_slot_records_no_proof_completed_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementSlot P)
    (h : S.proofCompletedHere = false) :
    S.proofCompletedHere = false := by
  exact h

/-- Statement slots can record explicitly that no RH proof is completed here. -/
theorem statement_slot_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementSlot P)
    (h : S.provesRHHere = false) :
    S.provesRHHere = false := by
  exact h

end R1980DLeanConcreteEstimateStatements
