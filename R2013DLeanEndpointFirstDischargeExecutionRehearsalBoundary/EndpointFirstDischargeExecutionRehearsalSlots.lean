import R2012DLeanEndpointFirstExecutionHandoffPayloadSlots

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


/-- Stages in the first-discharge execution rehearsal boundary layer. -/
inductive EndpointFirstDischargeExecutionRehearsalStage where
  | inheritPayloadAudit
  | bindRehearsalHeader
  | bindPayloadReadinessSlot
  | bindWitnessReadinessSlot
  | bindLaterProofKernelInvocationBoundary
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of first-discharge execution rehearsal records. -/
inductive EndpointFirstDischargeExecutionRehearsalKind where
  | payloadAuditInput
  | rehearsalHeaderCarrier
  | payloadReadinessSlot
  | witnessReadinessSlot
  | laterProofKernelInvocationBoundary
  | nonClaimRehearsalBoundary
  deriving DecidableEq, Repr

/-- A rehearsal boundary item before any proof-kernel execution. -/
structure EndpointFirstDischargeExecutionRehearsalItem
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    (HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS) where
  kind : EndpointFirstDischargeExecutionRehearsalKind
  itemIndex : Nat
  payloadAuditCarrier : Type
  payloadSlotsCarrier : Type
  executionHandoffBoundaryCarrier : Type
  rehearsalHeaderCarrier : Type
  payloadReadinessCarrier : Type
  witnessReadinessCarrier : Type
  laterProofKernelInvocationCarrier : Type
  attachedToPayloadAudit : Prop
  attachedToPayloadSlots : Prop
  recordsRehearsalBoundaryOnly : Prop
  runsExecutionRehearsalHere : Bool
  suppliesPayloadTermHere : Bool
  validatesEndpointWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First-discharge execution rehearsal boundary, still before execution. -/
structure MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    (HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS) where
  stage : EndpointFirstDischargeExecutionRehearsalStage
  primaryRehearsalKind : EndpointFirstDischargeExecutionRehearsalKind
  payloadAuditInput : EndpointFirstDischargeExecutionRehearsalItem HA
  rehearsalHeaderSlot : EndpointFirstDischargeExecutionRehearsalItem HA
  payloadReadinessSlot : EndpointFirstDischargeExecutionRehearsalItem HA
  witnessReadinessSlot : EndpointFirstDischargeExecutionRehearsalItem HA
  laterProofKernelInvocationBoundary : EndpointFirstDischargeExecutionRehearsalItem HA
  nonClaimRehearsalBoundary : EndpointFirstDischargeExecutionRehearsalItem HA
  rehearsalBoundaryCarrier : Type
  payloadAuditCarrier : Type
  payloadSlotsCarrier : Type
  executionHandoffBoundaryCarrier : Type
  rehearsalHeaderRecorded : Prop
  payloadReadinessSlotRecorded : Prop
  witnessReadinessSlotRecorded : Prop
  laterProofKernelInvocationBoundaryRecorded : Prop
  allRehearsalItemsRecorded : Prop
  noExecutionRehearsalRunHere : Prop
  noPayloadTermSuppliedHere : Prop
  noEndpointWitnessValidatedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget rehearsal boundary to the R2012D payload dependency audit. -/
def endpoint_first_discharge_execution_rehearsal_boundary_to_payload_dependency_audit
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    (_RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA) :
    EndpointFirstExecutionHandoffPayloadDependencyAudit HS :=
  HA

/-- Forget rehearsal boundary to the R2012D payload slots. -/
def endpoint_first_discharge_execution_rehearsal_boundary_to_payload_slots
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    (RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA) :
    MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA :=
  endpoint_first_execution_handoff_payload_dependency_audit_to_slots
    (endpoint_first_discharge_execution_rehearsal_boundary_to_payload_dependency_audit RB)

/-- Forget rehearsal boundary to the R2011D execution handoff boundary. -/
def endpoint_first_discharge_execution_rehearsal_boundary_to_execution_handoff_boundary
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    (RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA) :
    MainAnchoredEndpointFirstDischargeExecutionHandoffBoundary VA :=
  endpoint_first_execution_handoff_payload_slots_to_execution_handoff_boundary
    (endpoint_first_discharge_execution_rehearsal_boundary_to_payload_slots RB)

/-- Record that the rehearsal boundary does not execute here. -/
def endpoint_first_discharge_execution_rehearsal_boundary_records_no_execution_here
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    (RB : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA) : Prop :=
  RB.nonClaimBoundary ∧
  RB.noExecutionRehearsalRunHere ∧
  RB.noPayloadTermSuppliedHere ∧
  RB.noEndpointWitnessValidatedHere ∧
  RB.noEndpointKernelExecutedHere ∧
  RB.noConcreteEndpointLemmaDischargedHere ∧
  RB.noEndpointEstimateClosedHere ∧
  RB.noExplicitFormulaClosedHere ∧
  RB.noRHClosedHere

end R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary
