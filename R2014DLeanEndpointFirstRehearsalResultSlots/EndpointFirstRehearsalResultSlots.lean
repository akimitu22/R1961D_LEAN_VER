import R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary

namespace R2014DLeanEndpointFirstRehearsalResultSlots

open R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary
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
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}


/-- Stages in the first-discharge rehearsal-result slot layer. -/
inductive EndpointFirstRehearsalResultStage where
  | inheritRehearsalAudit
  | bindResultHeader
  | bindPayloadResultSlot
  | bindWitnessResultSlot
  | bindLaterExecutionWitnessPacketBoundary
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of rehearsal-result slot records. -/
inductive EndpointFirstRehearsalResultKind where
  | rehearsalAuditInput
  | resultHeaderCarrier
  | payloadResultSlot
  | witnessResultSlot
  | laterExecutionWitnessPacketBoundary
  | nonClaimResultBoundary
  deriving DecidableEq, Repr

/-- One rehearsal-result slot item before any endpoint proof-kernel execution. -/
structure EndpointFirstRehearsalResultItem
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    (REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH) where
  kind : EndpointFirstRehearsalResultKind
  itemIndex : Nat
  rehearsalAuditCarrier : Type
  rehearsalBoundaryCarrier : Type
  resultHeaderCarrier : Type
  payloadResultCarrier : Type
  witnessResultCarrier : Type
  laterWitnessPacketCarrier : Type
  attachedToRehearsalAudit : Prop
  attachedToRehearsalBoundary : Prop
  recordsResultSlotsOnly : Prop
  materializesDryRunResultHere : Bool
  suppliesExecutionWitnessHere : Bool
  runsExecutionRehearsalHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Rehearsal-result slots, still only a carrier layer. -/
structure MainAnchoredEndpointFirstRehearsalResultSlots
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    (REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH) where
  stage : EndpointFirstRehearsalResultStage
  primaryResultKind : EndpointFirstRehearsalResultKind
  rehearsalAuditInput : EndpointFirstRehearsalResultItem REA
  resultHeaderSlot : EndpointFirstRehearsalResultItem REA
  payloadResultSlot : EndpointFirstRehearsalResultItem REA
  witnessResultSlot : EndpointFirstRehearsalResultItem REA
  laterExecutionWitnessPacketBoundary : EndpointFirstRehearsalResultItem REA
  nonClaimResultBoundary : EndpointFirstRehearsalResultItem REA
  resultSlotCarrier : Type
  rehearsalAuditCarrier : Type
  rehearsalBoundaryCarrier : Type
  resultHeaderRecorded : Prop
  payloadResultSlotRecorded : Prop
  witnessResultSlotRecorded : Prop
  laterExecutionWitnessPacketBoundaryRecorded : Prop
  allResultSlotsRecorded : Prop
  noDryRunResultMaterializedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noExecutionRehearsalRunHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget result slots to the R2013D rehearsal dependency audit. -/
def endpoint_first_rehearsal_result_slots_to_rehearsal_dependency_audit
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    (_RS : MainAnchoredEndpointFirstRehearsalResultSlots REA) :
    EndpointFirstDischargeExecutionRehearsalDependencyAudit REH :=
  REA

/-- Forget result slots to the R2013D rehearsal boundary. -/
def endpoint_first_rehearsal_result_slots_to_rehearsal_boundary
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    (RS : MainAnchoredEndpointFirstRehearsalResultSlots REA) :
    MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA :=
  endpoint_first_discharge_execution_rehearsal_dependency_audit_to_boundary
    (endpoint_first_rehearsal_result_slots_to_rehearsal_dependency_audit RS)

/-- Record that R2014D does not materialize execution data or execute here. -/
def endpoint_first_rehearsal_result_slots_records_no_execution_here
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    (RS : MainAnchoredEndpointFirstRehearsalResultSlots REA) : Prop :=
  RS.nonClaimBoundary ∧
  RS.noDryRunResultMaterializedHere ∧
  RS.noExecutionWitnessSuppliedHere ∧
  RS.noExecutionRehearsalRunHere ∧
  RS.noEndpointKernelExecutedHere ∧
  RS.noConcreteEndpointLemmaDischargedHere ∧
  RS.noEndpointEstimateClosedHere ∧
  RS.noExplicitFormulaClosedHere ∧
  RS.noRHClosedHere ∧
  endpoint_first_discharge_execution_rehearsal_dependency_audit_records_no_execution_here
    (endpoint_first_rehearsal_result_slots_to_rehearsal_dependency_audit RS)

end R2014DLeanEndpointFirstRehearsalResultSlots
