import R1991DLeanEndpointConcreteProofRouteBank.EndpointConcreteProofRouteSlots

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

/-- Dependency kinds inside the endpoint concrete proof-route bank. -/
inductive EndpointProofRouteDependencyKind where
  | statementDependencyMatrixInput
  | statementBankInput
  | stubGridInput
  | localReductionRouteBeforeFiniteAbelRoute
  | finiteAbelRouteBeforeNormalizationRoute
  | normalizationRouteBeforeBoundaryWindowRoute
  | boundaryWindowRouteBeforeEndpointMajorantRoute
  | endpointMajorantRouteBeforeLaterProofFile
  | auditRouteBoundaryInput
  deriving DecidableEq, Repr

/-- A dependency item in the endpoint proof-route dependency plan. -/
structure EndpointProofRouteDependencyItem
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
    (RB : MainAnchoredEndpointConcreteProofRouteBank DM) where
  kind : EndpointProofRouteDependencyKind
  dependencyIndex : Nat
  sourceRouteCarrier : Type
  targetRouteCarrier : Type
  dependencyCarrier : Type
  attachedToProofRouteBank : Prop
  attachedToStatementDependencyMatrix : Prop
  routedTowardLaterEndpointProofFile : Prop
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Dependency plan for the endpoint proof-route bank.

The plan orders the proof routes but still stops before proofs are written.
It is the last route-planning layer before later endpoint proof-file skeletons.
-/
structure EndpointProofRouteDependencyPlan
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
    (RB : MainAnchoredEndpointConcreteProofRouteBank DM) where
  statementDependencyMatrixInput : EndpointProofRouteDependencyItem RB
  statementBankInput : EndpointProofRouteDependencyItem RB
  stubGridInput : EndpointProofRouteDependencyItem RB
  localReductionRouteBeforeFiniteAbelRoute : EndpointProofRouteDependencyItem RB
  finiteAbelRouteBeforeNormalizationRoute : EndpointProofRouteDependencyItem RB
  normalizationRouteBeforeBoundaryWindowRoute : EndpointProofRouteDependencyItem RB
  boundaryWindowRouteBeforeEndpointMajorantRoute : EndpointProofRouteDependencyItem RB
  endpointMajorantRouteBeforeLaterProofFile : EndpointProofRouteDependencyItem RB
  auditRouteBoundaryInput : EndpointProofRouteDependencyItem RB
  dependencyPlanCarrier : Type
  proofRouteBankCarrier : Type
  statementDependencyMatrixCarrier : Type
  laterEndpointProofFileCarrier : Type
  statementDependencyMatrixPrecedesRouteBank : Prop
  statementBankPrecedesRouteBank : Prop
  stubGridPrecedesRouteBank : Prop
  localReductionRoutePrecedesFiniteAbelRoute : Prop
  finiteAbelRoutePrecedesNormalizationRoute : Prop
  normalizationRoutePrecedesBoundaryWindowRoute : Prop
  boundaryWindowRoutePrecedesEndpointMajorantRoute : Prop
  endpointMajorantRoutePrecedesLaterProofFile : Prop
  allProofRouteDependenciesRecorded : Prop
  noProofRouteDependencyDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the endpoint concrete proof-route bank. -/
def endpoint_proof_route_dependency_plan_to_route_bank
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
    (_DP : EndpointProofRouteDependencyPlan RB) :
    MainAnchoredEndpointConcreteProofRouteBank DM :=
  RB

/-- Forget the dependency plan to the R1990D statement dependency matrix. -/
def endpoint_proof_route_dependency_plan_to_statement_dependency_matrix
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
    (DP : EndpointProofRouteDependencyPlan RB) :
    EndpointStatementDependencyMatrix ST :=
  endpoint_concrete_proof_route_bank_to_statement_dependency_matrix
    (endpoint_proof_route_dependency_plan_to_route_bank DP)

/-- Forget the dependency plan to the R1990D concrete-lemma statement bank. -/
def endpoint_proof_route_dependency_plan_to_statement_bank
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
    (DP : EndpointProofRouteDependencyPlan RB) :
    MainAnchoredEndpointConcreteLemmaStatementBank D :=
  endpoint_concrete_proof_route_bank_to_statement_bank
    (endpoint_proof_route_dependency_plan_to_route_bank DP)

/-- Record that the proof-route dependency plan remains below the endpoint proof boundary. -/
def endpoint_proof_route_dependency_plan_records_no_endpoint_proof_here
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
    (DP : EndpointProofRouteDependencyPlan RB) : Prop :=
  DP.noEndpointEstimateClosedHere

end R1991DLeanEndpointConcreteProofRouteBank
