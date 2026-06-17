import R2005DLeanEndpointFirstDischargeExecutionPrecheck.EndpointFirstDischargeExecutionPrecheckSlots

namespace R2005DLeanEndpointFirstDischargeExecutionPrecheck

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
variable
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}


/-- Dependency kinds for execution precheck audit. -/
inductive EndpointFirstDischargeExecutionPrecheckDependencyKind where
  | inputPlanToPrecheck
  | endpointEstimatePresenceToPrecheck
  | proofKernelPresenceToPrecheck
  | certificatePresenceToPrecheck
  | auditPresenceToPrecheck
  | nonClaimBoundaryToPrecheck
  deriving DecidableEq, Repr

/-- A dependency item into an execution precheck. -/
structure EndpointFirstDischargeExecutionPrecheckDependencyItem
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    (PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP) where
  kind : EndpointFirstDischargeExecutionPrecheckDependencyKind
  dependencyIndex : Nat
  sourceCarrier : Type
  targetCarrier : Type
  attachedToExecutionPrecheck : Prop
  preservesInputDependencyPlan : Prop
  preservesAttemptBoundary : Prop
  recordsDependencyOnly : Prop
  startsDischargeAttemptHere : Bool
  runsExecutionPrecheckHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for the execution-precheck layer. -/
structure EndpointFirstDischargeExecutionPrecheckDependencyAudit
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    (PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP) where
  inputPlanToPrecheck : EndpointFirstDischargeExecutionPrecheckDependencyItem PC
  endpointEstimatePresenceToPrecheck : EndpointFirstDischargeExecutionPrecheckDependencyItem PC
  proofKernelPresenceToPrecheck : EndpointFirstDischargeExecutionPrecheckDependencyItem PC
  certificatePresenceToPrecheck : EndpointFirstDischargeExecutionPrecheckDependencyItem PC
  auditPresenceToPrecheck : EndpointFirstDischargeExecutionPrecheckDependencyItem PC
  nonClaimBoundaryToPrecheck : EndpointFirstDischargeExecutionPrecheckDependencyItem PC
  dependencyAuditCarrier : Type
  executionPrecheckCarrier : Type
  recordsExecutionPrecheckDependencyAudit : Prop
  preservesInputDependencyPlan : Prop
  preservesInputSlots : Prop
  preservesAttemptBoundary : Prop
  noDischargeAttemptStartedHere : Prop
  noExecutionPrecheckRunHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency audit to the execution precheck. -/
def endpoint_first_discharge_execution_precheck_dependency_audit_to_precheck
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    (_PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC) :
    MainAnchoredEndpointFirstDischargeExecutionPrecheck IP :=
  PC

/-- Forget the dependency audit to the R2003D attempt boundary. -/
def endpoint_first_discharge_execution_precheck_dependency_audit_to_attempt_boundary
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    (PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_execution_precheck_to_attempt_boundary
    (endpoint_first_discharge_execution_precheck_dependency_audit_to_precheck PA)

/-- Record that the precheck dependency audit does not execute or discharge here. -/
def endpoint_first_discharge_execution_precheck_dependency_audit_records_no_execution_here
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    (PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC) : Prop :=
  PA.nonClaimBoundary ∧
  PA.noDischargeAttemptStartedHere ∧
  PA.noExecutionPrecheckRunHere ∧
  PA.noEndpointKernelExecutedHere ∧
  PA.noConcreteEndpointLemmaProofSuppliedHere ∧
  PA.noConcreteEndpointLemmaDischargedHere ∧
  PA.noEndpointEstimateClosedHere ∧
  PA.noExplicitFormulaClosedHere ∧
  PA.noRHClosedHere

end R2005DLeanEndpointFirstDischargeExecutionPrecheck
