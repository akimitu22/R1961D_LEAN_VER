import R1990DLeanEndpointConcreteLemmaStatementBank.EndpointConcreteLemmaStatementSlots

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

/-- Dependency kinds for the endpoint concrete-lemma statement bank. -/
inductive EndpointStatementDependencyKind where
  | stubGridInput
  | stubBankInput
  | firstBoundaryInput
  | localReductionBeforeFiniteAbel
  | finiteAbelBeforeNormalization
  | normalizationBeforeBoundaryWindow
  | boundaryWindowBeforeEndpointMajorant
  | endpointMajorantBeforeLaterProofFile
  | auditStatementBoundaryInput
  deriving DecidableEq, Repr

/-- A dependency item in the endpoint statement dependency matrix. -/
structure EndpointStatementDependencyItem
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
    (ST : MainAnchoredEndpointConcreteLemmaStatementBank D) where
  kind : EndpointStatementDependencyKind
  dependencyIndex : Nat
  sourceStatementCarrier : Type
  targetStatementCarrier : Type
  dependencyCarrier : Type
  attachedToConcreteLemmaStatementBank : Prop
  attachedToStubDependencyGrid : Prop
  routedTowardLaterEndpointProofFile : Prop
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Dependency matrix for the endpoint concrete-lemma statement bank.

This matrix records only the order among statement forms.  It deliberately
stops before any proof of the statement forms themselves.
-/
structure EndpointStatementDependencyMatrix
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
    (ST : MainAnchoredEndpointConcreteLemmaStatementBank D) where
  stubGridInput : EndpointStatementDependencyItem ST
  stubBankInput : EndpointStatementDependencyItem ST
  firstBoundaryInput : EndpointStatementDependencyItem ST
  localReductionBeforeFiniteAbel : EndpointStatementDependencyItem ST
  finiteAbelBeforeNormalization : EndpointStatementDependencyItem ST
  normalizationBeforeBoundaryWindow : EndpointStatementDependencyItem ST
  boundaryWindowBeforeEndpointMajorant : EndpointStatementDependencyItem ST
  endpointMajorantBeforeLaterProofFile : EndpointStatementDependencyItem ST
  auditStatementBoundaryInput : EndpointStatementDependencyItem ST
  matrixCarrier : Type
  statementBankCarrier : Type
  laterEndpointProofFileCarrier : Type
  stubGridPrecedesStatementBank : Prop
  stubBankPrecedesStatementBank : Prop
  firstBoundaryPrecedesStatementBank : Prop
  localReductionPrecedesFiniteAbel : Prop
  finiteAbelPrecedesNormalization : Prop
  normalizationPrecedesBoundaryWindow : Prop
  boundaryWindowPrecedesEndpointMajorant : Prop
  endpointMajorantPrecedesLaterProofFile : Prop
  allStatementDependenciesRecorded : Prop
  noStatementDependencyDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency matrix to the endpoint concrete-lemma statement bank. -/
def endpoint_statement_dependency_matrix_to_statement_bank
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
    (_DM : EndpointStatementDependencyMatrix ST) :
    MainAnchoredEndpointConcreteLemmaStatementBank D :=
  ST

/-- Forget the dependency matrix to the R1989D stub grid. -/
def endpoint_statement_dependency_matrix_to_stub_grid
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
    (DM : EndpointStatementDependencyMatrix ST) :
    EndpointLemmaStubDependencyGrid SB :=
  endpoint_concrete_lemma_statement_bank_to_stub_grid
    (endpoint_statement_dependency_matrix_to_statement_bank DM)

/-- Forget the dependency matrix to the R1989D stub bank. -/
def endpoint_statement_dependency_matrix_to_stub_bank
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
    (DM : EndpointStatementDependencyMatrix ST) :
    MainAnchoredEndpointConcreteLemmaStubBank L :=
  endpoint_concrete_lemma_statement_bank_to_stub_bank
    (endpoint_statement_dependency_matrix_to_statement_bank DM)

/-- Forget the dependency matrix to the R1988D endpoint axiom boundary. -/
def endpoint_statement_dependency_matrix_to_axiom_boundary
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
    (DM : EndpointStatementDependencyMatrix ST) :
    MainAnchoredEndpointKernelAxiomBoundary K :=
  endpoint_concrete_lemma_statement_bank_to_axiom_boundary
    (endpoint_statement_dependency_matrix_to_statement_bank DM)

/-- Return the recorded no-endpoint-proof boundary proposition for the matrix. -/
def endpoint_statement_dependency_matrix_records_no_endpoint_proof_here
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
    (DM : EndpointStatementDependencyMatrix ST) : Prop :=
  DM.noEndpointEstimateClosedHere

end R1990DLeanEndpointConcreteLemmaStatementBank
