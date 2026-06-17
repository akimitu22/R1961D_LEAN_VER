import R2002DLeanEndpointFirstCertificatePayloadSlots.EndpointFirstCertificatePayloadSlots

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


/-- Dependency kinds among first-certificate payload slots. -/
inductive EndpointFirstCertificatePayloadDependencyKind where
  | certificateInterfaceToPayloadSlots
  | endpointEstimatePayloadToCertificateSlot
  | boundaryErrorPayloadToEndpointEstimatePayload
  | remainderUniformityPayloadToBoundaryErrorPayload
  | signTransferPayloadToRemainderUniformityPayload
  | auditPayloadToAllPayloadSlots
  | nonClaimBoundaryToPayloadSlots
  deriving DecidableEq, Repr

/-- A dependency row for payload slots. -/
structure EndpointFirstCertificatePayloadDependencyItem
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    (PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM) where
  kind : EndpointFirstCertificatePayloadDependencyKind
  dependencyIndex : Nat
  sourcePayloadCarrier : Type
  targetPayloadCarrier : Type
  dependencyWitnessCarrier : Type
  attachedToPayloadSlots : Prop
  preservesCertificateInterface : Prop
  preservesNonClaimBoundary : Prop
  suppliesPayloadTermHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool

/-- Dependency plan for first-certificate payload slots. -/
structure EndpointFirstCertificatePayloadDependencyPlan
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    (PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM) where
  certificateInterfaceToPayloadSlots : EndpointFirstCertificatePayloadDependencyItem PS
  endpointEstimatePayloadToCertificateSlot : EndpointFirstCertificatePayloadDependencyItem PS
  boundaryErrorPayloadToEndpointEstimatePayload : EndpointFirstCertificatePayloadDependencyItem PS
  remainderUniformityPayloadToBoundaryErrorPayload : EndpointFirstCertificatePayloadDependencyItem PS
  signTransferPayloadToRemainderUniformityPayload : EndpointFirstCertificatePayloadDependencyItem PS
  auditPayloadToAllPayloadSlots : EndpointFirstCertificatePayloadDependencyItem PS
  nonClaimBoundaryToPayloadSlots : EndpointFirstCertificatePayloadDependencyItem PS
  dependencyPlanCarrier : Type
  payloadSlotsCarrier : Type
  recordsPayloadDependencyPlan : Prop
  preservesR2001CertificateInterface : Prop
  preservesR2000ConcreteDischargeObligationSlots : Prop
  noPayloadTermSuppliedHere : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the payload slots. -/
def endpoint_first_certificate_payload_dependency_plan_to_payload_slots
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    (_PD : EndpointFirstCertificatePayloadDependencyPlan PS) :
    MainAnchoredEndpointFirstCertificatePayloadSlots CM :=
  PS

/-- Forget the dependency plan to the R2001D certificate dependency map. -/
def endpoint_first_certificate_payload_dependency_plan_to_certificate_dependency_map
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    (PD : EndpointFirstCertificatePayloadDependencyPlan PS) :
    EndpointFirstDischargeCertificateDependencyMap CI :=
  endpoint_first_certificate_payload_slots_to_certificate_dependency_map
    (endpoint_first_certificate_payload_dependency_plan_to_payload_slots PD)

/-- Record that the payload dependency plan is not a payload/proof term. -/
def endpoint_first_certificate_payload_dependency_plan_records_no_payload_here
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    (PD : EndpointFirstCertificatePayloadDependencyPlan PS) : Prop :=
  PD.nonClaimBoundary ∧
  PD.noPayloadTermSuppliedHere ∧
  PD.noCertificateTermSuppliedHere ∧
  PD.noConcreteEndpointLemmaDischargedHere ∧
  PD.noEndpointKernelExecutedHere ∧
  PD.noEndpointEstimateClosedHere ∧
  PD.noExplicitFormulaClosedHere ∧
  PD.noRHClosedHere

end R2002DLeanEndpointFirstCertificatePayloadSlots
