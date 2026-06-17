import R1987DLeanEndpointProofKernelInterface.EndpointProofKernelBridge
import R1987DLeanEndpointProofKernelInterface.EndpointKernelDependencyInterface

namespace R1988DLeanEndpointKernelAxiomBoundary

open R1987DLeanEndpointProofKernelInterface
open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Stages for the endpoint kernel axiom boundary. -/
inductive EndpointKernelAxiomBoundaryStage where
  | selectKernelAxiomBoundary
  | bindEndpointProofKernelInterface
  | bindKernelDependencyInterface
  | registerLocalReductionAxiomBoundary
  | registerFiniteAbelAxiomBoundary
  | registerNormalizationAxiomBoundary
  | registerEndpointMajorantAxiomBoundary
  | registerBoundaryWindowAxiomBoundary
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Boundary kinds for the first endpoint kernel axiom layer. -/
inductive EndpointKernelAxiomBoundaryKind where
  | localReductionAxiomBoundary
  | finiteAbelKernelAxiomBoundary
  | normalizationKernelAxiomBoundary
  | endpointMajorantAxiomBoundary
  | boundaryWindowAxiomBoundary
  | statementBankAxiomRoute
  | proofSkeletonAxiomRoute
  | manuscriptAuditBoundary
  deriving DecidableEq, Repr

/--
Endpoint kernel axiom boundary under the R1987D proof-kernel interface.

The structure records where the later concrete endpoint proof must begin.  It
names the axiom-boundary carriers but explicitly records that no endpoint
estimate, explicit formula, or RH-level theorem is proved in this layer.
-/
structure MainAnchoredEndpointKernelAxiomBoundary
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) where
  stage : EndpointKernelAxiomBoundaryStage
  boundaryKind : EndpointKernelAxiomBoundaryKind
  endpointProofKernelCarrier : Type
  endpointKernelDependencyCarrier : Type
  localReductionAxiomCarrier : Type
  finiteAbelKernelAxiomCarrier : Type
  normalizationKernelAxiomCarrier : Type
  endpointMajorantAxiomCarrier : Type
  boundaryWindowAxiomCarrier : Type
  statementBankAxiomCarrier : Type
  proofSkeletonAxiomCarrier : Type
  manuscriptAuditCarrier : Type
  laterEndpointProofFileCarrier : Type
  attachedToR1987EndpointProofKernelInterface : Prop
  attachedToR1986EndpointStatementGroup : Prop
  attachedToR1985EndpointBlock : Prop
  attachedToR1984Queue : Prop
  attachedToR1983MainManuscriptSpine : Prop
  endpointProofKernelInterfaceBound : Prop
  kernelDependencyInterfaceBound : Prop
  localReductionAxiomBoundaryRecorded : Prop
  finiteAbelKernelAxiomBoundaryRecorded : Prop
  normalizationKernelAxiomBoundaryRecorded : Prop
  endpointMajorantAxiomBoundaryRecorded : Prop
  boundaryWindowAxiomBoundaryRecorded : Prop
  statementBankAxiomRouteRecorded : Prop
  proofSkeletonAxiomRouteRecorded : Prop
  manuscriptAuditBoundaryRecorded : Prop
  firstConcreteLemmaBoundaryPrepared : Prop
  noEndpointKernelAxiomDischargedHere : Prop
  implementedHere : Bool
  dischargesEndpointKernelAxiomHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Forget the endpoint kernel axiom boundary back to the R1987D proof-kernel interface. -/
def endpoint_kernel_axiom_boundary_to_kernel
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (_X : MainAnchoredEndpointKernelAxiomBoundary K) :
    MainAnchoredEndpointProofKernelInterface G :=
  K

/-- Forget the endpoint kernel axiom boundary back to the R1986D statement group. -/
def endpoint_kernel_axiom_boundary_to_statement_group
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) :
    MainAnchoredEndpointStatementGroup B :=
  R1987DLeanEndpointProofKernelInterface.endpoint_proof_kernel_interface_to_statement_group
    (endpoint_kernel_axiom_boundary_to_kernel X)

/-- Forget the endpoint kernel axiom boundary back to the R1984D queue. -/
def endpoint_kernel_axiom_boundary_to_queue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) :
    MainAnchoredFirstObligationImplementationQueue M :=
  R1987DLeanEndpointProofKernelInterface.endpoint_proof_kernel_interface_to_queue
    (endpoint_kernel_axiom_boundary_to_kernel X)

/-- Forget the endpoint kernel axiom boundary to the R1980D statement bank. -/
def endpoint_kernel_axiom_boundary_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) :
    ConcreteEstimateStatementBank P :=
  R1987DLeanEndpointProofKernelInterface.endpoint_proof_kernel_interface_to_statement_bank
    (endpoint_kernel_axiom_boundary_to_kernel X)

/-- Return the recorded no-endpoint-proof boundary proposition. -/
def endpoint_kernel_axiom_boundary_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) : Prop :=
  X.noEndpointKernelAxiomDischargedHere

/-- Return the recorded RH non-claim boundary proposition. -/
def endpoint_kernel_axiom_boundary_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) : Prop :=
  X.nonClaimBoundary

end R1988DLeanEndpointKernelAxiomBoundary
