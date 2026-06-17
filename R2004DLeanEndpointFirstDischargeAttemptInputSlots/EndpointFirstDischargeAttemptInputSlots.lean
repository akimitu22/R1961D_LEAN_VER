import R2003DLeanEndpointFirstDischargeAttemptBoundary

namespace R2004DLeanEndpointFirstDischargeAttemptInputSlots

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


/-- Stages in the first-discharge attempt-input layer. -/
inductive EndpointFirstDischargeAttemptInputStage where
  | inheritAttemptDependencyAudit
  | bindEndpointEstimateInput
  | bindProofKernelInput
  | bindCertificateInput
  | bindAuditInput
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of attempt-input slots. -/
inductive EndpointFirstDischargeAttemptInputKind where
  | attemptDependencyAuditInput
  | endpointEstimateInputSlot
  | proofKernelInputSlot
  | certificateInputSlot
  | dischargeAuditInputSlot
  | laterExecutionInputSlot
  | nonClaimInputBoundary
  deriving DecidableEq, Repr

/-- An input slot for a later first-discharge execution attempt. -/
structure EndpointFirstDischargeAttemptInputItem
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    (AA : EndpointFirstDischargeAttemptDependencyAudit AB) where
  kind : EndpointFirstDischargeAttemptInputKind
  itemIndex : Nat
  attemptDependencyAuditCarrier : Type
  attemptBoundaryCarrier : Type
  endpointEstimateInputCarrier : Type
  proofKernelInputCarrier : Type
  certificateInputCarrier : Type
  dischargeAuditInputCarrier : Type
  laterExecutionCarrier : Type
  attachedToAttemptDependencyAudit : Prop
  attachedToAttemptBoundary : Prop
  recordsInputOnly : Prop
  readyForLaterExecutionPrecheck : Prop
  startsDischargeAttemptHere : Bool
  suppliesPayloadTermHere : Bool
  suppliesCertificateTermHere : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First-discharge attempt-input slots.

This layer records concrete input positions for a later execution precheck.  It
still does not start the discharge attempt or execute the endpoint proof kernel.
-/
structure MainAnchoredEndpointFirstDischargeAttemptInputSlots
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    (AA : EndpointFirstDischargeAttemptDependencyAudit AB) where
  stage : EndpointFirstDischargeAttemptInputStage
  primaryInputKind : EndpointFirstDischargeAttemptInputKind
  attemptDependencyAuditInput : EndpointFirstDischargeAttemptInputItem AA
  endpointEstimateInputSlot : EndpointFirstDischargeAttemptInputItem AA
  proofKernelInputSlot : EndpointFirstDischargeAttemptInputItem AA
  certificateInputSlot : EndpointFirstDischargeAttemptInputItem AA
  dischargeAuditInputSlot : EndpointFirstDischargeAttemptInputItem AA
  laterExecutionInputSlot : EndpointFirstDischargeAttemptInputItem AA
  nonClaimInputBoundary : EndpointFirstDischargeAttemptInputItem AA
  inputSlotsCarrier : Type
  attemptDependencyAuditCarrier : Type
  attemptBoundaryCarrier : Type
  endpointEstimateInputRecorded : Prop
  proofKernelInputRecorded : Prop
  certificateInputRecorded : Prop
  dischargeAuditInputRecorded : Prop
  allAttemptInputSlotsRecorded : Prop
  noDischargeAttemptStartedHere : Prop
  noPayloadTermSuppliedHere : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the attempt-input slots to the R2003D dependency audit. -/
def endpoint_first_discharge_attempt_input_slots_to_attempt_dependency_audit
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    (_IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA) :
    EndpointFirstDischargeAttemptDependencyAudit AB :=
  AA

/-- Forget the attempt-input slots to the R2003D attempt boundary. -/
def endpoint_first_discharge_attempt_input_slots_to_attempt_boundary
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    (IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_attempt_dependency_audit_to_attempt_boundary
    (endpoint_first_discharge_attempt_input_slots_to_attempt_dependency_audit IS)

/-- Record that the input-slot layer does not execute or discharge here. -/
def endpoint_first_discharge_attempt_input_slots_records_no_execution_here
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    (IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA) : Prop :=
  IS.nonClaimBoundary ∧
  IS.noDischargeAttemptStartedHere ∧
  IS.noPayloadTermSuppliedHere ∧
  IS.noCertificateTermSuppliedHere ∧
  IS.noConcreteEndpointLemmaProofSuppliedHere ∧
  IS.noConcreteEndpointLemmaDischargedHere ∧
  IS.noEndpointKernelExecutedHere ∧
  IS.noEndpointEstimateClosedHere ∧
  IS.noExplicitFormulaClosedHere ∧
  IS.noRHClosedHere

end R2004DLeanEndpointFirstDischargeAttemptInputSlots
