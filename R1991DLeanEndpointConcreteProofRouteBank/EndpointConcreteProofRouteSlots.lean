import R1990DLeanEndpointConcreteLemmaStatementBank

namespace R1991DLeanEndpointConcreteProofRouteBank

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

/-- Stages for routing the first endpoint concrete-lemma statements toward proof files. -/
inductive EndpointConcreteProofRouteStage where
  | selectStatementMatrix
  | registerLocalReductionRoute
  | registerFiniteAbelKernelRoute
  | registerNormalizationRoute
  | registerBoundaryWindowRoute
  | registerEndpointMajorantRoute
  | registerAuditRoute
  | preserveStatementBankBoundary
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Route kinds in the endpoint concrete proof-route bank. -/
inductive EndpointConcreteProofRouteKind where
  | localReductionProofRoute
  | finiteAbelKernelProofRoute
  | normalizationProofRoute
  | boundaryWindowProofRoute
  | endpointMajorantProofRoute
  | statementMatrixRoute
  | laterProofFileRoute
  | auditProofRouteBoundary
  deriving DecidableEq, Repr

/-- A single endpoint proof route attached to the R1990D statement dependency matrix. -/
structure EndpointConcreteProofRouteItem
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
    (DM : EndpointStatementDependencyMatrix ST) where
  kind : EndpointConcreteProofRouteKind
  routeIndex : Nat
  statementCarrier : Type
  proofFileCarrier : Type
  tacticCarrier : Type
  localLemmaCarrier : Type
  dependencyCarrier : Type
  attachedToStatementDependencyMatrix : Prop
  attachedToConcreteLemmaStatementBank : Prop
  attachedToStubDependencyGrid : Prop
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
Proof-route bank for the first endpoint concrete lemmas.

This layer records where the R1990D statement forms should be routed when the
first real proof files are introduced.  It deliberately remains below the proof
level: no endpoint statement is discharged and no analytic estimate is proved
here.
-/
structure MainAnchoredEndpointConcreteProofRouteBank
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
    (DM : EndpointStatementDependencyMatrix ST) where
  stage : EndpointConcreteProofRouteStage
  primaryRouteKind : EndpointConcreteProofRouteKind
  localReductionProofRoute : EndpointConcreteProofRouteItem DM
  finiteAbelKernelProofRoute : EndpointConcreteProofRouteItem DM
  normalizationProofRoute : EndpointConcreteProofRouteItem DM
  boundaryWindowProofRoute : EndpointConcreteProofRouteItem DM
  endpointMajorantProofRoute : EndpointConcreteProofRouteItem DM
  statementMatrixRoute : EndpointConcreteProofRouteItem DM
  laterProofFileRoute : EndpointConcreteProofRouteItem DM
  auditProofRouteBoundary : EndpointConcreteProofRouteItem DM
  routeBankCarrier : Type
  statementDependencyMatrixCarrier : Type
  concreteLemmaStatementBankCarrier : Type
  stubDependencyGridCarrier : Type
  endpointKernelAxiomBoundaryCarrier : Type
  laterEndpointProofFileCarrier : Type
  attachedToR1990StatementBank : Prop
  attachedToR1990StatementDependencyMatrix : Prop
  attachedToR1989StubBank : Prop
  attachedToR1988FirstConcreteLemmaBoundary : Prop
  localReductionRouteRecorded : Prop
  finiteAbelKernelRouteRecorded : Prop
  normalizationRouteRecorded : Prop
  boundaryWindowRouteRecorded : Prop
  endpointMajorantRouteRecorded : Prop
  statementMatrixRouteRecorded : Prop
  laterProofFileRouteRecorded : Prop
  auditProofRouteBoundaryRecorded : Prop
  allEndpointProofRoutesRecorded : Prop
  noEndpointStatementDischargedHere : Prop
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

/-- Forget the proof-route bank to the R1990D statement dependency matrix. -/
def endpoint_concrete_proof_route_bank_to_statement_dependency_matrix
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
    (_RB : MainAnchoredEndpointConcreteProofRouteBank DM) :
    EndpointStatementDependencyMatrix ST :=
  DM

/-- Forget the proof-route bank to the R1990D concrete-lemma statement bank. -/
def endpoint_concrete_proof_route_bank_to_statement_bank
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
    (RB : MainAnchoredEndpointConcreteProofRouteBank DM) :
    MainAnchoredEndpointConcreteLemmaStatementBank D :=
  endpoint_statement_dependency_matrix_to_statement_bank
    (endpoint_concrete_proof_route_bank_to_statement_dependency_matrix RB)

/-- Forget the proof-route bank to the R1989D stub dependency grid. -/
def endpoint_concrete_proof_route_bank_to_stub_grid
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
    (RB : MainAnchoredEndpointConcreteProofRouteBank DM) :
    EndpointLemmaStubDependencyGrid SB :=
  endpoint_statement_dependency_matrix_to_stub_grid
    (endpoint_concrete_proof_route_bank_to_statement_dependency_matrix RB)

/-- Forget the proof-route bank to the R1988D endpoint kernel axiom boundary. -/
def endpoint_concrete_proof_route_bank_to_axiom_boundary
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
    (RB : MainAnchoredEndpointConcreteProofRouteBank DM) :
    MainAnchoredEndpointKernelAxiomBoundary K :=
  endpoint_statement_dependency_matrix_to_axiom_boundary
    (endpoint_concrete_proof_route_bank_to_statement_dependency_matrix RB)

/-- Record that the proof-route bank remains below the endpoint proof boundary. -/
def endpoint_concrete_proof_route_bank_records_no_endpoint_proof_here
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
    (RB : MainAnchoredEndpointConcreteProofRouteBank DM) : Prop :=
  RB.noEndpointEstimateClosedHere

end R1991DLeanEndpointConcreteProofRouteBank
