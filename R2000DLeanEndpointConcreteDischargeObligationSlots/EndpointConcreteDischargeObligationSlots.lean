import R1999DLeanEndpointFirstConcreteDischargeInterface

namespace R2000DLeanEndpointConcreteDischargeObligationSlots

open R1999DLeanEndpointFirstConcreteDischargeInterface
open R1998DLeanEndpointExecutableProofKernelBodyPlan
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
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}


/-- Stages in the endpoint concrete-discharge obligation-slot layer. -/
inductive EndpointConcreteDischargeObligationStage where
  | inheritFirstConcreteDischargeInterface
  | listEndpointMajorantObligation
  | listBoundaryWindowObligation
  | listFiniteAbelNormalizationObligation
  | listRemainderUniformityObligation
  | listSignTransferObligation
  | listAuditObligationSlot
  | recordNoDischargeBoundary
  deriving DecidableEq, Repr

/-- Kinds of obligations required before a first concrete endpoint discharge. -/
inductive EndpointConcreteDischargeObligationKind where
  | firstDischargeInterfaceInput
  | endpointMajorantObligation
  | boundaryWindowObligation
  | finiteAbelNormalizationObligation
  | remainderUniformityObligation
  | signTransferObligation
  | proofKernelInvocationObligation
  | firstConcreteDischargeObligation
  | auditObligationSlot
  deriving DecidableEq, Repr

/-- A concrete-discharge obligation slot. -/
structure EndpointConcreteDischargeObligationItem
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    (DD : EndpointFirstConcreteDischargeDependencyInterface DI) where
  kind : EndpointConcreteDischargeObligationKind
  itemIndex : Nat
  dependencyInterfaceCarrier : Type
  dischargeInterfaceCarrier : Type
  bodyPlanCarrier : Type
  proofKernelStubCarrier : Type
  endpointStatementCarrier : Type
  endpointRouteCarrier : Type
  obligationCarrier : Type
  laterProofInputCarrier : Type
  attachedToFirstConcreteDischargeInterface : Prop
  attachedToEndpointStatementBank : Prop
  attachedToEndpointProofRouteBank : Prop
  recordsObligationOnly : Prop
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
Endpoint concrete-discharge obligation slots.

This layer records the obligations that must be met before a later concrete
endpoint lemma is discharged.  It does not discharge that lemma here.
-/
structure MainAnchoredEndpointConcreteDischargeObligationSlots
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    (DD : EndpointFirstConcreteDischargeDependencyInterface DI) where
  stage : EndpointConcreteDischargeObligationStage
  primaryObligationKind : EndpointConcreteDischargeObligationKind
  firstDischargeInterfaceInput : EndpointConcreteDischargeObligationItem DD
  endpointMajorantObligation : EndpointConcreteDischargeObligationItem DD
  boundaryWindowObligation : EndpointConcreteDischargeObligationItem DD
  finiteAbelNormalizationObligation : EndpointConcreteDischargeObligationItem DD
  remainderUniformityObligation : EndpointConcreteDischargeObligationItem DD
  signTransferObligation : EndpointConcreteDischargeObligationItem DD
  proofKernelInvocationObligation : EndpointConcreteDischargeObligationItem DD
  firstConcreteDischargeObligation : EndpointConcreteDischargeObligationItem DD
  auditObligationSlot : EndpointConcreteDischargeObligationItem DD
  obligationSlotCarrier : Type
  dependencyInterfaceCarrier : Type
  dischargeInterfaceCarrier : Type
  bodyPlanCarrier : Type
  proofKernelStubCarrier : Type
  endpointStatementBankCarrier : Type
  endpointProofRouteBankCarrier : Type
  attachedToR1999FirstConcreteDischargeInterface : Prop
  attachedToR1998ExecutableProofKernelBodyPlan : Prop
  attachedToR1997ExecutableProofKernelStub : Prop
  endpointMajorantObligationRecorded : Prop
  boundaryWindowObligationRecorded : Prop
  finiteAbelNormalizationObligationRecorded : Prop
  remainderUniformityObligationRecorded : Prop
  signTransferObligationRecorded : Prop
  proofKernelInvocationObligationRecorded : Prop
  firstConcreteDischargeObligationRecorded : Prop
  auditObligationSlotRecorded : Prop
  allConcreteDischargeObligationsRecorded : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the obligation slots to the R1999D first concrete-discharge interface. -/
def endpoint_concrete_discharge_obligation_slots_to_discharge_interface
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    (_OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD) :
    MainAnchoredEndpointFirstConcreteDischargeInterface BP :=
  DI

/-- Forget the obligation slots to the R1998D executable proof-kernel body plan. -/
def endpoint_concrete_discharge_obligation_slots_to_body_plan
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    (OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD) :
    MainAnchoredEndpointExecutableProofKernelBodyPlan KS :=
  endpoint_first_concrete_discharge_interface_to_body_plan
    (endpoint_concrete_discharge_obligation_slots_to_discharge_interface OS)

/-- Record that the obligation slots do not discharge the concrete endpoint lemma here. -/
def endpoint_concrete_discharge_obligation_slots_records_no_discharge_here
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    (OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD) : Prop :=
  OS.nonClaimBoundary ∧
  OS.noConcreteEndpointLemmaDischargedHere ∧
  OS.noEndpointKernelExecutedHere ∧
  OS.noEndpointEstimateClosedHere ∧
  OS.noBoundaryErrorEstimateClosedHere ∧
  OS.noRemainderUniformityClosedHere ∧
  OS.noSignTransferClosedHere ∧
  OS.noExplicitFormulaClosedHere ∧
  OS.noRHClosedHere

end R2000DLeanEndpointConcreteDischargeObligationSlots
