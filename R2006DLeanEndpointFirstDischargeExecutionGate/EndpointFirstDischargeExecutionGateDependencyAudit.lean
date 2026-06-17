import R2006DLeanEndpointFirstDischargeExecutionGate.EndpointFirstDischargeExecutionGateSlots

namespace R2006DLeanEndpointFirstDischargeExecutionGate

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
    {EG : MainAnchoredEndpointFirstDischargeExecutionGate PA}

/-- Dependency kinds for the execution-gate audit. -/
inductive EndpointFirstDischargeExecutionGateDependencyKind where
  | gateToPrecheckAudit
  | gateToExecutionPrecheck
  | gateToAttemptBoundary
  | gateInputsToGate
  | gateCertificateToGate
  | gateTraceCarrierToGate
  | nonClaimBoundaryToGate
  deriving DecidableEq, Repr

/-- A dependency item for the execution-gate audit. -/
structure EndpointFirstDischargeExecutionGateDependencyItem
    (EG : MainAnchoredEndpointFirstDischargeExecutionGate PA) where
  kind : EndpointFirstDischargeExecutionGateDependencyKind
  itemIndex : Nat
  gateCarrier : Type
  precheckAuditCarrier : Type
  executionPrecheckCarrier : Type
  attemptBoundaryCarrier : Type
  recordsDependency : Prop
  preservesPrecheckAudit : Prop
  preservesExecutionPrecheck : Prop
  preservesAttemptBoundary : Prop
  recordsGateOnly : Prop
  opensExecutionGateHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for the execution gate. -/
structure EndpointFirstDischargeExecutionGateDependencyAudit
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    (EG : MainAnchoredEndpointFirstDischargeExecutionGate PA) where
  gateToPrecheckAudit : EndpointFirstDischargeExecutionGateDependencyItem EG
  gateToExecutionPrecheck : EndpointFirstDischargeExecutionGateDependencyItem EG
  gateToAttemptBoundary : EndpointFirstDischargeExecutionGateDependencyItem EG
  gateInputsToGate : EndpointFirstDischargeExecutionGateDependencyItem EG
  gateCertificateToGate : EndpointFirstDischargeExecutionGateDependencyItem EG
  gateTraceCarrierToGate : EndpointFirstDischargeExecutionGateDependencyItem EG
  nonClaimBoundaryToGate : EndpointFirstDischargeExecutionGateDependencyItem EG
  dependencyAuditCarrier : Type
  executionGateCarrier : Type
  recordsExecutionGateDependencyAudit : Prop
  preservesPrecheckAudit : Prop
  preservesExecutionPrecheck : Prop
  preservesAttemptBoundary : Prop
  noGateOpenedHere : Prop
  noDischargeAttemptStartedHere : Prop
  noExecutionPrecheckRunHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency audit to the execution gate. -/
def endpoint_first_discharge_execution_gate_dependency_audit_to_gate
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    {EG : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    (_GA : EndpointFirstDischargeExecutionGateDependencyAudit EG) :
    MainAnchoredEndpointFirstDischargeExecutionGate PA :=
  EG

/-- Forget the dependency audit to the R2003D attempt boundary. -/
def endpoint_first_discharge_execution_gate_dependency_audit_to_attempt_boundary
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    {EG : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    (GA : EndpointFirstDischargeExecutionGateDependencyAudit EG) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_execution_gate_to_attempt_boundary
    (endpoint_first_discharge_execution_gate_dependency_audit_to_gate GA)

/-- Record that the execution-gate dependency audit does not execute or discharge here. -/
def endpoint_first_discharge_execution_gate_dependency_audit_records_no_execution_here
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    {EG : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    (GA : EndpointFirstDischargeExecutionGateDependencyAudit EG) : Prop :=
  GA.nonClaimBoundary ∧
  GA.noGateOpenedHere ∧
  GA.noDischargeAttemptStartedHere ∧
  GA.noExecutionPrecheckRunHere ∧
  GA.noEndpointKernelExecutedHere ∧
  GA.noConcreteEndpointLemmaProofSuppliedHere ∧
  GA.noConcreteEndpointLemmaDischargedHere ∧
  GA.noEndpointEstimateClosedHere ∧
  GA.noExplicitFormulaClosedHere ∧
  GA.noRHClosedHere

end R2006DLeanEndpointFirstDischargeExecutionGate
