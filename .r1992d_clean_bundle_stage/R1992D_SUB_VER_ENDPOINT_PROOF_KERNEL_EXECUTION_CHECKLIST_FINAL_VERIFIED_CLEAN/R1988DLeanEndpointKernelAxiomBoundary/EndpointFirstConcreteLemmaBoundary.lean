import R1988DLeanEndpointKernelAxiomBoundary.EndpointKernelAxiomSlots

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

/-- First concrete-lemma boundary kinds beneath the endpoint axiom boundary. -/
inductive EndpointConcreteLemmaBoundaryKind where
  | localReductionFirstLemma
  | finiteAbelFirstLemma
  | normalizationFirstLemma
  | endpointMajorantFirstLemma
  | boundaryWindowFirstLemma
  | statementBankFirstLemmaRoute
  | proofSkeletonFirstLemmaRoute
  | auditBoundaryFirstLemma
  deriving DecidableEq, Repr

/-- A first concrete-lemma boundary item. -/
structure EndpointConcreteLemmaBoundaryItem
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) where
  kind : EndpointConcreteLemmaBoundaryKind
  lemmaIndex : Nat
  sourceCarrier : Type
  axiomBoundaryCarrier : Type
  targetProofFileCarrier : Type
  attachedToEndpointKernelAxiomBoundary : Prop
  routedFromEndpointProofKernelInterface : Prop
  routedTowardLaterConcreteEndpointProof : Prop
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First concrete-lemma boundary under the endpoint kernel axiom boundary.

This records the first places where later endpoint proof files should discharge
actual lemmas.  It does not discharge those lemmas in R1988D.
-/
structure EndpointFirstConcreteLemmaBoundary
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) where
  localReductionFirstLemma : EndpointConcreteLemmaBoundaryItem X
  finiteAbelFirstLemma : EndpointConcreteLemmaBoundaryItem X
  normalizationFirstLemma : EndpointConcreteLemmaBoundaryItem X
  endpointMajorantFirstLemma : EndpointConcreteLemmaBoundaryItem X
  boundaryWindowFirstLemma : EndpointConcreteLemmaBoundaryItem X
  statementBankFirstLemmaRoute : EndpointConcreteLemmaBoundaryItem X
  proofSkeletonFirstLemmaRoute : EndpointConcreteLemmaBoundaryItem X
  auditBoundaryFirstLemma : EndpointConcreteLemmaBoundaryItem X
  concreteLemmaBoundaryCarrier : Type
  laterEndpointProofFileCarrier : Type
  localReductionPrecedesEndpointMajorant : Prop
  finiteAbelPrecedesNormalization : Prop
  normalizationPrecedesBoundaryWindow : Prop
  boundaryWindowPrecedesEndpointMajorant : Prop
  statementBankRoutePrecedesProofSkeletonRoute : Prop
  allFirstConcreteLemmaBoundariesRecorded : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the first concrete-lemma boundary to the endpoint kernel axiom boundary. -/
def endpoint_concrete_lemma_boundary_to_axiom_boundary
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
    (_L : EndpointFirstConcreteLemmaBoundary X) :
    MainAnchoredEndpointKernelAxiomBoundary K :=
  X

/-- Return the recorded no-endpoint-proof boundary proposition for the lemma boundary. -/
def endpoint_concrete_lemma_boundary_records_no_endpoint_proof_here
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
    (L : EndpointFirstConcreteLemmaBoundary X) : Prop :=
  L.noEndpointEstimateClosedHere

end R1988DLeanEndpointKernelAxiomBoundary
