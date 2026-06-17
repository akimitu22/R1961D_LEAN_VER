import R1997DLeanEndpointExecutableProofKernelStub

namespace R1998DLeanEndpointExecutableProofKernelBodyPlan

open R1997DLeanEndpointExecutableProofKernelStub
open R1996DLeanEndpointExecutableKernelBoundary
open R1995DLeanEndpointFirstExecutableSkeleton
open R1994DLeanEndpointProofKernelExecutionInterface
open R1993DLeanEndpointProofKernelImplementationLedger
open R1992DLeanEndpointProofKernelExecutionChecklist
open R1991DLeanEndpointConcreteProofRouteBank
open R1990DLeanEndpointConcreteLemmaStatementBank
open R1989DLeanEndpointConcreteLemmaStubs
open R1988DLeanEndpointKernelAxiomBoundary
open R1987DLeanEndpointProofKernelInterface
open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

variable
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    {X : MainAnchoredEndpointKernelAxiomBoundary K}
    {L : EndpointFirstConcreteLemmaBoundary X}
    {SB : MainAnchoredEndpointConcreteLemmaStubBank L}
    {D : EndpointLemmaStubDependencyGrid SB}
    {ST : MainAnchoredEndpointConcreteLemmaStatementBank D}
    {DM : EndpointStatementDependencyMatrix ST}
    {RB : MainAnchoredEndpointConcreteProofRouteBank DM}
    {DP : EndpointProofRouteDependencyPlan RB}
    {C : MainAnchoredEndpointProofKernelExecutionChecklist DP}
    {DC : EndpointProofKernelExecutionDependencyChecklist C}
    {IL : MainAnchoredEndpointProofKernelImplementationLedger DC}
    {DL : EndpointKernelImplementationDependencyLedger IL}
    {EI : MainAnchoredEndpointProofKernelExecutionInterface DL}
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}


/-- Stages in the endpoint executable proof-kernel body-plan layer. -/
inductive EndpointExecutableProofKernelBodyPlanStage where
  | inheritExecutableProofKernelStub
  | allocateBodyCarrierSlots
  | bindLocalReductionBodySlot
  | bindFiniteAbelBodySlot
  | bindNormalizationBodySlot
  | bindBoundaryWindowBodySlot
  | bindEndpointMajorantBodySlot
  | bindAuditBodySlot
  | recordBodyPlanNonClaimBoundary
  deriving DecidableEq, Repr

/-- Kinds of body-plan slots recorded before the actual endpoint proof-kernel body. -/
inductive EndpointExecutableProofKernelBodyPlanKind where
  | executableProofKernelStubInput
  | localReductionBodyPlan
  | finiteAbelBodyPlan
  | normalizationBodyPlan
  | boundaryWindowBodyPlan
  | endpointMajorantBodyPlan
  | executableKernelBodyCarrier
  | endpointEstimateDischargeSlot
  | auditBodyPlanBoundary
  deriving DecidableEq, Repr

/-- A single slot in the endpoint executable proof-kernel body plan. -/
structure EndpointExecutableProofKernelBodyPlanItem
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) where
  kind : EndpointExecutableProofKernelBodyPlanKind
  itemIndex : Nat
  proofKernelStubCarrier : Type
  executableKernelBoundaryCarrier : Type
  localReductionBodyCarrier : Type
  finiteAbelBodyCarrier : Type
  normalizationBodyCarrier : Type
  boundaryWindowBodyCarrier : Type
  endpointMajorantBodyCarrier : Type
  endpointEstimateDischargeCarrier : Type
  laterExecutableKernelBodyCarrier : Type
  attachedToExecutableProofKernelStub : Prop
  attachedToExecutableKernelBoundary : Prop
  attachedToFirstExecutableSkeleton : Prop
  attachedToExecutionInterface : Prop
  recordsBodyPlanOnly : Prop
  readyForLaterExecutableKernelBody : Prop
  implementsEndpointProofKernelHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Endpoint executable proof-kernel body plan.

