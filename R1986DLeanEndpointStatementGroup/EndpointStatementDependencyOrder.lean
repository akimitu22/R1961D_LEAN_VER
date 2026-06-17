import R1986DLeanEndpointStatementGroup.EndpointStatementGroupSlots

namespace R1986DLeanEndpointStatementGroup

open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Dependency-order kinds for the first endpoint statement group. -/
inductive EndpointStatementDependencyOrderKind where
  | finiteAbelInputFirst
  | normalizationInputSecond
  | endpointMajorantInputThird
  | boundaryWindowInputFourth
  | statementBankRouteFifth
  | proofSkeletonRouteSixth
  deriving DecidableEq, Repr

/-- A single ordered dependency step for the endpoint statement group. -/
structure EndpointStatementDependencyStep
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) where
  kind : EndpointStatementDependencyOrderKind
  stepIndex : Nat
  dependencyCarrier : Type
  sourceCarrier : Type
  targetStatementCarrier : Type
  attachedToEndpointStatementGroup : Prop
  precedesEndpointEstimateProof : Prop
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Ordered dependency spine for the first endpoint statement group.

This records the intended order of later discharge.  It is not itself a proof of
any estimate: every step remains a routed dependency item.
-/
structure EndpointStatementGroupDependencyOrder
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) where
  finiteAbelStep : EndpointStatementDependencyStep G
  normalizationStep : EndpointStatementDependencyStep G
  endpointMajorantStep : EndpointStatementDependencyStep G
  boundaryWindowStep : EndpointStatementDependencyStep G
  statementBankRouteStep : EndpointStatementDependencyStep G
  proofSkeletonRouteStep : EndpointStatementDependencyStep G
  orderCarrier : Type
  proofRoutingCarrier : Type
  finiteAbelPrecedesNormalization : Prop
  normalizationPrecedesMajorant : Prop
  majorantPrecedesBoundaryWindow : Prop
  boundaryWindowPrecedesStatementBankRoute : Prop
  statementBankRoutePrecedesProofSkeletonRoute : Prop
  allStepsRecorded : Prop
  noStepDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget an endpoint statement dependency order back to its statement group. -/
def endpoint_statement_dependency_order_to_group
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (_O : EndpointStatementGroupDependencyOrder G) :
    MainAnchoredEndpointStatementGroup B :=
  G

/-- Return the recorded no-endpoint-proof boundary proposition for the order. -/
def endpoint_statement_dependency_order_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (O : EndpointStatementGroupDependencyOrder G) : Prop :=
  O.noEndpointEstimateClosedHere

end R1986DLeanEndpointStatementGroup
