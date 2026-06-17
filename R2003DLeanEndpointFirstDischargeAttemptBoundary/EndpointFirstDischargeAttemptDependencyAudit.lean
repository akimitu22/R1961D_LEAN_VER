import R2003DLeanEndpointFirstDischargeAttemptBoundary.EndpointFirstDischargeAttemptBoundarySlots

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


/-- Dependency kinds checked at the first-discharge attempt boundary. -/
inductive EndpointFirstDischargeAttemptDependencyKind where
  | payloadPlanToAttemptBoundary
  | endpointEstimateInputToAttemptBoundary
  | proofKernelInputToAttemptBoundary
  | certificateInputToAttemptBoundary
  | auditBoundaryToAttemptBoundary
  | nonClaimBoundaryToAttemptBoundary
  deriving DecidableEq, Repr

/-- A dependency-audit row for the first-discharge attempt boundary. -/
structure EndpointFirstDischargeAttemptDependencyItem
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    (AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD) where
  kind : EndpointFirstDischargeAttemptDependencyKind
  dependencyIndex : Nat
  sourceAttemptCarrier : Type
  targetAttemptCarrier : Type
  auditWitnessCarrier : Type
  attachedToAttemptBoundary : Prop
  preservesPayloadDependencyPlan : Prop
  preservesCertificateInterface : Prop
  preservesNonClaimBoundary : Prop
  startsDischargeAttemptHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool

/-- Dependency audit for the first-discharge attempt boundary. -/
structure EndpointFirstDischargeAttemptDependencyAudit
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    (AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD) where
  payloadPlanToAttemptBoundary : EndpointFirstDischargeAttemptDependencyItem AB
  endpointEstimateInputToAttemptBoundary : EndpointFirstDischargeAttemptDependencyItem AB
  proofKernelInputToAttemptBoundary : EndpointFirstDischargeAttemptDependencyItem AB
  certificateInputToAttemptBoundary : EndpointFirstDischargeAttemptDependencyItem AB
  auditBoundaryToAttemptBoundary : EndpointFirstDischargeAttemptDependencyItem AB
  nonClaimBoundaryToAttemptBoundary : EndpointFirstDischargeAttemptDependencyItem AB
  dependencyAuditCarrier : Type
  attemptBoundaryCarrier : Type
  recordsAttemptDependencyAudit : Prop
  preservesR2002PayloadDependencyPlan : Prop
  preservesR2001CertificateInterface : Prop
  noDischargeAttemptStartedHere : Prop
  noPayloadTermSuppliedHere : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency audit to the attempt boundary. -/
def endpoint_first_discharge_attempt_dependency_audit_to_attempt_boundary
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    (_AA : EndpointFirstDischargeAttemptDependencyAudit AB) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  AB

/-- Forget the dependency audit to the R2002D payload slots. -/
def endpoint_first_discharge_attempt_dependency_audit_to_payload_slots
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    (AA : EndpointFirstDischargeAttemptDependencyAudit AB) :
    MainAnchoredEndpointFirstCertificatePayloadSlots CM :=
  endpoint_first_discharge_attempt_boundary_to_payload_slots
    (endpoint_first_discharge_attempt_dependency_audit_to_attempt_boundary AA)

/-- Record that the dependency audit does not start a discharge attempt here. -/
def endpoint_first_discharge_attempt_dependency_audit_records_no_attempt_here
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    (AA : EndpointFirstDischargeAttemptDependencyAudit AB) : Prop :=
  AA.nonClaimBoundary ∧
  AA.noDischargeAttemptStartedHere ∧
  AA.noPayloadTermSuppliedHere ∧
  AA.noCertificateTermSuppliedHere ∧
  AA.noConcreteEndpointLemmaDischargedHere ∧
  AA.noEndpointKernelExecutedHere ∧
  AA.noEndpointEstimateClosedHere ∧
  AA.noExplicitFormulaClosedHere ∧
  AA.noRHClosedHere

end R2003DLeanEndpointFirstDischargeAttemptBoundary