This layer allocates the carrier slots for a later executable endpoint
proof-kernel body.  It does not provide the body, run it, or discharge any
concrete endpoint lemma.
-/
structure MainAnchoredEndpointExecutableProofKernelBodyPlan
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) where
  stage : EndpointExecutableProofKernelBodyPlanStage
  primaryBodyPlanKind : EndpointExecutableProofKernelBodyPlanKind
  executableProofKernelStubInput : EndpointExecutableProofKernelBodyPlanItem KS
  localReductionBodyPlan : EndpointExecutableProofKernelBodyPlanItem KS
  finiteAbelBodyPlan : EndpointExecutableProofKernelBodyPlanItem KS
  normalizationBodyPlan : EndpointExecutableProofKernelBodyPlanItem KS
  boundaryWindowBodyPlan : EndpointExecutableProofKernelBodyPlanItem KS
  endpointMajorantBodyPlan : EndpointExecutableProofKernelBodyPlanItem KS
  executableKernelBodyCarrierPlan : EndpointExecutableProofKernelBodyPlanItem KS
  endpointEstimateDischargeSlotPlan : EndpointExecutableProofKernelBodyPlanItem KS
  auditBodyPlanBoundary : EndpointExecutableProofKernelBodyPlanItem KS
  executableProofKernelBodyPlanCarrier : Type
  executableProofKernelStubCarrier : Type
  executableKernelBoundaryCarrier : Type
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  executionChecklistCarrier : Type
  proofRouteBankCarrier : Type
  endpointEstimateDischargeCarrier : Type
  attachedToR1997ExecutableProofKernelStub : Prop
  attachedToR1996ExecutableKernelBoundary : Prop
  attachedToR1995FirstExecutableSkeleton : Prop
  attachedToR1994ExecutionInterface : Prop
  attachedToR1993ImplementationLedger : Prop
  localReductionBodyPlanRecorded : Prop
  finiteAbelBodyPlanRecorded : Prop
  normalizationBodyPlanRecorded : Prop
  boundaryWindowBodyPlanRecorded : Prop
  endpointMajorantBodyPlanRecorded : Prop
  endpointEstimateDischargeSlotRecorded : Prop
  auditBodyPlanBoundaryRecorded : Prop
  allEndpointExecutableProofKernelBodyPlanItemsRecorded : Prop
  noEndpointKernelBodyImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointStatementDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the body plan to the R1997D executable proof-kernel stub. -/
def endpoint_executable_proof_kernel_body_plan_to_stub
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (_BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) :
    MainAnchoredEndpointExecutableProofKernelStub BK :=
  KS

/-- Forget the body plan to the R1996D executable kernel boundary. -/
def endpoint_executable_proof_kernel_body_plan_to_executable_kernel_boundary
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) :
    MainAnchoredEndpointExecutableKernelBoundary SK :=
  R1997DLeanEndpointExecutableProofKernelStub.endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary
    (endpoint_executable_proof_kernel_body_plan_to_stub BP)

/-- Record that the body-plan layer still does not implement or run endpoint proof kernels. -/
def endpoint_executable_proof_kernel_body_plan_records_no_endpoint_proof_here
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) : Prop :=
  BP.nonClaimBoundary ∧
  BP.noEndpointKernelBodyImplementedHere ∧
  BP.noEndpointKernelExecutedHere ∧
  BP.noEndpointStatementDischargedHere ∧
  BP.noEndpointEstimateClosedHere ∧
  BP.noBoundaryErrorEstimateClosedHere ∧
  BP.noRemainderUniformityClosedHere ∧
  BP.noSignTransferClosedHere ∧
  BP.noExplicitFormulaClosedHere ∧
  BP.noRHClosedHere

end R1998DLeanEndpointExecutableProofKernelBodyPlan
