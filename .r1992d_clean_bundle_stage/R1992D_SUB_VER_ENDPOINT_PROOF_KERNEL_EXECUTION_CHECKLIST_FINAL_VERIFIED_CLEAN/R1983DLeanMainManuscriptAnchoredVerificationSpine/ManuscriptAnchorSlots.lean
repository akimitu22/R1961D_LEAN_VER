import R1982DLeanProofObligationExecutionPlan

namespace R1983DLeanMainManuscriptAnchoredVerificationSpine

open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/--
R1983D anchor layer for keeping the Lean verification spine attached to the
main manuscript bundle.

The structure does not add an analytic proof.  It records that the current
R1982D execution plan is being checked against three inherited anchors:

* the main manuscript bundle,
* the historical `Main.lean` spine with its long `#check` audit list,
* the proof-obligation ledger used to route later concrete proof files.
-/
structure MainManuscriptAnchorSpine
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) where
  mainManuscriptCarrier : Type
  proofObligationsCarrier : Type
  mainLeanCarrier : Type
  historicalCheckCarrier : Type
  continuationLayerCarrier : Type
  executionPlanCarrier : Type
  futureConcreteProofCarrier : Type
  mainManuscriptAnchored : Prop
  proofObligationsAnchored : Prop
  mainLeanHistoricalChecksAnchored : Prop
  r1974BundleCompatibilityRecorded : Prop
  r1975ToR1982ContinuationRecorded : Prop
  executionPlanAnchored : Prop
  executionPlanIsCurrentR1982Plan : Prop
  readyForFutureConcreteProofFiles : Prop
  noEndpointEstimateProvedHere : Prop
  noBoundaryErrorEstimateProvedHere : Prop
  noRemainderEstimateProvedHere : Prop
  noUniformityEstimateProvedHere : Prop
  noSignTransferEstimateProvedHere : Prop
  noRealAbelBoundaryIdentityProvedHere : Prop
  noExplicitFormulaProvedHere : Prop
  noRHProvedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the R1983D manuscript anchor spine back to the R1982D execution plan. -/
def manuscript_anchor_spine_to_execution_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (_M : MainManuscriptAnchorSpine E) :
    ConcreteProofObligationExecutionPlan S :=
  E

/-- Return the recorded endpoint no-proof boundary proposition. -/
def manuscript_anchor_spine_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (M : MainManuscriptAnchorSpine E) : Prop :=
  M.noEndpointEstimateProvedHere

/-- Return the recorded RH no-proof boundary proposition. -/
def manuscript_anchor_spine_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (M : MainManuscriptAnchorSpine E) : Prop :=
  M.noRHProvedHere

end R1983DLeanMainManuscriptAnchoredVerificationSpine
