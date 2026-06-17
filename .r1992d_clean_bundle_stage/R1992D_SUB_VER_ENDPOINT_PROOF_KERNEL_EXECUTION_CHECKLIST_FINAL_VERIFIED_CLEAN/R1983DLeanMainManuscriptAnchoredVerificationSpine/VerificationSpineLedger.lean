import R1983DLeanMainManuscriptAnchoredVerificationSpine.ManuscriptAnchorSlots

namespace R1983DLeanMainManuscriptAnchoredVerificationSpine

open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Documents and files that are treated as anchoring material in R1983D. -/
inductive MainManuscriptAnchorDocumentKind where
  | mainManuscript
  | proofObligationsLedger
  | mainLeanHistoricalCheckSpine
  | r1974BundleManifest
  | continuationLayerLedger
  | futureConcreteProofLedger
  deriving DecidableEq, Repr

/-- A single ledger entry connecting an anchor document kind to the verification spine. -/
structure MainManuscriptAnchorLedgerEntry
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (M : MainManuscriptAnchorSpine E) where
  anchorKind : MainManuscriptAnchorDocumentKind
  anchorIndex : Nat
  anchorCarrier : Type
  verificationCarrier : Type
  attachedToSpine : Prop
  attachedToExecutionPlan : Prop
  attachedToHistoricalMainLeanChecks : Prop
  attachedToProofObligationRouting : Prop
  noAnalyticProofAddedByEntry : Prop
  nonClaimBoundary : Prop

/-- Ledger for the restored main-manuscript-anchored verification spine. -/
structure MainManuscriptAnchoredVerificationLedger
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (M : MainManuscriptAnchorSpine E) where
  mainManuscriptEntry : MainManuscriptAnchorLedgerEntry M
  proofObligationsEntry : MainManuscriptAnchorLedgerEntry M
  mainLeanEntry : MainManuscriptAnchorLedgerEntry M
  continuationEntry : MainManuscriptAnchorLedgerEntry M
  previousAggregateImportsRecorded : Prop
  historicalMainChecksPreserved : Prop
  r1974BundleCompatibilityAudited : Prop
  r1975ToR1982ContinuationAudited : Prop
  executionPlanStillForgetsToR1980StatementBank : Prop
  noNewConcreteEstimateProofAddedHere : Prop
  noRHProofAddedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the verification ledger back to the manuscript anchor spine. -/
def verification_ledger_to_anchor_spine
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (_L : MainManuscriptAnchoredVerificationLedger M) :
    MainManuscriptAnchorSpine E :=
  M

/-- Return the no-analytic-proof-added proposition recorded by a ledger entry. -/
def anchor_ledger_entry_records_no_analytic_proof_added
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (entry : MainManuscriptAnchorLedgerEntry M) : Prop :=
  entry.noAnalyticProofAddedByEntry

end R1983DLeanMainManuscriptAnchoredVerificationSpine
