import R1986DLeanEndpointStatementGroup.EndpointStatementGroupBridge
import R1986DLeanEndpointStatementGroup.EndpointStatementDependencyOrder

namespace R1987DLeanEndpointProofKernelInterface

open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Stages for the first endpoint proof-kernel interface. -/
inductive EndpointProofKernelInterfaceStage where
  | selectEndpointProofKernelInterface
  | bindEndpointStatementGroup
  | bindEndpointDependencyOrder
  | registerLocalReductionKernel
  | registerFiniteAbelKernel
  | registerEndpointMajorantKernel
  | registerBoundaryWindowKernel
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Route kinds used by the endpoint proof-kernel interface. -/
inductive EndpointProofKernelRouteKind where
  | localReductionKernelRoute
  | finiteAbelComponentKernelRoute
  | normalizedMajorantKernelRoute
  | boundaryWindowKernelRoute
  | statementBankKernelRoute
  | proofSkeletonKernelRoute
  | auditBoundaryKernelRoute
  deriving DecidableEq, Repr

/--
The first endpoint proof-kernel interface under the R1986D endpoint statement
 group.

This is still an interface layer.  It records the kernel carriers and routes
needed by later concrete proof files, while explicitly preserving the no-proof
boundary for the endpoint estimate and all RH-level claims.
-/
structure MainAnchoredEndpointProofKernelInterface
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) where
  stage : EndpointProofKernelInterfaceStage
  routeKind : EndpointProofKernelRouteKind
  endpointStatementGroupCarrier : Type
  endpointDependencyOrderCarrier : Type
  localReductionKernelCarrier : Type
  finiteAbelKernelCarrier : Type
  normalizationKernelCarrier : Type
  endpointMajorantKernelCarrier : Type
  boundaryWindowKernelCarrier : Type
  statementBankKernelCarrier : Type
  proofSkeletonKernelCarrier : Type
  auditBoundaryCarrier : Type
  manuscriptAnchorCarrier : Type
  attachedToR1986EndpointStatementGroup : Prop
  attachedToR1985EndpointBlock : Prop
  attachedToR1984Queue : Prop
  attachedToR1983MainManuscriptSpine : Prop
  attachedToR1982ExecutionPlan : Prop
  endpointStatementGroupBound : Prop
  endpointDependencyOrderBound : Prop
  localReductionKernelRegistered : Prop
  finiteAbelKernelRegistered : Prop
  normalizationKernelRegistered : Prop
  endpointMajorantKernelRegistered : Prop
  boundaryWindowKernelRegistered : Prop
  statementBankKernelRouteRecorded : Prop
  proofSkeletonKernelRouteRecorded : Prop
  auditBoundaryRecorded : Prop
  endpointProofKernelInterfacePrepared : Prop
  endpointEstimateProofNotClosedHere : Prop
  implementedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Forget the endpoint proof-kernel interface back to the R1986D statement group. -/
def endpoint_proof_kernel_interface_to_statement_group
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (_K : MainAnchoredEndpointProofKernelInterface G) :
    MainAnchoredEndpointStatementGroup B :=
  G

/-- Forget the endpoint proof-kernel interface back to the R1985D endpoint block. -/
def endpoint_proof_kernel_interface_to_endpoint_block
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    MainAnchoredEndpointFirstImplementationBlock Q :=
  R1986DLeanEndpointStatementGroup.endpoint_statement_group_to_block
    (endpoint_proof_kernel_interface_to_statement_group K)

/-- Forget the endpoint proof-kernel interface back to the R1984D queue. -/
def endpoint_proof_kernel_interface_to_queue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    MainAnchoredFirstObligationImplementationQueue M :=
  R1986DLeanEndpointStatementGroup.endpoint_statement_group_to_queue
    (endpoint_proof_kernel_interface_to_statement_group K)

/-- Forget the endpoint proof-kernel interface to the main-manuscript anchor spine. -/
def endpoint_proof_kernel_interface_to_anchor_spine
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    MainManuscriptAnchorSpine E :=
  R1986DLeanEndpointStatementGroup.endpoint_statement_group_to_anchor_spine
    (endpoint_proof_kernel_interface_to_statement_group K)

/-- Forget the endpoint proof-kernel interface to the R1980D statement bank. -/
def endpoint_proof_kernel_interface_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    ConcreteEstimateStatementBank P :=
  R1986DLeanEndpointStatementGroup.endpoint_statement_group_to_statement_bank
    (endpoint_proof_kernel_interface_to_statement_group K)

/-- Return the recorded no-endpoint-proof boundary proposition. -/
def endpoint_proof_kernel_interface_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) : Prop :=
  K.endpointEstimateProofNotClosedHere

/-- Return the recorded RH non-claim boundary proposition. -/
def endpoint_proof_kernel_interface_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) : Prop :=
  K.nonClaimBoundary

end R1987DLeanEndpointProofKernelInterface
