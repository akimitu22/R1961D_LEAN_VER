import R2000DLeanEndpointConcreteDischargeObligationSlots

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


/-- Stages in the first discharge certificate-interface layer. -/
inductive EndpointFirstDischargeCertificateStage where
  | inheritConcreteDischargeObligationTable
  | bindCertificateCarrier
  | bindCertificateInputs
  | bindAuditCertificate
  | bindNonClaimCertificate
  | bindLaterDischargeHook
  | recordNoCertificateBoundary
  deriving DecidableEq, Repr

/-- Kinds of certificate-interface slots for a later first discharge certificate. -/
inductive EndpointFirstDischargeCertificateKind where
  | concreteDischargeObligationTableInput
  | endpointStatementCertificateInput
  | endpointRouteCertificateInput
  | proofKernelBodyCertificateInput
  | endpointEstimateCertificateCarrier
  | auditCertificateCarrier
  | firstDischargeCertificateSlot
  | nonClaimCertificateBoundary
  deriving DecidableEq, Repr

/-- A slot in the first discharge certificate interface. -/
structure EndpointFirstDischargeCertificateItem
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    (OD : EndpointConcreteDischargeObligationDependencyTable OS) where
  kind : EndpointFirstDischargeCertificateKind
  itemIndex : Nat
  obligationTableCarrier : Type
  obligationSlotCarrier : Type
  dischargeInterfaceCarrier : Type
  certificateInputCarrier : Type
  endpointStatementCertificateCarrier : Type
  endpointRouteCertificateCarrier : Type
  proofKernelBodyCertificateCarrier : Type
  endpointEstimateCertificateCarrier : Type
  auditCertificateCarrier : Type
  attachedToObligationTable : Prop
  attachedToDischargeInterface : Prop
  recordsCertificateInterfaceOnly : Prop
  readyForLaterCertificateTerm : Prop
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First discharge certificate interface.

This layer records the certificate carrier/interface through which a later proof
term may certify a concrete endpoint discharge.  No certificate term is supplied
here.
-/
structure MainAnchoredEndpointFirstDischargeCertificateInterface
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    (OD : EndpointConcreteDischargeObligationDependencyTable OS) where
  stage : EndpointFirstDischargeCertificateStage
  primaryCertificateKind : EndpointFirstDischargeCertificateKind
  concreteDischargeObligationTableInput : EndpointFirstDischargeCertificateItem OD
  endpointStatementCertificateInput : EndpointFirstDischargeCertificateItem OD
  endpointRouteCertificateInput : EndpointFirstDischargeCertificateItem OD
  proofKernelBodyCertificateInput : EndpointFirstDischargeCertificateItem OD
  endpointEstimateCertificateCarrierSlot : EndpointFirstDischargeCertificateItem OD
  auditCertificateCarrier : EndpointFirstDischargeCertificateItem OD
  firstDischargeCertificateSlot : EndpointFirstDischargeCertificateItem OD
  nonClaimCertificateBoundary : EndpointFirstDischargeCertificateItem OD
  certificateInterfaceCarrier : Type
  obligationTableCarrier : Type
  obligationSlotCarrier : Type
  dischargeInterfaceCarrier : Type
  bodyPlanCarrier : Type
  proofKernelStubCarrier : Type
  attachedToR2000ConcreteDischargeObligationTable : Prop
  attachedToR1999FirstConcreteDischargeInterface : Prop
  attachedToR1998ExecutableProofKernelBodyPlan : Prop
  endpointStatementCertificateInputRecorded : Prop
  endpointRouteCertificateInputRecorded : Prop
  proofKernelBodyCertificateInputRecorded : Prop
  endpointEstimateCertificateCarrierRecorded : Prop
  auditCertificateCarrierRecorded : Prop
  firstDischargeCertificateSlotRecorded : Prop
  allCertificateInterfaceItemsRecorded : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the certificate interface to the R2000D obligation dependency table. -/
def endpoint_first_discharge_certificate_interface_to_obligation_table
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (_CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) :
    EndpointConcreteDischargeObligationDependencyTable OS :=
  OD

/-- Forget the certificate interface to the R2000D obligation slots. -/
def endpoint_first_discharge_certificate_interface_to_obligation_slots
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) :
    MainAnchoredEndpointConcreteDischargeObligationSlots DD :=
  endpoint_concrete_discharge_obligation_dependency_table_to_obligation_slots
    (endpoint_first_discharge_certificate_interface_to_obligation_table CI)

/-- Forget the certificate interface to the R1999D first concrete-discharge interface. -/
def endpoint_first_discharge_certificate_interface_to_discharge_interface
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) :
    MainAnchoredEndpointFirstConcreteDischargeInterface BP :=
  endpoint_concrete_discharge_obligation_dependency_table_to_discharge_interface
    (endpoint_first_discharge_certificate_interface_to_obligation_table CI)

/-- Record that the certificate interface does not supply a proof certificate here. -/
def endpoint_first_discharge_certificate_interface_records_no_certificate_here
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) : Prop :=
  CI.nonClaimBoundary ∧
  CI.noCertificateTermSuppliedHere ∧
  CI.noConcreteEndpointLemmaDischargedHere ∧
  CI.noEndpointKernelExecutedHere ∧
  CI.noEndpointEstimateClosedHere ∧
  CI.noExplicitFormulaClosedHere ∧
  CI.noRHClosedHere

end R2001DLeanEndpointFirstDischargeCertificateInterface
