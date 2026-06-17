import R2007DLeanEndpointFirstDischargeDryRunTrace.EndpointFirstDischargeDryRunTraceSlots

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

variable
    {T : MainAnchoredEndpointFirstDischargeDryRunTrace GA}

/-- Dependency kinds for the dry-run trace audit. -/
inductive EndpointFirstDischargeDryRunTraceDependencyKind where
  | traceToGateAudit
  | traceToExecutionGate
  | traceToAttemptBoundary
  | inputSnapshotToTrace
  | certificateSnapshotToTrace
  | traceResultToTrace
  | nonClaimBoundaryToTrace
  deriving DecidableEq, Repr

/-- A dependency item for the dry-run trace audit. -/
structure EndpointFirstDischargeDryRunTraceDependencyItem
    (T : MainAnchoredEndpointFirstDischargeDryRunTrace GA) where
  kind : EndpointFirstDischargeDryRunTraceDependencyKind
  itemIndex : Nat
  traceCarrier : Type
  gateAuditCarrier : Type
  executionGateCarrier : Type
  attemptBoundaryCarrier : Type
  recordsDependency : Prop
  preservesGateAudit : Prop
  preservesExecutionGate : Prop
  preservesAttemptBoundary : Prop
  recordsTraceOnly : Prop
  runsDryRunTraceHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for the dry-run trace. -/
structure EndpointFirstDischargeDryRunTraceDependencyAudit
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    (T : MainAnchoredEndpointFirstDischargeDryRunTrace GA) where
  traceToGateAudit : EndpointFirstDischargeDryRunTraceDependencyItem T
  traceToExecutionGate : EndpointFirstDischargeDryRunTraceDependencyItem T
  traceToAttemptBoundary : EndpointFirstDischargeDryRunTraceDependencyItem T
  inputSnapshotToTrace : EndpointFirstDischargeDryRunTraceDependencyItem T
  certificateSnapshotToTrace : EndpointFirstDischargeDryRunTraceDependencyItem T
  traceResultToTrace : EndpointFirstDischargeDryRunTraceDependencyItem T
  nonClaimBoundaryToTrace : EndpointFirstDischargeDryRunTraceDependencyItem T
  dependencyAuditCarrier : Type
  dryRunTraceCarrier : Type
  recordsDryRunTraceDependencyAudit : Prop
  preservesGateAudit : Prop
  preservesExecutionGate : Prop
  preservesAttemptBoundary : Prop
  noDryRunTraceRunHere : Prop
  noDischargeAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency audit to the dry-run trace. -/
def endpoint_first_discharge_dry_run_trace_dependency_audit_to_trace
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    {T : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    (_TA : EndpointFirstDischargeDryRunTraceDependencyAudit T) :
    MainAnchoredEndpointFirstDischargeDryRunTrace GA :=
  T

/-- Forget the dependency audit to the R2006D execution gate. -/
def endpoint_first_discharge_dry_run_trace_dependency_audit_to_execution_gate
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    {T : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    (TA : EndpointFirstDischargeDryRunTraceDependencyAudit T) :
    MainAnchoredEndpointFirstDischargeExecutionGate PA :=
  endpoint_first_discharge_dry_run_trace_to_execution_gate
    (endpoint_first_discharge_dry_run_trace_dependency_audit_to_trace TA)

/-- Record that the dry-run trace dependency audit does not execute or discharge here. -/
def endpoint_first_discharge_dry_run_trace_dependency_audit_records_no_execution_here
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    {T : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    (TA : EndpointFirstDischargeDryRunTraceDependencyAudit T) : Prop :=
  TA.nonClaimBoundary ∧
  TA.noDryRunTraceRunHere ∧
  TA.noDischargeAttemptStartedHere ∧
  TA.noEndpointKernelExecutedHere ∧
  TA.noConcreteEndpointLemmaProofSuppliedHere ∧
  TA.noConcreteEndpointLemmaDischargedHere ∧
  TA.noEndpointEstimateClosedHere ∧
  TA.noExplicitFormulaClosedHere ∧
  TA.noRHClosedHere

end R2007DLeanEndpointFirstDischargeDryRunTrace
