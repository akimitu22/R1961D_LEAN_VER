import R1996DLeanEndpointExecutableKernelBoundary

namespace R1997DLeanEndpointExecutableProofKernelStub

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

/-- Stages for the endpoint executable proof-kernel stub. -/
inductive EndpointExecutableProofKernelStubStage where
  | readExecutableKernelBoundary
  | readExecutableKernelBoundaryDependencyPlan
  | exposeExecutableProofKernelStubInputs
  | exposeLocalReductionStub
  | exposeFiniteAbelStub
  | exposeNormalizationStub
  | exposeBoundaryWindowStub
  | exposeEndpointMajorantStub
  | preserveNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Stub kinds for the executable endpoint proof-kernel shell. -/
inductive EndpointExecutableProofKernelStubKind where
  | executableKernelBoundaryInput
  | executableKernelBoundaryDependencyInput
  | kernelStubInput
  | localReductionExecutableStub
  | finiteAbelExecutableStub
  | normalizationExecutableStub
  | boundaryWindowExecutableStub
  | endpointMajorantExecutableStub
  | laterExecutableKernelBodyStub
  | auditExecutableProofKernelStub
  deriving DecidableEq, Repr

/-- A single endpoint executable proof-kernel stub item. -/
structure EndpointExecutableProofKernelStubItem
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) where
  kind : EndpointExecutableProofKernelStubKind
  itemIndex : Nat
  executableKernelBoundaryCarrier : Type
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  localReductionStubCarrier : Type
  finiteAbelStubCarrier : Type
  normalizationStubCarrier : Type
  boundaryWindowStubCarrier : Type
  endpointMajorantStubCarrier : Type
  laterExecutableKernelBodyCarrier : Type
  attachedToExecutableKernelBoundary : Prop
  attachedToFirstExecutableSkeleton : Prop
  attachedToExecutionInterface : Prop
  attachedToImplementationLedger : Prop
  attachedToLaterExecutableKernelBodyStub : Prop
  recordsExecutableProofKernelStubOnly : Prop
  readyForLaterExecutableKernelBody : Prop
  implementedHere : Bool
  executedHere : Bool
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Endpoint executable proof-kernel stub.

This records the first explicit stub boundary for a later executable endpoint
proof-kernel body.  It does not implement or run the proof kernel and does not
close any analytic estimate.
-/
structure MainAnchoredEndpointExecutableProofKernelStub
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) where
  stage : EndpointExecutableProofKernelStubStage
  primaryStubKind : EndpointExecutableProofKernelStubKind
  executableKernelBoundaryInput : EndpointExecutableProofKernelStubItem BK
  executableKernelBoundaryDependencyInput : EndpointExecutableProofKernelStubItem BK
  kernelStubInput : EndpointExecutableProofKernelStubItem BK
  localReductionExecutableStub : EndpointExecutableProofKernelStubItem BK
  finiteAbelExecutableStub : EndpointExecutableProofKernelStubItem BK
  normalizationExecutableStub : EndpointExecutableProofKernelStubItem BK
  boundaryWindowExecutableStub : EndpointExecutableProofKernelStubItem BK
  endpointMajorantExecutableStub : EndpointExecutableProofKernelStubItem BK
  laterExecutableKernelBodyStub : EndpointExecutableProofKernelStubItem BK
  auditExecutableProofKernelStub : EndpointExecutableProofKernelStubItem BK
  executableProofKernelStubCarrier : Type
  executableKernelBoundaryCarrier : Type
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  executionChecklistCarrier : Type
  proofRouteBankCarrier : Type
  laterExecutableKernelBodyCarrier : Type
  attachedToR1996ExecutableKernelBoundary : Prop
  attachedToR1995FirstExecutableSkeleton : Prop
  attachedToR1994ExecutionInterface : Prop
  attachedToR1993ImplementationLedger : Prop
  attachedToR1992ExecutionChecklist : Prop
  attachedToR1991ProofRouteBank : Prop
  localReductionExecutableStubRecorded : Prop
  finiteAbelExecutableStubRecorded : Prop
  normalizationExecutableStubRecorded : Prop
  boundaryWindowExecutableStubRecorded : Prop
  endpointMajorantExecutableStubRecorded : Prop
  laterExecutableKernelBodyStubRecorded : Prop
  auditExecutableProofKernelStubRecorded : Prop
  allEndpointExecutableProofKernelStubItemsRecorded : Prop
  noEndpointKernelImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointStatementDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the executable proof-kernel stub to the R1996D executable kernel boundary. -/
def endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (_KS : MainAnchoredEndpointExecutableProofKernelStub BK) :
    MainAnchoredEndpointExecutableKernelBoundary SK :=
  BK

/-- Forget the executable proof-kernel stub to the R1995D first executable skeleton. -/
def endpoint_executable_proof_kernel_stub_to_first_executable_skeleton
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) :
    MainAnchoredEndpointFirstExecutableSkeleton EI :=
  endpoint_executable_kernel_boundary_to_first_executable_skeleton
    (endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary KS)

/-- Forget the executable proof-kernel stub to the R1994D execution interface. -/
def endpoint_executable_proof_kernel_stub_to_execution_interface
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) :
    MainAnchoredEndpointProofKernelExecutionInterface DL :=
  endpoint_executable_kernel_boundary_to_execution_interface
    (endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary KS)

/-- Forget the executable proof-kernel stub to the R1993D implementation ledger. -/
def endpoint_executable_proof_kernel_stub_to_implementation_ledger
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) :
    MainAnchoredEndpointProofKernelImplementationLedger DC :=
  endpoint_executable_kernel_boundary_to_implementation_ledger
    (endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary KS)

/-- Forget the executable proof-kernel stub to the R1992D execution checklist. -/
def endpoint_executable_proof_kernel_stub_to_execution_checklist
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) :
    MainAnchoredEndpointProofKernelExecutionChecklist DP :=
  endpoint_executable_kernel_boundary_to_execution_checklist
    (endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary KS)

/-- Record that the executable proof-kernel stub still does not discharge endpoint proof obligations. -/
def endpoint_executable_proof_kernel_stub_records_no_endpoint_proof_here
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) : Prop :=
  KS.nonClaimBoundary ∧
  KS.noEndpointKernelImplementedHere ∧
  KS.noEndpointKernelExecutedHere ∧
  KS.noEndpointStatementDischargedHere ∧
  KS.noEndpointEstimateClosedHere ∧
  KS.noBoundaryErrorEstimateClosedHere ∧
  KS.noRemainderUniformityClosedHere ∧
  KS.noSignTransferClosedHere ∧
  KS.noExplicitFormulaClosedHere ∧
  KS.noRHClosedHere

end R1997DLeanEndpointExecutableProofKernelStub
