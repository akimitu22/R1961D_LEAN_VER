import R2002DLeanEndpointFirstCertificatePayloadSlots

namespace R2003DLeanEndpointFirstDischargeAttemptBoundary

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


/-- Stages in the first-discharge attempt-boundary layer. -/
inductive EndpointFirstDischargeAttemptBoundaryStage where
  | inheritPayloadDependencyPlan
  | bindAttemptInputBoundary
  | bindAttemptKernelBoundary
  | bindAttemptCertificateBoundary
  | bindAttemptAuditBoundary
  | recordNoAttemptBoundary
  deriving DecidableEq, Repr

/-- Kinds of first-discharge attempt-boundary slots. -/
inductive EndpointFirstDischargeAttemptBoundaryKind where
  | payloadDependencyPlanInput
  | endpointEstimateAttemptInput
  | proofKernelAttemptInput
  | certificateAttemptInput
  | dischargeAuditBoundary
  | firstConcreteDischargeAttemptBoundary
  | nonClaimAttemptBoundary
  deriving DecidableEq, Repr

/-- A boundary slot for a later first concrete discharge attempt. -/
structure EndpointFirstDischargeAttemptBoundaryItem
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    (PD : EndpointFirstCertificatePayloadDependencyPlan PS) where
  kind : EndpointFirstDischargeAttemptBoundaryKind
  itemIndex : Nat
  payloadDependencyPlanCarrier : Type
  payloadSlotsCarrier : Type
  attemptInputCarrier : Type
  proofKernelAttemptCarrier : Type
  certificateAttemptCarrier : Type
  dischargeAuditCarrier : Type
  laterDischargeAttemptCarrier : Type
  attachedToPayloadDependencyPlan : Prop
  attachedToCertificateInterface : Prop
  recordsAttemptBoundaryOnly : Prop
  readyForLaterDischargeAttempt : Prop
  startsDischargeAttemptHere : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First concrete-discharge attempt boundary.

This layer marks the boundary where a later concrete discharge attempt may begin.
It does not start that attempt, execute the proof kernel, or prove the endpoint estimate.
-/
structure MainAnchoredEndpointFirstDischargeAttemptBoundary
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    (PD : EndpointFirstCertificatePayloadDependencyPlan PS) where
  stage : EndpointFirstDischargeAttemptBoundaryStage
  primaryAttemptKind : EndpointFirstDischargeAttemptBoundaryKind
  payloadDependencyPlanInput : EndpointFirstDischargeAttemptBoundaryItem PD
  endpointEstimateAttemptInput : EndpointFirstDischargeAttemptBoundaryItem PD
  proofKernelAttemptInput : EndpointFirstDischargeAttemptBoundaryItem PD
  certificateAttemptInput : EndpointFirstDischargeAttemptBoundaryItem PD
  dischargeAuditBoundary : EndpointFirstDischargeAttemptBoundaryItem PD
  firstConcreteDischargeAttemptBoundary : EndpointFirstDischargeAttemptBoundaryItem PD
  nonClaimAttemptBoundary : EndpointFirstDischargeAttemptBoundaryItem PD
  attemptBoundaryCarrier : Type
  payloadDependencyPlanCarrier : Type
  certificatePayloadCarrier : Type
  certificateInterfaceCarrier : Type
  attachedToR2002PayloadDependencyPlan : Prop
  attachedToR2001CertificateInterface : Prop
  endpointEstimateAttemptInputRecorded : Prop
  proofKernelAttemptInputRecorded : Prop
  certificateAttemptInputRecorded : Prop
  dischargeAuditBoundaryRecorded : Prop
  firstConcreteDischargeAttemptBoundaryRecorded : Prop
  allAttemptBoundaryItemsRecorded : Prop
  noDischargeAttemptStartedHere : Prop
  noPayloadTermSuppliedHere : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the attempt boundary to the R2002D payload dependency plan. -/
def endpoint_first_discharge_attempt_boundary_to_payload_dependency_plan
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    (_AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD) :
    EndpointFirstCertificatePayloadDependencyPlan PS :=
  PD

/-- Forget the attempt boundary to the R2002D payload slots. -/
def endpoint_first_discharge_attempt_boundary_to_payload_slots
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    (AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD) :
    MainAnchoredEndpointFirstCertificatePayloadSlots CM :=
  endpoint_first_certificate_payload_dependency_plan_to_payload_slots
    (endpoint_first_discharge_attempt_boundary_to_payload_dependency_plan AB)

/-- Forget the attempt boundary to the R2001D certificate interface. -/
def endpoint_first_discharge_attempt_boundary_to_certificate_interface
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    (AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD) :
    MainAnchoredEndpointFirstDischargeCertificateInterface OD :=
  endpoint_first_certificate_payload_slots_to_certificate_interface
    (endpoint_first_discharge_attempt_boundary_to_payload_slots AB)

/-- Record that the boundary does not start a discharge attempt here. -/
def endpoint_first_discharge_attempt_boundary_records_no_attempt_here
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    (AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD) : Prop :=
  AB.nonClaimBoundary ∧
  AB.noDischargeAttemptStartedHere ∧
  AB.noPayloadTermSuppliedHere ∧
  AB.noCertificateTermSuppliedHere ∧
  AB.noConcreteEndpointLemmaDischargedHere ∧
  AB.noEndpointKernelExecutedHere ∧
  AB.noEndpointEstimateClosedHere ∧
  AB.noExplicitFormulaClosedHere ∧
  AB.noRHClosedHere

end R2003DLeanEndpointFirstDischargeAttemptBoundary
