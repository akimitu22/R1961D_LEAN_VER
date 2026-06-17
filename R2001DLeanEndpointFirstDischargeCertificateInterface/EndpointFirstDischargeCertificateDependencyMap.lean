import R2001DLeanEndpointFirstDischargeCertificateInterface.EndpointFirstDischargeCertificateSlots

namespace R2001DLeanEndpointFirstDischargeCertificateInterface

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


/-- Dependency kinds in the first discharge certificate interface. -/
inductive EndpointFirstDischargeCertificateDependencyKind where
  | obligationTableBeforeCertificateInterface
  | statementCertificateBeforeEndpointEstimateCertificate
  | routeCertificateBeforeEndpointEstimateCertificate
  | proofKernelBodyBeforeEndpointEstimateCertificate
  | estimateCertificateBeforeFirstDischargeCertificate
  | auditCertificateBeforeNonClaimBoundary
  | auditFirstDischargeCertificateDependencyMap
  deriving DecidableEq, Repr

/-- A dependency item in the first discharge certificate interface. -/
structure EndpointFirstDischargeCertificateDependencyItem
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) where
  kind : EndpointFirstDischargeCertificateDependencyKind
  dependencyIndex : Nat
  sourceCertificateKind : EndpointFirstDischargeCertificateKind
  targetCertificateKind : EndpointFirstDischargeCertificateKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  certificateInterfaceCarrier : Type
  sourceAttachedToCertificateInterface : Prop
  targetAttachedToCertificateInterface : Prop
  recordsDependencyOnly : Prop
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency map for the first discharge certificate interface. -/
structure EndpointFirstDischargeCertificateDependencyMap
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) where
  obligationTableBeforeCertificateInterface : EndpointFirstDischargeCertificateDependencyItem CI
  statementCertificateBeforeEndpointEstimateCertificate : EndpointFirstDischargeCertificateDependencyItem CI
  routeCertificateBeforeEndpointEstimateCertificate : EndpointFirstDischargeCertificateDependencyItem CI
  proofKernelBodyBeforeEndpointEstimateCertificate : EndpointFirstDischargeCertificateDependencyItem CI
  estimateCertificateBeforeFirstDischargeCertificate : EndpointFirstDischargeCertificateDependencyItem CI
  auditCertificateBeforeNonClaimBoundary : EndpointFirstDischargeCertificateDependencyItem CI
  auditFirstDischargeCertificateDependencyMap : EndpointFirstDischargeCertificateDependencyItem CI
  dependencyMapCarrier : Type
  certificateInterfaceCarrier : Type
  attachedToFirstDischargeCertificateInterface : Prop
  attachedToConcreteDischargeObligationTable : Prop
  allDependencyItemsRecorded : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency map to the first discharge certificate interface. -/
def endpoint_first_discharge_certificate_dependency_map_to_certificate_interface
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    (_CM : EndpointFirstDischargeCertificateDependencyMap CI) :
    MainAnchoredEndpointFirstDischargeCertificateInterface OD :=
  CI

/-- Forget the dependency map to the R2000D obligation slots. -/
def endpoint_first_discharge_certificate_dependency_map_to_obligation_slots
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    (CM : EndpointFirstDischargeCertificateDependencyMap CI) :
    MainAnchoredEndpointConcreteDischargeObligationSlots DD :=
  endpoint_first_discharge_certificate_interface_to_obligation_slots
    (endpoint_first_discharge_certificate_dependency_map_to_certificate_interface CM)

/-- Record that the dependency map does not supply a proof certificate here. -/
def endpoint_first_discharge_certificate_dependency_map_records_no_certificate_here
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    (CM : EndpointFirstDischargeCertificateDependencyMap CI) : Prop :=
  CM.nonClaimBoundary ∧
  CM.noCertificateTermSuppliedHere ∧
  CM.noConcreteEndpointLemmaDischargedHere ∧
  CM.noEndpointKernelExecutedHere ∧
  CM.noEndpointEstimateClosedHere ∧
  CM.noExplicitFormulaClosedHere ∧
  CM.noRHClosedHere

end R2001DLeanEndpointFirstDischargeCertificateInterface
