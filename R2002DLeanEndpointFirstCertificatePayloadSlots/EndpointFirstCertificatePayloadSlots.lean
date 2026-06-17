import R2001DLeanEndpointFirstDischargeCertificateInterface

namespace R2002DLeanEndpointFirstCertificatePayloadSlots

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


/-- Stages in the first-certificate payload-slot layer. -/
inductive EndpointFirstCertificatePayloadStage where
  | inheritFirstDischargeCertificateInterface
  | bindEndpointEstimatePayload
  | bindBoundaryErrorPayload
  | bindRemainderUniformityPayload
  | bindSignTransferPayload
  | bindAuditPayload
  | recordNoPayloadBoundary
  deriving DecidableEq, Repr

/-- Kinds of payload slots for a later first discharge certificate. -/
inductive EndpointFirstCertificatePayloadKind where
  | certificateDependencyMapInput
  | endpointEstimatePayload
  | boundaryErrorPayload
  | remainderUniformityPayload
  | signTransferPayload
  | explicitFormulaPayloadHook
  | auditPayload
  | nonClaimPayloadBoundary
  deriving DecidableEq, Repr

/-- A payload slot for a later first certificate. -/
structure EndpointFirstCertificatePayloadItem
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    (CM : EndpointFirstDischargeCertificateDependencyMap CI) where
  kind : EndpointFirstCertificatePayloadKind
  itemIndex : Nat
  certificateDependencyMapCarrier : Type
  certificateInterfaceCarrier : Type
  endpointEstimatePayloadCarrier : Type
  boundaryErrorPayloadCarrier : Type
  remainderUniformityPayloadCarrier : Type
  signTransferPayloadCarrier : Type
  auditPayloadCarrier : Type
  laterProofTermCarrier : Type
  attachedToCertificateInterface : Prop
  attachedToConcreteDischargeObligationSlots : Prop
  recordsPayloadOnly : Prop
  readyForLaterPayloadTerm : Prop
  suppliesPayloadTermHere : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First-certificate payload slots.

This layer records the payload carriers that a later first discharge certificate
may use.  No payload term or proof certificate is supplied here.
-/
structure MainAnchoredEndpointFirstCertificatePayloadSlots
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    (CM : EndpointFirstDischargeCertificateDependencyMap CI) where
  stage : EndpointFirstCertificatePayloadStage
  primaryPayloadKind : EndpointFirstCertificatePayloadKind
  certificateDependencyMapInput : EndpointFirstCertificatePayloadItem CM
  endpointEstimatePayload : EndpointFirstCertificatePayloadItem CM
  boundaryErrorPayload : EndpointFirstCertificatePayloadItem CM
  remainderUniformityPayload : EndpointFirstCertificatePayloadItem CM
  signTransferPayload : EndpointFirstCertificatePayloadItem CM
  explicitFormulaPayloadHook : EndpointFirstCertificatePayloadItem CM
  auditPayload : EndpointFirstCertificatePayloadItem CM
  nonClaimPayloadBoundary : EndpointFirstCertificatePayloadItem CM
  payloadSlotsCarrier : Type
  certificateInterfaceCarrier : Type
  certificateDependencyMapCarrier : Type
  concreteDischargeObligationCarrier : Type
  attachedToR2001CertificateInterface : Prop
  attachedToR2000ConcreteDischargeObligationSlots : Prop
  endpointEstimatePayloadRecorded : Prop
  boundaryErrorPayloadRecorded : Prop
  remainderUniformityPayloadRecorded : Prop
  signTransferPayloadRecorded : Prop
  explicitFormulaPayloadHookRecorded : Prop
  auditPayloadRecorded : Prop
  allPayloadSlotsRecorded : Prop
  noPayloadTermSuppliedHere : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget payload slots to the R2001D certificate dependency map. -/
def endpoint_first_certificate_payload_slots_to_certificate_dependency_map
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    (_PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM) :
    EndpointFirstDischargeCertificateDependencyMap CI :=
  CM

/-- Forget payload slots to the R2001D certificate interface. -/
def endpoint_first_certificate_payload_slots_to_certificate_interface
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    (PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM) :
    MainAnchoredEndpointFirstDischargeCertificateInterface OD :=
  endpoint_first_discharge_certificate_dependency_map_to_certificate_interface
    (endpoint_first_certificate_payload_slots_to_certificate_dependency_map PS)

/-- Record that payload slots do not supply a payload/proof term here. -/
def endpoint_first_certificate_payload_slots_records_no_payload_here
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    (PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM) : Prop :=
  PS.nonClaimBoundary ∧
  PS.noPayloadTermSuppliedHere ∧
  PS.noCertificateTermSuppliedHere ∧
  PS.noConcreteEndpointLemmaDischargedHere ∧
  PS.noEndpointKernelExecutedHere ∧
  PS.noEndpointEstimateClosedHere ∧
  PS.noExplicitFormulaClosedHere ∧
  PS.noRHClosedHere

end R2002DLeanEndpointFirstCertificatePayloadSlots
