import R2008DLeanEndpointFirstDischargeDryRunResultSlots.EndpointFirstDischargeDryRunResultSlots

namespace R2008DLeanEndpointFirstDischargeDryRunResultSlots

open R2007DLeanEndpointFirstDischargeDryRunTrace
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
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}


/-- Kinds of dependency-audit records for R2008D result slots. -/
inductive EndpointFirstDischargeDryRunResultDependencyKind where
  | resultSlotsInput
  | dryRunTraceAuditCarrier
  | dryRunTraceCarrier
  | executionGateCarrier
  | witnessPlaceholderCarrier
  | nonClaimDependencyBoundary
  deriving DecidableEq, Repr

/-- One dependency-audit item for R2008D. -/
structure EndpointFirstDischargeDryRunResultDependencyItem
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}
    (RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA) where
  kind : EndpointFirstDischargeDryRunResultDependencyKind
  itemIndex : Nat
  resultSlotsCarrier : Type
  dryRunTraceAuditCarrier : Type
  dryRunTraceCarrier : Type
  executionGateCarrier : Type
  recordsDependencyOnly : Prop
  suppliesEndpointWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for R2008D result slots. -/
structure EndpointFirstDischargeDryRunResultDependencyAudit
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}
    (RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA) where
  resultSlotsInput : EndpointFirstDischargeDryRunResultDependencyItem RS
  dryRunTraceAuditItem : EndpointFirstDischargeDryRunResultDependencyItem RS
  dryRunTraceItem : EndpointFirstDischargeDryRunResultDependencyItem RS
  executionGateItem : EndpointFirstDischargeDryRunResultDependencyItem RS
  witnessPlaceholderItem : EndpointFirstDischargeDryRunResultDependencyItem RS
  nonClaimDependencyBoundary : EndpointFirstDischargeDryRunResultDependencyItem RS
  allDependenciesRecorded : Prop
  noEndpointWitnessSuppliedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget dependency audit to the R2008D result slots. -/
def endpoint_first_discharge_dry_run_result_dependency_audit_to_slots
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    (_RA : EndpointFirstDischargeDryRunResultDependencyAudit RS) :
    MainAnchoredEndpointFirstDischargeDryRunResultSlots TA :=
  RS

/-- Forget dependency audit to the R2007D dry-run trace. -/
def endpoint_first_discharge_dry_run_result_dependency_audit_to_trace
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    (RA : EndpointFirstDischargeDryRunResultDependencyAudit RS) :
    MainAnchoredEndpointFirstDischargeDryRunTrace GA :=
  endpoint_first_discharge_dry_run_result_slots_to_trace
    (endpoint_first_discharge_dry_run_result_dependency_audit_to_slots RA)

/-- Record that R2008D dependency audit also remains non-executing. -/
def endpoint_first_discharge_dry_run_result_dependency_audit_records_no_execution_here
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    (RA : EndpointFirstDischargeDryRunResultDependencyAudit RS) : Prop :=
  RA.nonClaimBoundary ∧
  RA.noEndpointWitnessSuppliedHere ∧
  RA.noEndpointKernelExecutedHere ∧
  RA.noConcreteEndpointLemmaDischargedHere ∧
  RA.noEndpointEstimateClosedHere ∧
  RA.noExplicitFormulaClosedHere ∧
  RA.noRHClosedHere ∧
  endpoint_first_discharge_dry_run_result_slots_records_no_execution_here
    (endpoint_first_discharge_dry_run_result_dependency_audit_to_slots RA)

end R2008DLeanEndpointFirstDischargeDryRunResultSlots
