import R2009DLeanEndpointFirstDischargeWitnessHandoffInterface

namespace R2010DLeanEndpointFirstWitnessValidationSlots

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


/-- Stages in the first-witness validation slot layer. -/
inductive EndpointFirstWitnessValidationStage where
  | inheritWitnessHandoffAudit
  | bindValidationHeader
  | bindWitnessShapeSlot
  | bindCertificateShapeSlot
  | bindLaterExecutionHandoffBoundary
  | recordNoValidationBoundary
  deriving DecidableEq, Repr

/-- Kinds of first-witness validation records. -/
inductive EndpointFirstWitnessValidationKind where
  | witnessHandoffAuditInput
  | validationHeaderCarrier
  | witnessShapeSlot
  | certificateShapeSlot
  | laterExecutionHandoffBoundary
  | nonClaimValidationBoundary
  deriving DecidableEq, Repr

/-- A witness validation slot item before any witness is actually validated. -/
structure EndpointFirstWitnessValidationItem
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    (WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI) where
  kind : EndpointFirstWitnessValidationKind
  itemIndex : Nat
  witnessHandoffAuditCarrier : Type
  witnessHandoffInterfaceCarrier : Type
  dryRunResultSlotsCarrier : Type
  validationHeaderCarrier : Type
  witnessShapeCarrier : Type
  certificateShapeCarrier : Type
  laterExecutionHandoffCarrier : Type
  attachedToWitnessHandoffAudit : Prop
  attachedToWitnessHandoffInterface : Prop
  recordsValidationSlotOnly : Prop
  validatesEndpointWitnessHere : Bool
  suppliesEndpointWitnessHere : Bool
  startsDischargeAttemptHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First-witness validation slots, still before any witness validation. -/
structure MainAnchoredEndpointFirstWitnessValidationSlots
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    (WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI) where
  stage : EndpointFirstWitnessValidationStage
  primaryValidationKind : EndpointFirstWitnessValidationKind
  witnessHandoffAuditInput : EndpointFirstWitnessValidationItem WA
  validationHeaderSlot : EndpointFirstWitnessValidationItem WA
  witnessShapeSlot : EndpointFirstWitnessValidationItem WA
  certificateShapeSlot : EndpointFirstWitnessValidationItem WA
  laterExecutionHandoffBoundary : EndpointFirstWitnessValidationItem WA
  nonClaimValidationBoundary : EndpointFirstWitnessValidationItem WA
  validationSlotCarrier : Type
  witnessHandoffAuditCarrier : Type
  witnessHandoffInterfaceCarrier : Type
  dryRunResultSlotsCarrier : Type
  validationHeaderRecorded : Prop
  witnessShapeSlotRecorded : Prop
  certificateShapeSlotRecorded : Prop
  laterExecutionHandoffBoundaryRecorded : Prop
  allValidationItemsRecorded : Prop
  noEndpointWitnessValidatedHere : Prop
  noEndpointWitnessSuppliedHere : Prop
  noDischargeAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget validation slots to the R2009D witness handoff dependency audit. -/
def endpoint_first_witness_validation_slots_to_witness_handoff_dependency_audit
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    {WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI}
    (_VS : MainAnchoredEndpointFirstWitnessValidationSlots WA) :
    EndpointFirstDischargeWitnessHandoffDependencyAudit WI :=
  WA

/-- Forget validation slots to the R2009D witness handoff interface. -/
def endpoint_first_witness_validation_slots_to_witness_handoff_interface
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    {WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI}
    (VS : MainAnchoredEndpointFirstWitnessValidationSlots WA) :
    MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA :=
  endpoint_first_discharge_witness_handoff_dependency_audit_to_interface
    (endpoint_first_witness_validation_slots_to_witness_handoff_dependency_audit VS)

/-- Forget validation slots to the R2008D dry-run result slots. -/
def endpoint_first_witness_validation_slots_to_dry_run_result_slots
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    {WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI}
    (VS : MainAnchoredEndpointFirstWitnessValidationSlots WA) :
    MainAnchoredEndpointFirstDischargeDryRunResultSlots TA :=
  endpoint_first_discharge_witness_handoff_interface_to_result_slots
    (endpoint_first_witness_validation_slots_to_witness_handoff_interface VS)

/-- Record that the validation-slot layer does not validate or execute here. -/
def endpoint_first_witness_validation_slots_records_no_validation_here
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    {WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI}
    (VS : MainAnchoredEndpointFirstWitnessValidationSlots WA) : Prop :=
  VS.nonClaimBoundary ∧
  VS.noEndpointWitnessValidatedHere ∧
  VS.noEndpointWitnessSuppliedHere ∧
  VS.noDischargeAttemptStartedHere ∧
  VS.noEndpointKernelExecutedHere ∧
  VS.noConcreteEndpointLemmaDischargedHere ∧
  VS.noEndpointEstimateClosedHere ∧
  VS.noExplicitFormulaClosedHere ∧
  VS.noRHClosedHere

end R2010DLeanEndpointFirstWitnessValidationSlots
