import R1998DLeanEndpointExecutableProofKernelBodyPlan

namespace R1999DLeanEndpointFirstConcreteDischargeInterface

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
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}


/-- Stages in the first concrete endpoint-discharge interface layer. -/
inductive EndpointFirstConcreteDischargeInterfaceStage where
  | inheritExecutableProofKernelBodyPlan
  | bindConcreteEndpointLemmaStatement
  | bindConcreteEndpointRoute
  | bindFiniteAbelInputInterface
  | bindNormalizationInputInterface
  | bindBoundaryWindowInputInterface
  | bindEndpointMajorantInputInterface
  | recordNoDischargeBoundary
  deriving DecidableEq, Repr

/-- Kinds of interface slots for a later first concrete endpoint discharge. -/
inductive EndpointFirstConcreteDischargeInterfaceKind where
  | executableProofKernelBodyPlanInput
  | concreteEndpointLemmaStatementInput
  | concreteEndpointRouteInput
  | finiteAbelInputInterface
  | normalizationInputInterface
  | boundaryWindowInputInterface
  | endpointMajorantInputInterface
  | firstConcreteDischargeSlot
  | auditFirstConcreteDischargeInterface
  deriving DecidableEq, Repr

/-- A slot in the first concrete discharge interface. -/
structure EndpointFirstConcreteDischargeInterfaceItem
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS) where
  kind : EndpointFirstConcreteDischargeInterfaceKind
  itemIndex : Nat
  bodyPlanCarrier : Type
  proofKernelStubCarrier : Type
  concreteEndpointLemmaStatementCarrier : Type
  concreteEndpointRouteCarrier : Type
  finiteAbelInputCarrier : Type
  normalizationInputCarrier : Type
  boundaryWindowInputCarrier : Type
  endpointMajorantInputCarrier : Type
  firstConcreteDischargeCarrier : Type
  attachedToExecutableProofKernelBodyPlan : Prop
  attachedToExecutableProofKernelStub : Prop
  attachedToConcreteEndpointLemmaStatementBank : Prop
  attachedToConcreteEndpointProofRouteBank : Prop
  recordsDischargeInterfaceOnly : Prop
  readyForLaterConcreteDischarge : Prop
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First concrete endpoint-discharge interface.

This layer records the input/output interface through which a later concrete
endpoint lemma may be discharged.  It does not discharge that lemma here.
-/
structure MainAnchoredEndpointFirstConcreteDischargeInterface
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS) where
  stage : EndpointFirstConcreteDischargeInterfaceStage
  primaryInterfaceKind : EndpointFirstConcreteDischargeInterfaceKind
  executableProofKernelBodyPlanInput : EndpointFirstConcreteDischargeInterfaceItem BP
  concreteEndpointLemmaStatementInput : EndpointFirstConcreteDischargeInterfaceItem BP
  concreteEndpointRouteInput : EndpointFirstConcreteDischargeInterfaceItem BP
  finiteAbelInputInterface : EndpointFirstConcreteDischargeInterfaceItem BP
  normalizationInputInterface : EndpointFirstConcreteDischargeInterfaceItem BP
  boundaryWindowInputInterface : EndpointFirstConcreteDischargeInterfaceItem BP
  endpointMajorantInputInterface : EndpointFirstConcreteDischargeInterfaceItem BP
  firstConcreteDischargeSlot : EndpointFirstConcreteDischargeInterfaceItem BP
  auditFirstConcreteDischargeInterface : EndpointFirstConcreteDischargeInterfaceItem BP
  firstConcreteDischargeInterfaceCarrier : Type
  executableProofKernelBodyPlanCarrier : Type
  executableProofKernelStubCarrier : Type
  endpointConcreteStatementBankCarrier : Type
  endpointConcreteProofRouteBankCarrier : Type
  endpointExecutableKernelBoundaryCarrier : Type
  finiteAbelInputCarrier : Type
  normalizationInputCarrier : Type
  endpointMajorantInputCarrier : Type
  attachedToR1998ExecutableProofKernelBodyPlan : Prop
  attachedToR1997ExecutableProofKernelStub : Prop
  attachedToR1990EndpointConcreteStatementBank : Prop
  attachedToR1991EndpointConcreteProofRouteBank : Prop
  finiteAbelInputInterfaceRecorded : Prop
  normalizationInputInterfaceRecorded : Prop
  boundaryWindowInputInterfaceRecorded : Prop
  endpointMajorantInputInterfaceRecorded : Prop
  firstConcreteDischargeSlotRecorded : Prop
  auditFirstConcreteDischargeInterfaceRecorded : Prop
  allFirstConcreteDischargeInterfaceItemsRecorded : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the first concrete discharge interface to the R1998D body plan. -/
def endpoint_first_concrete_discharge_interface_to_body_plan
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (_DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) :
    R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS :=
  BP

/-- Forget the first concrete discharge interface to the R1997D executable proof-kernel stub. -/
def endpoint_first_concrete_discharge_interface_to_stub
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) :
    MainAnchoredEndpointExecutableProofKernelStub BK :=
  R1998DLeanEndpointExecutableProofKernelBodyPlan.endpoint_executable_proof_kernel_body_plan_to_stub
    (endpoint_first_concrete_discharge_interface_to_body_plan DI)

/-- Forget the first concrete discharge interface to the R1996D executable kernel boundary. -/
def endpoint_first_concrete_discharge_interface_to_executable_kernel_boundary
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) :
    MainAnchoredEndpointExecutableKernelBoundary SK :=
  R1998DLeanEndpointExecutableProofKernelBodyPlan.endpoint_executable_proof_kernel_body_plan_to_executable_kernel_boundary
    (endpoint_first_concrete_discharge_interface_to_body_plan DI)

/-- Record that the first concrete discharge interface does not discharge the endpoint lemma here. -/
def endpoint_first_concrete_discharge_interface_records_no_discharge_here
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) : Prop :=
  DI.nonClaimBoundary ∧
  DI.noConcreteEndpointLemmaDischargedHere ∧
  DI.noEndpointKernelExecutedHere ∧
  DI.noEndpointEstimateClosedHere ∧
  DI.noBoundaryErrorEstimateClosedHere ∧
  DI.noRemainderUniformityClosedHere ∧
  DI.noSignTransferClosedHere ∧
  DI.noExplicitFormulaClosedHere ∧
  DI.noRHClosedHere

end R1999DLeanEndpointFirstConcreteDischargeInterface
