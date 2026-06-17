import R1998DLeanEndpointExecutableProofKernelBodyPlan.EndpointExecutableProofKernelBodyPlanSlots

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


/-- Dependency kinds for the endpoint executable proof-kernel body plan. -/
inductive EndpointExecutableProofKernelBodyDependencyKind where
  | executableProofKernelStubBeforeBodyPlan
  | executableKernelBoundaryBeforeBodyPlan
  | localReductionBodyBeforeFiniteAbelBody
  | finiteAbelBodyBeforeNormalizationBody
  | normalizationBodyBeforeBoundaryWindowBody
  | boundaryWindowBodyBeforeEndpointMajorantBody
  | endpointMajorantBodyBeforeDischargeSlot
  | dischargeSlotBeforeLaterKernelBody
  | auditBodyPlanDependencyGrid
  deriving DecidableEq, Repr

/-- A dependency edge in the endpoint executable proof-kernel body-plan grid. -/
structure EndpointExecutableProofKernelBodyDependencyItem
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) where
  kind : EndpointExecutableProofKernelBodyDependencyKind
  dependencyIndex : Nat
  sourcePlanKind : EndpointExecutableProofKernelBodyPlanKind
  targetPlanKind : EndpointExecutableProofKernelBodyPlanKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  bodyPlanCarrier : Type
  sourceAttachedToBodyPlan : Prop
  targetAttachedToBodyPlan : Prop
  recordsDependencyOnly : Prop
  implementedHere : Bool
  executedHere : Bool
  dischargedHere : Bool
  nonClaimBoundary : Prop

/-- Dependency grid for the endpoint executable proof-kernel body plan. -/
structure EndpointExecutableProofKernelBodyDependencyGrid
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) where
  executableProofKernelStubBeforeBodyPlan : EndpointExecutableProofKernelBodyDependencyItem BP
  executableKernelBoundaryBeforeBodyPlan : EndpointExecutableProofKernelBodyDependencyItem BP
  localReductionBodyBeforeFiniteAbelBody : EndpointExecutableProofKernelBodyDependencyItem BP
  finiteAbelBodyBeforeNormalizationBody : EndpointExecutableProofKernelBodyDependencyItem BP
  normalizationBodyBeforeBoundaryWindowBody : EndpointExecutableProofKernelBodyDependencyItem BP
  boundaryWindowBodyBeforeEndpointMajorantBody : EndpointExecutableProofKernelBodyDependencyItem BP
  endpointMajorantBodyBeforeDischargeSlot : EndpointExecutableProofKernelBodyDependencyItem BP
  dischargeSlotBeforeLaterKernelBody : EndpointExecutableProofKernelBodyDependencyItem BP
  auditBodyPlanDependencyGrid : EndpointExecutableProofKernelBodyDependencyItem BP
  dependencyGridCarrier : Type
  bodyPlanCarrier : Type
  attachedToEndpointExecutableProofKernelBodyPlan : Prop
  attachedToEndpointExecutableProofKernelStub : Prop
  allDependencyItemsRecorded : Prop
  noEndpointKernelBodyImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointStatementDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the body-plan dependency grid to its body plan. -/
def endpoint_executable_proof_kernel_body_dependency_grid_to_body_plan
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (_DG : EndpointExecutableProofKernelBodyDependencyGrid BP) :
    MainAnchoredEndpointExecutableProofKernelBodyPlan KS :=
  BP

/-- Forget the body-plan dependency grid to the executable proof-kernel stub. -/
def endpoint_executable_proof_kernel_body_dependency_grid_to_stub
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DG : EndpointExecutableProofKernelBodyDependencyGrid BP) :
    MainAnchoredEndpointExecutableProofKernelStub BK :=
  endpoint_executable_proof_kernel_body_plan_to_stub
    (endpoint_executable_proof_kernel_body_dependency_grid_to_body_plan DG)

/-- Record that the dependency grid also remains a non-discharge layer. -/
def endpoint_executable_proof_kernel_body_dependency_grid_records_no_endpoint_proof_here
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DG : EndpointExecutableProofKernelBodyDependencyGrid BP) : Prop :=
  DG.nonClaimBoundary ∧
  DG.noEndpointKernelBodyImplementedHere ∧
  DG.noEndpointKernelExecutedHere ∧
  DG.noEndpointStatementDischargedHere ∧
  DG.noEndpointEstimateClosedHere ∧
  DG.noExplicitFormulaClosedHere ∧
  DG.noRHClosedHere

end R1998DLeanEndpointExecutableProofKernelBodyPlan
