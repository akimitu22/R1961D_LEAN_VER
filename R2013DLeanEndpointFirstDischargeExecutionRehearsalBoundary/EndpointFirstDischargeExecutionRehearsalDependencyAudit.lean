import R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary.EndpointFirstDischargeExecutionRehearsalSlots

namespace R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary

open R2012DLeanEndpointFirstExecutionHandoffPayloadSlots
open R2011DLeanEndpointFirstDischargeExecutionHandoffBoundary
open R2010DLeanEndpointFirstWitnessValidationSlots
open R2009DLeanEndpointFirstDischargeWitnessHandoffInterface
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
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    {WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI}
    {VS : MainAnchoredEndpointFirstWitnessValidationSlots WA}
    {VA : EndpointFirstWitnessValidationDependencyAudit VS}
    {EB : MainAnchoredEndpointFirstDischargeExecutionHandoffBoundary VA}
    {EA : EndpointFirstDischargeExecutionHandoffDependencyAudit EB}

variable
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}


/-- Kinds of dependency-audit records for R2013D rehearsal boundary. -/
inductive EndpointFirstDischargeExecutionRehearsalDependencyKind where
  | rehearsalBoundaryInput
  | payloadAuditCarrier
  | payloadSlotsCarrier
  | executionHandoffBoundaryCarrier
  | laterProofKernelInvocationCarrier
  | nonClaimDependencyBoundary
  deriving DecidableEq, Repr

/-- One dependency-audit item for R2013D. -/
structure EndpointFirstDischargeExecutionRehearsalDependencyItem
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    (RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA) where
  kind : EndpointFirstDischargeExecutionRehearsalDependencyKind
  itemIndex : Nat
  rehearsalBoundaryCarrier : Type
  payloadAuditCarrier : Type
  payloadSlotsCarrier : Type
  executionHandoffBoundaryCarrier : Type
  recordsDependencyOnly : Prop
  runsExecutionRehearsalHere : Bool
  suppliesPayloadTermHere : Bool
  validatesEndpointWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for R2013D rehearsal boundary. -/
structure EndpointFirstDischargeExecutionRehearsalDependencyAudit
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    (RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA) where
  rehearsalBoundaryInput : EndpointFirstDischargeExecutionRehearsalDependencyItem RB
  payloadAuditItem : EndpointFirstDischargeExecutionRehearsalDependencyItem RB
  payloadSlotsItem : EndpointFirstDischargeExecutionRehearsalDependencyItem RB
  executionHandoffBoundaryItem : EndpointFirstDischargeExecutionRehearsalDependencyItem RB
  laterProofKernelInvocationItem : EndpointFirstDischargeExecutionRehearsalDependencyItem RB
  nonClaimDependencyBoundary : EndpointFirstDischargeExecutionRehearsalDependencyItem RB
  allDependenciesRecorded : Prop
  noExecutionRehearsalRunHere : Prop
  noPayloadTermSuppliedHere : Prop
  noEndpointWitnessValidatedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget dependency audit to the R2013D rehearsal boundary. -/
def endpoint_first_discharge_execution_rehearsal_dependency_audit_to_boundary
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    {RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    (_RA : EndpointFirstDischargeExecutionRehearsalDependencyAudit RB) :
    MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA :=
  RB

/-- Forget dependency audit to the R2012D payload slots. -/
def endpoint_first_discharge_execution_rehearsal_dependency_audit_to_payload_slots
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    {RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    (RA : EndpointFirstDischargeExecutionRehearsalDependencyAudit RB) :
    MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA :=
  endpoint_first_discharge_execution_rehearsal_boundary_to_payload_slots
    (endpoint_first_discharge_execution_rehearsal_dependency_audit_to_boundary RA)

/-- Record that R2013D dependency audit remains non-executing. -/
def endpoint_first_discharge_execution_rehearsal_dependency_audit_records_no_execution_here
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    {RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    (RA : EndpointFirstDischargeExecutionRehearsalDependencyAudit RB) : Prop :=
  RA.nonClaimBoundary ∧
  RA.noExecutionRehearsalRunHere ∧
  RA.noPayloadTermSuppliedHere ∧
  RA.noEndpointWitnessValidatedHere ∧
  RA.noEndpointKernelExecutedHere ∧
  RA.noConcreteEndpointLemmaDischargedHere ∧
  RA.noEndpointEstimateClosedHere ∧
  RA.noExplicitFormulaClosedHere ∧
  RA.noRHClosedHere ∧
  endpoint_first_discharge_execution_rehearsal_boundary_records_no_execution_here
    (endpoint_first_discharge_execution_rehearsal_dependency_audit_to_boundary RA)

end R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary
