import R1989DLeanEndpointConcreteLemmaStubs.EndpointConcreteLemmaStubSlots

namespace R1989DLeanEndpointConcreteLemmaStubs

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

/-- Dependency kinds for the endpoint concrete-lemma stub bank. -/
inductive EndpointLemmaStubDependencyKind where
  | firstBoundaryInput
  | axiomBoundaryInput
  | kernelInterfaceInput
  | localReductionBeforeMajorant
  | finiteAbelBeforeNormalization
  | normalizationBeforeBoundaryWindow
  | boundaryWindowBeforeMajorant
  | statementBankBeforeProofSkeleton
  | auditBoundaryInput
  deriving DecidableEq, Repr

/-- A dependency item in the first endpoint concrete-lemma stub grid. -/
structure EndpointLemmaStubDependencyItem
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
    (SB : MainAnchoredEndpointConcreteLemmaStubBank L) where
  kind : EndpointLemmaStubDependencyKind
  dependencyIndex : Nat
  sourceCarrier : Type
  targetStubCarrier : Type
  dependencyProofCarrier : Type
  attachedToConcreteLemmaStubBank : Prop
  routedFromFirstConcreteLemmaBoundary : Prop
  routedTowardLaterEndpointProofFile : Prop
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Dependency grid for the first endpoint concrete-lemma stubs.

This grid records the order in which later endpoint proof files should attack
stubbed lemmas.  It is a routing and audit layer only.
-/
structure EndpointLemmaStubDependencyGrid
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
    (SB : MainAnchoredEndpointConcreteLemmaStubBank L) where
  firstBoundaryInput : EndpointLemmaStubDependencyItem SB
  axiomBoundaryInput : EndpointLemmaStubDependencyItem SB
  kernelInterfaceInput : EndpointLemmaStubDependencyItem SB
  localReductionBeforeMajorant : EndpointLemmaStubDependencyItem SB
  finiteAbelBeforeNormalization : EndpointLemmaStubDependencyItem SB
  normalizationBeforeBoundaryWindow : EndpointLemmaStubDependencyItem SB
  boundaryWindowBeforeMajorant : EndpointLemmaStubDependencyItem SB
  statementBankBeforeProofSkeleton : EndpointLemmaStubDependencyItem SB
  auditBoundaryInput : EndpointLemmaStubDependencyItem SB
  gridCarrier : Type
  stubBankCarrier : Type
  laterProofFileCarrier : Type
  firstBoundaryPrecedesStubBank : Prop
  axiomBoundaryPrecedesStubBank : Prop
  kernelInterfacePrecedesStubBank : Prop
  localReductionPrecedesEndpointMajorant : Prop
  finiteAbelPrecedesNormalization : Prop
  normalizationPrecedesBoundaryWindow : Prop
  boundaryWindowPrecedesEndpointMajorant : Prop
  statementBankRoutePrecedesProofSkeletonRoute : Prop
  allStubDependenciesRecorded : Prop
  noDependencyDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency grid to the concrete-lemma stub bank. -/
def endpoint_lemma_stub_dependency_grid_to_stub_bank
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
    (_D : EndpointLemmaStubDependencyGrid SB) :
    MainAnchoredEndpointConcreteLemmaStubBank L :=
  SB

/-- Forget the dependency grid to the R1988D first concrete-lemma boundary. -/
def endpoint_lemma_stub_dependency_grid_to_first_boundary
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
    (D : EndpointLemmaStubDependencyGrid SB) :
    EndpointFirstConcreteLemmaBoundary X :=
  endpoint_concrete_lemma_stub_bank_to_first_boundary
    (endpoint_lemma_stub_dependency_grid_to_stub_bank D)

/-- Forget the dependency grid to the R1988D endpoint kernel axiom boundary. -/
def endpoint_lemma_stub_dependency_grid_to_axiom_boundary
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
    (D : EndpointLemmaStubDependencyGrid SB) :
    MainAnchoredEndpointKernelAxiomBoundary K :=
  endpoint_concrete_lemma_stub_bank_to_axiom_boundary
    (endpoint_lemma_stub_dependency_grid_to_stub_bank D)

/-- Return the recorded no-endpoint-proof boundary proposition for the grid. -/
def endpoint_lemma_stub_dependency_grid_records_no_endpoint_proof_here
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
    (D : EndpointLemmaStubDependencyGrid SB) : Prop :=
  D.noEndpointEstimateClosedHere

end R1989DLeanEndpointConcreteLemmaStubs
