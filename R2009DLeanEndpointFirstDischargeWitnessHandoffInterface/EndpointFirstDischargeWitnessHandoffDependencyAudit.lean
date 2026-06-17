import R2009DLeanEndpointFirstDischargeWitnessHandoffInterface.EndpointFirstDischargeWitnessHandoffSlots

namespace R2009DLeanEndpointFirstDischargeWitnessHandoffInterface

open R2008DLeanEndpointFirstDischargeDryRunResultSlots
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
variable
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}


/-- Kinds of dependency audit records for R2009D witness handoff. -/
inductive EndpointFirstDischargeWitnessHandoffDependencyKind where
  | handoffInterfaceInput
  | resultAuditCarrier
  | resultSlotsCarrier
  | dryRunTraceCarrier
  | laterDischargeRunCarrier
  | nonClaimDependencyBoundary
  deriving DecidableEq, Repr

/-- One R2009D dependency-audit item. -/
structure EndpointFirstDischargeWitnessHandoffDependencyItem
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    (WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA) where
  kind : EndpointFirstDischargeWitnessHandoffDependencyKind
  itemIndex : Nat
  handoffInterfaceCarrier : Type
  resultAuditCarrier : Type
  resultSlotsCarrier : Type
  dryRunTraceCarrier : Type
  recordsDependencyOnly : Prop
  suppliesEndpointWitnessHere : Bool
  runsWitnessHandoffHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for the R2009D witness handoff interface. -/
structure EndpointFirstDischargeWitnessHandoffDependencyAudit
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    (WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA) where
  handoffInterfaceInput : EndpointFirstDischargeWitnessHandoffDependencyItem WI
  resultAuditItem : EndpointFirstDischargeWitnessHandoffDependencyItem WI
  resultSlotsItem : EndpointFirstDischargeWitnessHandoffDependencyItem WI
  dryRunTraceItem : EndpointFirstDischargeWitnessHandoffDependencyItem WI
  laterDischargeRunItem : EndpointFirstDischargeWitnessHandoffDependencyItem WI
  nonClaimDependencyBoundary : EndpointFirstDischargeWitnessHandoffDependencyItem WI
  allDependenciesRecorded : Prop
  noEndpointWitnessSuppliedHere : Prop
  noWitnessHandoffRunHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget dependency audit to the R2009D handoff interface. -/
def endpoint_first_discharge_witness_handoff_dependency_audit_to_interface
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    (_WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI) :
    MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA :=
  WI

/-- Forget dependency audit to the R2008D result slots. -/
def endpoint_first_discharge_witness_handoff_dependency_audit_to_result_slots
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    (WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI) :
    MainAnchoredEndpointFirstDischargeDryRunResultSlots TA :=
  endpoint_first_discharge_witness_handoff_interface_to_result_slots
    (endpoint_first_discharge_witness_handoff_dependency_audit_to_interface WA)

/-- Record that R2009D dependency audit also remains non-witness-supplying. -/
def endpoint_first_discharge_witness_handoff_dependency_audit_records_no_witness_here
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    (WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI) : Prop :=
  WA.nonClaimBoundary ∧
  WA.noEndpointWitnessSuppliedHere ∧
  WA.noWitnessHandoffRunHere ∧
  WA.noEndpointKernelExecutedHere ∧
  WA.noConcreteEndpointLemmaDischargedHere ∧
  WA.noEndpointEstimateClosedHere ∧
  WA.noExplicitFormulaClosedHere ∧
  WA.noRHClosedHere ∧
  endpoint_first_discharge_witness_handoff_interface_records_no_witness_here
    (endpoint_first_discharge_witness_handoff_dependency_audit_to_interface WA)

end R2009DLeanEndpointFirstDischargeWitnessHandoffInterface
