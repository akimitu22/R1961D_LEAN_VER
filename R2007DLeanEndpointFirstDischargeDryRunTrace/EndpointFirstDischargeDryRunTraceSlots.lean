import R2006DLeanEndpointFirstDischargeExecutionGate

namespace R2007DLeanEndpointFirstDischargeDryRunTrace

open R2006DLeanEndpointFirstDischargeExecutionGate
open R2005DLeanEndpointFirstDischargeExecutionPrecheck
open R2004DLeanEndpointFirstDischargeAttemptInputSlots
open R2003DLeanEndpointFirstDischargeAttemptBoundary
open R2002DLeanEndpointFirstCertificatePayloadSlots
open R2001DLeanEndpointFirstDischargeCertificateInterface
open R2000DLeanEndpointConcreteDischargeObligationSlots
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
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
variable
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}


/-- Stages in the first-discharge dry-run trace layer. -/
inductive EndpointFirstDischargeDryRunTraceStage where
  | inheritExecutionGateAudit
  | bindDryRunTrace
  | bindTraceInputSnapshot
  | bindTraceCertificateSnapshot
  | bindTraceResultSlot
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of dry-run trace records. -/
inductive EndpointFirstDischargeDryRunTraceKind where
  | executionGateAuditInput
  | dryRunTraceCarrier
  | inputSnapshotCarrier
  | certificateSnapshotCarrier
  | traceResultSlot
  | nonClaimTraceBoundary
  deriving DecidableEq, Repr

/-- A dry-run trace item before an actual first-discharge run. -/
structure EndpointFirstDischargeDryRunTraceItem
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    (GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE) where
  kind : EndpointFirstDischargeDryRunTraceKind
  itemIndex : Nat
  executionGateAuditCarrier : Type
  executionGateCarrier : Type
  executionPrecheckCarrier : Type
  attemptBoundaryCarrier : Type
  dryRunTraceCarrier : Type
  inputSnapshotCarrier : Type
  certificateSnapshotCarrier : Type
  traceResultCarrier : Type
  attachedToExecutionGateAudit : Prop
  attachedToExecutionGate : Prop
  recordsDryRunTraceOnly : Prop
  runsDryRunTraceHere : Bool
  startsDischargeAttemptHere : Bool
  executesEndpointProofKernelHere : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First-discharge dry-run trace, still before any actual discharge attempt. -/
structure MainAnchoredEndpointFirstDischargeDryRunTrace
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    (GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE) where
  stage : EndpointFirstDischargeDryRunTraceStage
  primaryTraceKind : EndpointFirstDischargeDryRunTraceKind
  executionGateAuditInput : EndpointFirstDischargeDryRunTraceItem GA
  dryRunTraceCarrierItem : EndpointFirstDischargeDryRunTraceItem GA
  inputSnapshotCarrierItem : EndpointFirstDischargeDryRunTraceItem GA
  certificateSnapshotCarrierItem : EndpointFirstDischargeDryRunTraceItem GA
  traceResultSlot : EndpointFirstDischargeDryRunTraceItem GA
  nonClaimTraceBoundary : EndpointFirstDischargeDryRunTraceItem GA
  dryRunTraceCarrier : Type
  executionGateAuditCarrier : Type
  executionGateCarrier : Type
  attemptBoundaryCarrier : Type
  dryRunTraceRecorded : Prop
  inputSnapshotRecorded : Prop
  certificateSnapshotRecorded : Prop
  traceResultSlotRecorded : Prop
  allTraceItemsRecorded : Prop
  noDryRunTraceRunHere : Prop
  noDischargeAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dry-run trace to the R2006D execution-gate dependency audit. -/
def endpoint_first_discharge_dry_run_trace_to_gate_dependency_audit
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    (_T : MainAnchoredEndpointFirstDischargeDryRunTrace GA) :
    EndpointFirstDischargeExecutionGateDependencyAudit GATE :=
  GA

/-- Forget the dry-run trace to the R2006D execution gate. -/
def endpoint_first_discharge_dry_run_trace_to_execution_gate
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    (T : MainAnchoredEndpointFirstDischargeDryRunTrace GA) :
    MainAnchoredEndpointFirstDischargeExecutionGate PA :=
  endpoint_first_discharge_execution_gate_dependency_audit_to_gate
    (endpoint_first_discharge_dry_run_trace_to_gate_dependency_audit T)

/-- Forget the dry-run trace to the R2003D attempt boundary. -/
def endpoint_first_discharge_dry_run_trace_to_attempt_boundary
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    (T : MainAnchoredEndpointFirstDischargeDryRunTrace GA) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_execution_gate_dependency_audit_to_attempt_boundary
    (endpoint_first_discharge_dry_run_trace_to_gate_dependency_audit T)

/-- Record that the dry-run trace layer does not execute or discharge here. -/
def endpoint_first_discharge_dry_run_trace_records_no_execution_here
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    (T : MainAnchoredEndpointFirstDischargeDryRunTrace GA) : Prop :=
  T.nonClaimBoundary ∧
  T.noDryRunTraceRunHere ∧
  T.noDischargeAttemptStartedHere ∧
  T.noEndpointKernelExecutedHere ∧
  T.noConcreteEndpointLemmaProofSuppliedHere ∧
  T.noConcreteEndpointLemmaDischargedHere ∧
  T.noEndpointEstimateClosedHere ∧
  T.noExplicitFormulaClosedHere ∧
  T.noRHClosedHere

end R2007DLeanEndpointFirstDischargeDryRunTrace
