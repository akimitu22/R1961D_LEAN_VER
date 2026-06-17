import R1995DLeanEndpointFirstExecutableSkeleton

namespace R1996DLeanEndpointExecutableKernelBoundary

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

/-- Stages for the endpoint executable kernel boundary. -/
inductive EndpointExecutableKernelBoundaryStage where
  | readFirstExecutableSkeleton
  | readExecutableSkeletonDependencyPlan
  | exposeKernelBoundaryInputs
  | exposeLocalReductionBoundary
  | exposeFiniteAbelBoundary
  | exposeNormalizationBoundary
  | exposeBoundaryWindowBoundary
  | exposeEndpointMajorantBoundary
  | preserveNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Boundary kinds for the endpoint executable kernel shell. -/
inductive EndpointExecutableKernelBoundaryKind where
  | firstExecutableSkeletonInput
  | executableSkeletonDependencyPlanInput
  | kernelInputBoundary
  | localReductionKernelBoundary
  | finiteAbelKernelBoundary
  | normalizationKernelBoundary
  | boundaryWindowKernelBoundary
  | endpointMajorantKernelBoundary
  | laterExecutableKernelFileBoundary
  | auditExecutableKernelBoundary
  deriving DecidableEq, Repr

/-- A single item in the endpoint executable kernel boundary bank. -/
structure EndpointExecutableKernelBoundaryItem
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) where
  kind : EndpointExecutableKernelBoundaryKind
  itemIndex : Nat
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  executionChecklistCarrier : Type
  localReductionBoundaryCarrier : Type
  finiteAbelBoundaryCarrier : Type
  normalizationBoundaryCarrier : Type
  boundaryWindowBoundaryCarrier : Type
  endpointMajorantBoundaryCarrier : Type
  laterExecutableKernelFileCarrier : Type
  attachedToFirstExecutableSkeleton : Prop
  attachedToExecutionInterface : Prop
  attachedToImplementationLedger : Prop
  attachedToExecutionChecklist : Prop
  attachedToLaterExecutableKernelFileBoundary : Prop
  recordsExecutableKernelBoundaryOnly : Prop
  readyForLaterExecutableKernelFile : Prop
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
Endpoint executable kernel boundary.

This records the boundary around the later executable proof-kernel file.  It
still contains no executable endpoint proof-kernel run and discharges no
analytic estimate.
-/
structure MainAnchoredEndpointExecutableKernelBoundary
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) where
  stage : EndpointExecutableKernelBoundaryStage
  primaryBoundaryKind : EndpointExecutableKernelBoundaryKind
  firstExecutableSkeletonInput : EndpointExecutableKernelBoundaryItem SK
  executableSkeletonDependencyPlanInput : EndpointExecutableKernelBoundaryItem SK
  kernelInputBoundary : EndpointExecutableKernelBoundaryItem SK
  localReductionKernelBoundary : EndpointExecutableKernelBoundaryItem SK
  finiteAbelKernelBoundary : EndpointExecutableKernelBoundaryItem SK
  normalizationKernelBoundary : EndpointExecutableKernelBoundaryItem SK
  boundaryWindowKernelBoundary : EndpointExecutableKernelBoundaryItem SK
  endpointMajorantKernelBoundary : EndpointExecutableKernelBoundaryItem SK
  laterExecutableKernelFileBoundary : EndpointExecutableKernelBoundaryItem SK
  auditExecutableKernelBoundary : EndpointExecutableKernelBoundaryItem SK
  executableKernelBoundaryCarrier : Type
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  executionChecklistCarrier : Type
  proofRouteBankCarrier : Type
  laterExecutableKernelFileCarrier : Type
  attachedToR1995FirstExecutableSkeleton : Prop
  attachedToR1994ExecutionInterface : Prop
  attachedToR1993ImplementationLedger : Prop
  attachedToR1992ExecutionChecklist : Prop
  attachedToR1991ProofRouteBank : Prop
  localReductionKernelBoundaryRecorded : Prop
  finiteAbelKernelBoundaryRecorded : Prop
  normalizationKernelBoundaryRecorded : Prop
  boundaryWindowKernelBoundaryRecorded : Prop
  endpointMajorantKernelBoundaryRecorded : Prop
  laterExecutableKernelFileBoundaryRecorded : Prop
  auditExecutableKernelBoundaryRecorded : Prop
  allEndpointExecutableKernelBoundaryItemsRecorded : Prop
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

/-- Forget the executable kernel boundary to the R1995D first executable skeleton. -/
def endpoint_executable_kernel_boundary_to_first_executable_skeleton
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    (_BK : MainAnchoredEndpointExecutableKernelBoundary SK) :
    MainAnchoredEndpointFirstExecutableSkeleton EI :=
  SK

/-- Forget the executable kernel boundary to the R1994D execution interface. -/
def endpoint_executable_kernel_boundary_to_execution_interface
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) :
    MainAnchoredEndpointProofKernelExecutionInterface DL :=
  endpoint_first_executable_skeleton_to_execution_interface
    (endpoint_executable_kernel_boundary_to_first_executable_skeleton BK)

/-- Forget the executable kernel boundary to the R1993D implementation ledger. -/
def endpoint_executable_kernel_boundary_to_implementation_ledger
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) :
    MainAnchoredEndpointProofKernelImplementationLedger DC :=
  endpoint_first_executable_skeleton_to_implementation_ledger
    (endpoint_executable_kernel_boundary_to_first_executable_skeleton BK)

/-- Forget the executable kernel boundary to the R1992D execution checklist. -/
def endpoint_executable_kernel_boundary_to_execution_checklist
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) :
    MainAnchoredEndpointProofKernelExecutionChecklist DP :=
  endpoint_first_executable_skeleton_to_execution_checklist
    (endpoint_executable_kernel_boundary_to_first_executable_skeleton BK)

/-- Record that the executable kernel boundary still does not discharge endpoint proof obligations. -/
def endpoint_executable_kernel_boundary_records_no_endpoint_proof_here
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) : Prop :=
  BK.nonClaimBoundary ∧
  BK.noEndpointKernelImplementedHere ∧
  BK.noEndpointKernelExecutedHere ∧
  BK.noEndpointStatementDischargedHere ∧
  BK.noEndpointEstimateClosedHere ∧
  BK.noBoundaryErrorEstimateClosedHere ∧
  BK.noRemainderUniformityClosedHere ∧
  BK.noSignTransferClosedHere ∧
  BK.noExplicitFormulaClosedHere ∧
  BK.noRHClosedHere

end R1996DLeanEndpointExecutableKernelBoundary
