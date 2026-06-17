import R1987DLeanEndpointProofKernelInterface.EndpointProofKernelSlots

namespace R1987DLeanEndpointProofKernelInterface

open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Dependency-interface kinds for the endpoint proof-kernel interface. -/
inductive EndpointProofKernelDependencyKind where
  | statementGroupInput
  | dependencyOrderInput
  | localReductionKernelInput
  | finiteAbelKernelInput
  | normalizationKernelInput
  | endpointMajorantKernelInput
  | boundaryWindowKernelInput
  | statementBankKernelRoute
  | proofSkeletonKernelRoute
  | auditBoundaryInput
  deriving DecidableEq, Repr

/-- A routed dependency item for the endpoint proof-kernel interface. -/
structure EndpointProofKernelDependencyItem
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) where
  kind : EndpointProofKernelDependencyKind
  dependencyIndex : Nat
  sourceCarrier : Type
  kernelCarrier : Type
  targetCarrier : Type
  attachedToEndpointProofKernelInterface : Prop
  routedFromEndpointStatementGroup : Prop
  routedTowardLaterConcreteProofFile : Prop
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Dependency interface for the first endpoint proof-kernel layer.

It records the carrier-level interface that a later concrete endpoint proof file
must discharge.  No dependency item is discharged in this layer.
-/
structure EndpointProofKernelDependencyInterface
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) where
  statementGroupInput : EndpointProofKernelDependencyItem K
  dependencyOrderInput : EndpointProofKernelDependencyItem K
  localReductionKernelInput : EndpointProofKernelDependencyItem K
  finiteAbelKernelInput : EndpointProofKernelDependencyItem K
  normalizationKernelInput : EndpointProofKernelDependencyItem K
  endpointMajorantKernelInput : EndpointProofKernelDependencyItem K
  boundaryWindowKernelInput : EndpointProofKernelDependencyItem K
  statementBankKernelRoute : EndpointProofKernelDependencyItem K
  proofSkeletonKernelRoute : EndpointProofKernelDependencyItem K
  auditBoundaryInput : EndpointProofKernelDependencyItem K
  interfaceCarrier : Type
  proofKernelCarrier : Type
  laterProofFileCarrier : Type
  statementGroupPrecedesKernelInterface : Prop
  dependencyOrderPrecedesKernelInterface : Prop
  localReductionPrecedesMajorantKernel : Prop
  finiteAbelPrecedesNormalizedKernel : Prop
  normalizedKernelPrecedesBoundaryWindowKernel : Prop
  boundaryWindowPrecedesProofSkeletonRoute : Prop
  allKernelInterfacesRecorded : Prop
  noKernelItemDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency interface back to the endpoint proof-kernel interface. -/
def endpoint_proof_kernel_dependency_interface_to_kernel
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (_I : EndpointProofKernelDependencyInterface K) :
    MainAnchoredEndpointProofKernelInterface G :=
  K

/-- Return the recorded no-endpoint-proof boundary proposition for the interface. -/
def endpoint_proof_kernel_dependency_interface_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (I : EndpointProofKernelDependencyInterface K) : Prop :=
  I.noEndpointEstimateClosedHere

end R1987DLeanEndpointProofKernelInterface
