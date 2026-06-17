import R1989DLeanEndpointConcreteLemmaStubs.EndpointConcreteLemmaStubBridge
import R1989DLeanEndpointConcreteLemmaStubs.EndpointLemmaStubDependencyGrid

namespace R1990DLeanEndpointConcreteLemmaStatementBank

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

/-- Stages for the endpoint concrete-lemma statement bank. -/
inductive EndpointConcreteLemmaStatementStage where
  | selectStatementBankFromStubs
  | bindStubDependencyGrid
  | registerLocalReductionStatement
  | registerFiniteAbelKernelStatement
  | registerNormalizationStatement
  | registerBoundaryWindowStatement
  | registerEndpointMajorantStatement
  | registerAuditStatementBoundary
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Statement kinds in the first endpoint concrete-lemma statement bank. -/
inductive EndpointConcreteLemmaStatementKind where
  | localReductionStatement
  | finiteAbelKernelStatement
  | normalizationStatement
  | boundaryWindowStatement
  | endpointMajorantStatement
  | statementBankRouteStatement
  | proofSkeletonRouteStatement
  | auditStatementBoundary
  deriving DecidableEq, Repr

/-- A single endpoint concrete-lemma statement item attached to the R1989D stub grid. -/
structure EndpointConcreteLemmaStatementItem
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
    (D : EndpointLemmaStubDependencyGrid SB) where
  kind : EndpointConcreteLemmaStatementKind
  statementIndex : Nat
  stubCarrier : Type
  statementCarrier : Type
  hypothesisCarrier : Type
  conclusionCarrier : Type
  dependencyCarrier : Type
  attachedToStubDependencyGrid : Prop
  attachedToConcreteLemmaStubBank : Prop
  routedFromEndpointKernelAxiomBoundary : Prop
  routedTowardLaterEndpointProofFile : Prop
  implementedHere : Bool
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Concrete statement bank for the first endpoint concrete lemmas.

This bank names the first statement forms to be implemented later.  It remains
strictly below the proof level: no statement is discharged here and no endpoint
estimate or RH-level assertion is proved here.
-/
structure MainAnchoredEndpointConcreteLemmaStatementBank
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
    (D : EndpointLemmaStubDependencyGrid SB) where
  stage : EndpointConcreteLemmaStatementStage
  primaryStatementKind : EndpointConcreteLemmaStatementKind
  localReductionStatement : EndpointConcreteLemmaStatementItem D
  finiteAbelKernelStatement : EndpointConcreteLemmaStatementItem D
  normalizationStatement : EndpointConcreteLemmaStatementItem D
  boundaryWindowStatement : EndpointConcreteLemmaStatementItem D
  endpointMajorantStatement : EndpointConcreteLemmaStatementItem D
  statementBankRouteStatement : EndpointConcreteLemmaStatementItem D
  proofSkeletonRouteStatement : EndpointConcreteLemmaStatementItem D
  auditStatementBoundary : EndpointConcreteLemmaStatementItem D
  statementBankCarrier : Type
  stubBankCarrier : Type
  stubDependencyGridCarrier : Type
  endpointKernelAxiomBoundaryCarrier : Type
  firstConcreteLemmaBoundaryCarrier : Type
  laterEndpointProofFileCarrier : Type
  attachedToR1989StubBank : Prop
  attachedToR1989StubDependencyGrid : Prop
  attachedToR1988FirstConcreteLemmaBoundary : Prop
  attachedToR1988EndpointKernelAxiomBoundary : Prop
  localReductionStatementRecorded : Prop
  finiteAbelKernelStatementRecorded : Prop
  normalizationStatementRecorded : Prop
  boundaryWindowStatementRecorded : Prop
  endpointMajorantStatementRecorded : Prop
  statementBankRouteStatementRecorded : Prop
  proofSkeletonRouteStatementRecorded : Prop
  auditStatementBoundaryRecorded : Prop
  allEndpointConcreteLemmaStatementsRecorded : Prop
  noStatementDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  implementedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Forget the concrete-lemma statement bank to the R1989D stub dependency grid. -/
def endpoint_concrete_lemma_statement_bank_to_stub_grid
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
    (_ST : MainAnchoredEndpointConcreteLemmaStatementBank D) :
    EndpointLemmaStubDependencyGrid SB :=
  D

/-- Forget the concrete-lemma statement bank to the R1989D stub bank. -/
def endpoint_concrete_lemma_statement_bank_to_stub_bank
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
    (ST : MainAnchoredEndpointConcreteLemmaStatementBank D) :
    MainAnchoredEndpointConcreteLemmaStubBank L :=
  R1989DLeanEndpointConcreteLemmaStubs.endpoint_lemma_stub_dependency_grid_to_stub_bank
    (endpoint_concrete_lemma_statement_bank_to_stub_grid ST)

/-- Forget the concrete-lemma statement bank to the R1988D first concrete-lemma boundary. -/
def endpoint_concrete_lemma_statement_bank_to_first_boundary
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
    (ST : MainAnchoredEndpointConcreteLemmaStatementBank D) :
    EndpointFirstConcreteLemmaBoundary X :=
  R1989DLeanEndpointConcreteLemmaStubs.endpoint_lemma_stub_dependency_grid_to_first_boundary
    (endpoint_concrete_lemma_statement_bank_to_stub_grid ST)

/-- Forget the concrete-lemma statement bank to the R1988D endpoint axiom boundary. -/
def endpoint_concrete_lemma_statement_bank_to_axiom_boundary
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
    (ST : MainAnchoredEndpointConcreteLemmaStatementBank D) :
    MainAnchoredEndpointKernelAxiomBoundary K :=
  R1989DLeanEndpointConcreteLemmaStubs.endpoint_lemma_stub_dependency_grid_to_axiom_boundary
    (endpoint_concrete_lemma_statement_bank_to_stub_grid ST)

/-- Return the recorded no-endpoint-proof boundary proposition. -/
def endpoint_concrete_lemma_statement_bank_records_no_endpoint_proof_here
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
    (ST : MainAnchoredEndpointConcreteLemmaStatementBank D) : Prop :=
  ST.noEndpointEstimateClosedHere

end R1990DLeanEndpointConcreteLemmaStatementBank
