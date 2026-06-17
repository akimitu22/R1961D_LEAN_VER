import R1984DLeanManuscriptObligationImplementationQueue.MainAnchoredQueueSlots

namespace R1984DLeanManuscriptObligationImplementationQueue

open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Priority tags for the first concrete obligation frontier. -/
inductive MainAnchoredFirstObligationPriority where
  | first
  | dependentSecond
  | auditAfterDependency
  | handoffAfterLocalReduction
  | deferredUntilConcreteProofFile
  deriving DecidableEq, Repr

/--
A dependency-frontier entry attached to the main-manuscript queue.

It specifies which family is first, which dependencies must be checked before
opening a later concrete proof file, and which manuscript anchor prevents the
queue from drifting away from the main paper.
-/
structure MainAnchoredQueueFrontierEntry
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) where
  family : MainAnchoredObligationFamily
  priority : MainAnchoredFirstObligationPriority
  frontierIndex : Nat
  localReductionCarrier : Type
  majorantCarrier : Type
  uniformityWindowCarrier : Type
  signTransferCarrier : Type
  manuscriptAnchorCarrier : Type
  attachedToQueue : Prop
  attachedToAnchorSpine : Prop
  attachedToExecutionPlan : Prop
  firstLemmaBeforeSecondLemma : Prop
  dependencyMustBeClearedLater : Prop
  concreteProofFileNotOpenedHere : Prop
  implementedHere : Bool
  closesEndpointEstimateHere : Bool
  closesBoundaryErrorEstimateHere : Bool
  closesRemainderUniformityHere : Bool
  closesSignTransferHere : Bool
  closesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency frontier for the first implementation queue. -/
structure MainAnchoredFirstImplementationFrontier
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) where
  endpointFrontier : MainAnchoredQueueFrontierEntry Q
  boundaryErrorFrontier : MainAnchoredQueueFrontierEntry Q
  remainderUniformityFrontier : MainAnchoredQueueFrontierEntry Q
  signTransferFrontier : MainAnchoredQueueFrontierEntry Q
  endpointDependenciesCarrier : Type
  boundaryErrorDependenciesCarrier : Type
  remainderUniformityDependenciesCarrier : Type
  signTransferDependenciesCarrier : Type
  crossAuditDependenciesCarrier : Type
  frontierAttachedToQueue : Prop
  frontierAttachedToManuscriptAnchor : Prop
  frontierAttachedToProofObligationsLedger : Prop
  endpointFrontierFirst : Prop
  boundaryErrorFrontierAfterEndpointRegistration : Prop
  remainderUniformityFrontierAfterBoundaryAudit : Prop
  signTransferFrontierAfterUniformityAudit : Prop
  noDependencyClosedByFrontierHere : Prop
  noConcreteEstimateProofClosedHere : Prop
  noRHProofClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the frontier back to its queue. -/
def first_implementation_frontier_to_queue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (_F : MainAnchoredFirstImplementationFrontier Q) :
    MainAnchoredFirstObligationImplementationQueue M :=
  Q

/-- Return the recorded no-proof boundary proposition for a frontier. -/
def first_implementation_frontier_records_no_concrete_proof_closed_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (F : MainAnchoredFirstImplementationFrontier Q) : Prop :=
  F.noConcreteEstimateProofClosedHere

/-- Return the recorded no-RH boundary proposition for a frontier. -/
def first_implementation_frontier_records_no_rh_proof_closed_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (F : MainAnchoredFirstImplementationFrontier Q) : Prop :=
  F.noRHProofClosedHere

end R1984DLeanManuscriptObligationImplementationQueue
