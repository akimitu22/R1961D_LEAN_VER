import R1981DLeanConcreteProofSkeletons.EndpointSkeletons
import R1981DLeanConcreteProofSkeletons.BoundaryErrorSkeletons
import R1981DLeanConcreteProofSkeletons.RemainderUniformitySkeletons
import R1981DLeanConcreteProofSkeletons.SignTransferSkeletons
import R1980DLeanConcreteEstimateStatements.StatementBankBridge

namespace R1982DLeanProofObligationExecutionPlan

open R1981DLeanConcreteProofSkeletons
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Execution phases for the first concrete proof-obligation plan. -/
inductive ProofObligationExecutionPhase where
  | statementRegistration
  | dependencyClosureReview
  | skeletonActivation
  | firstLemmaImplementation
  | localReduction
  | majorantImplementation
  | uniformityWindow
  | boundaryLimitHandoff
  | signTransferHandoff
  | finalAudit
  deriving DecidableEq, Repr

/--
A single scheduled proof-obligation execution step.

The step records which future statement is to be attacked, which dependencies
must already be available, and whether this layer actually proves the step.
For R1982D the proof flags remain false: the layer is a schedule, not an
analytic proof file.
-/
structure ConcreteProofObligationExecutionStep
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  phase : ProofObligationExecutionPhase
  statementTag : ConcreteEstimateStatementTag
  executionIndex : Nat
  localInputCarrier : Type
  dependencyInputCarrier : Type
  firstLemmaCarrier : Type
  sourceAnchorCarrier : Type
  reviewAnchorCarrier : Type
  stepNamed : Prop
  statementTagMatchesBank : Prop
  dependencyInputsRecorded : Prop
  firstLemmaSelected : Prop
  sourceAnchorsRecorded : Prop
  reviewAnchorRecorded : Prop
  readyForFutureProofFile : Prop
  proofStartedHere : Bool
  proofExecutedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderEstimateHere : Bool
  provesUniformityEstimateHere : Bool
  provesSignTransferHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
R1982D execution plan over the R1981D proof skeletons.

It binds the four skeleton families to a concrete scheduling matrix: first
lemma choices, dependency order, local reduction order, handoff order, and audit
order.  It deliberately forgets back to the R1980D statement bank.
-/
structure ConcreteProofObligationExecutionPlan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  endpointSkeletons : EndpointEstimateProofSkeletons S
  boundaryErrorSkeletons : BoundaryErrorEstimateProofSkeletons S
  remainderUniformitySkeletons : RemainderUniformityProofSkeletons S
  signTransferSkeletons : SignTransferProofSkeletons S
  endpointExecutionSteps : Type
  boundaryErrorExecutionSteps : Type
  remainderUniformityExecutionSteps : Type
  signTransferExecutionSteps : Type
  crossFamilyHandoffSteps : Type
  firstEndpointLemmaFamily : Type
  firstBoundaryErrorLemmaFamily : Type
  firstRemainderUniformityLemmaFamily : Type
  firstSignTransferLemmaFamily : Type
  dependencyOrderFamily : Type
  auditOrderFamily : Type
  statementBank : ConcreteEstimateStatementBank P
  statementBankIsInputBank : Prop
  executionPlanCoversEndpointSkeletons : Prop
  executionPlanCoversBoundaryErrorSkeletons : Prop
  executionPlanCoversRemainderUniformitySkeletons : Prop
  executionPlanCoversSignTransferSkeletons : Prop
  executionPlanMatchesStatementDependencyClosure : Prop
  executionPlanMatchesProofFileRouting : Prop
  executionPlanReadyForConcreteProofFiles : Prop
  noConcreteProofExecutedHere : Prop
  noEndpointProofExecutedHere : Prop
  noBoundaryErrorProofExecutedHere : Prop
  noRemainderUniformityProofExecutedHere : Prop
  noUniformityProofExecutedHere : Prop
  noSignTransferProofExecutedHere : Prop
  noRHProofExecutedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the R1982D execution plan back to the R1980D statement bank. -/
def execution_plan_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_E : ConcreteProofObligationExecutionPlan S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Retrieve the endpoint skeleton family recorded by an execution plan. -/
def execution_plan_to_endpoint_skeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) :
    EndpointEstimateProofSkeletons S :=
  E.endpointSkeletons

/-- Retrieve the boundary-error skeleton family recorded by an execution plan. -/
def execution_plan_to_boundary_error_skeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) :
    BoundaryErrorEstimateProofSkeletons S :=
  E.boundaryErrorSkeletons

/-- Retrieve the remainder/uniformity skeleton family recorded by an execution plan. -/
def execution_plan_to_remainder_uniformity_skeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) :
    RemainderUniformityProofSkeletons S :=
  E.remainderUniformitySkeletons

/-- Retrieve the sign-transfer skeleton family recorded by an execution plan. -/
def execution_plan_to_sign_transfer_skeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) :
    SignTransferProofSkeletons S :=
  E.signTransferSkeletons

/-- Execution steps can record explicitly that no proof is executed in R1982D. -/
theorem execution_step_records_no_proof_executed_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (T : ConcreteProofObligationExecutionStep S)
    (h : T.proofExecutedHere = false) :
    T.proofExecutedHere = false := by
  exact h

end R1982DLeanProofObligationExecutionPlan
