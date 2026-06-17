import R1983DLeanMainManuscriptAnchoredVerificationSpine.SpineBridge
import R1982DLeanProofObligationExecutionPlan.ExecutionPlanSlots

namespace R1984DLeanManuscriptObligationImplementationQueue

open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Families of first obligations that remain attached to the main-manuscript spine. -/
inductive MainAnchoredObligationFamily where
  | endpoint
  | boundaryError
  | remainderUniformity
  | signTransfer
  | crossFamilyAudit
  deriving DecidableEq, Repr

/-- Queue stages used before a concrete analytic proof file is opened. -/
inductive MainAnchoredQueueStage where
  | registerManuscriptAnchor
  | selectStatementBankTag
  | chooseFirstLemma
  | collectDependencies
  | prepareProofFile
  | preserveNonClaimAudit
  deriving DecidableEq, Repr

/--
A single main-manuscript-anchored first-obligation queue entry.

The entry records the next implementable proof obligation, its family, its
first-lemma carrier, and the dependency frontier that must be cleared later.
All proof flags remain negative in R1984D: this is a queue layer, not an
endpoint, boundary-error, remainder/uniformity, sign-transfer, explicit-formula,
or RH proof layer.
-/
structure MainAnchoredImplementationQueueEntry
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (M : MainManuscriptAnchorSpine E) where
  family : MainAnchoredObligationFamily
  stage : MainAnchoredQueueStage
  queueIndex : Nat
  manuscriptAnchorCarrier : Type
  statementBankCarrier : Type
  skeletonCarrier : Type
  firstLemmaCarrier : Type
  dependencyCarrier : Type
  proofFileCarrier : Type
  attachedToManuscriptSpine : Prop
  attachedToExecutionPlan : Prop
  attachedToConcreteStatementBank : Prop
  firstLemmaSelected : Prop
  dependencyFrontierRecorded : Prop
  proofFileReadyForLaterImplementation : Prop
  implementedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderEstimateHere : Bool
  provesUniformityEstimateHere : Bool
  provesSignTransferHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
R1984D queue over the R1983D manuscript anchor spine.

This structure is the corrected successor to R1983D: it does not replace the
main-manuscript verification spine.  Instead, it hangs the first implementation
queue from that spine and therefore keeps the R1974D manuscript bundle, the
long `Main.lean` audit, and the R1975D--R1983D continuation together.
-/
structure MainAnchoredFirstObligationImplementationQueue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (M : MainManuscriptAnchorSpine E) where
  endpointEntry : MainAnchoredImplementationQueueEntry M
  boundaryErrorEntry : MainAnchoredImplementationQueueEntry M
  remainderUniformityEntry : MainAnchoredImplementationQueueEntry M
  signTransferEntry : MainAnchoredImplementationQueueEntry M
  crossAuditEntry : MainAnchoredImplementationQueueEntry M
  anchorSpineCarrier : Type
  executionPlanCarrier : Type
  statementBankCarrier : Type
  proofSkeletonCarrier : Type
  firstImplementationQueueCarrier : Type
  anchorSpineIsInput : Prop
  queueFollowsR1982ExecutionPlan : Prop
  queueIsAttachedToR1974MainManuscript : Prop
  queueIsAttachedToProofObligationsLedger : Prop
  queuePreservesHistoricalMainLeanChecks : Prop
  firstImplementationFrontierRecorded : Prop
  endpointFirstLemmaQueued : Prop
  boundaryErrorFirstLemmaQueued : Prop
  remainderUniformityFirstLemmaQueued : Prop
  signTransferFirstLemmaQueued : Prop
  noConcreteProofImplementedHere : Prop
  noEndpointEstimateProvedHere : Prop
  noBoundaryErrorEstimateProvedHere : Prop
  noRemainderUniformityEstimateProvedHere : Prop
  noSignTransferEstimateProvedHere : Prop
  noRHProvedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the queue back to the R1983D main-manuscript anchor spine. -/
def main_anchored_queue_to_anchor_spine
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (_Q : MainAnchoredFirstObligationImplementationQueue M) :
    MainManuscriptAnchorSpine E :=
  M

/-- Forget the queue through the anchor spine to the R1982D execution plan. -/
def main_anchored_queue_to_execution_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) :
    ConcreteProofObligationExecutionPlan S :=
  R1983DLeanMainManuscriptAnchoredVerificationSpine.main_manuscript_anchor_spine_to_execution_plan
    (main_anchored_queue_to_anchor_spine Q)

/-- Forget the queue through R1983D and R1982D to the R1980D statement bank. -/
def main_anchored_queue_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) :
    ConcreteEstimateStatementBank P :=
  R1983DLeanMainManuscriptAnchoredVerificationSpine.main_manuscript_anchor_spine_to_statement_bank
    (main_anchored_queue_to_anchor_spine Q)

/-- Return the recorded no-proof boundary proposition for the queue. -/
def main_anchored_queue_records_no_concrete_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) : Prop :=
  Q.noConcreteProofImplementedHere

/-- Return the recorded no-RH boundary proposition for the queue. -/
def main_anchored_queue_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) : Prop :=
  Q.noRHProvedHere

end R1984DLeanManuscriptObligationImplementationQueue
