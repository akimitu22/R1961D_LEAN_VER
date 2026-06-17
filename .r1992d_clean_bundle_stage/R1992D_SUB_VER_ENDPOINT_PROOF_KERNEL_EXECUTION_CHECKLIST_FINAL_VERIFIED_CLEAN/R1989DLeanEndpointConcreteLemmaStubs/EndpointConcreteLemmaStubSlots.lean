import R1988DLeanEndpointKernelAxiomBoundary.EndpointKernelAxiomBridge
import R1988DLeanEndpointKernelAxiomBoundary.EndpointFirstConcreteLemmaBoundary

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

/-- Stages for the first endpoint concrete-lemma stub bank. -/
inductive EndpointConcreteLemmaStubStage where
  | selectConcreteLemmaStubBank
  | bindFirstConcreteLemmaBoundary
  | registerLocalReductionStub
  | registerFiniteAbelKernelStub
  | registerNormalizationStub
  | registerEndpointMajorantStub
  | registerBoundaryWindowStub
  | registerStatementBankStubRoute
  | registerProofSkeletonStubRoute
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Stub kinds for the first endpoint concrete-lemma bank. -/
inductive EndpointConcreteLemmaStubKind where
  | localReductionConcreteStub
  | finiteAbelConcreteStub
  | normalizationConcreteStub
  | endpointMajorantConcreteStub
  | boundaryWindowConcreteStub
  | statementBankConcreteStubRoute
  | proofSkeletonConcreteStubRoute
  | auditConcreteStubBoundary
  deriving DecidableEq, Repr

/-- A single endpoint concrete-lemma stub item. -/
structure EndpointConcreteLemmaStubItem
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
    (L : EndpointFirstConcreteLemmaBoundary X) where
  kind : EndpointConcreteLemmaStubKind
  stubIndex : Nat
  statementCarrier : Type
  dependencyCarrier : Type
  kernelBoundaryCarrier : Type
  proofFileStubCarrier : Type
  attachedToFirstConcreteLemmaBoundary : Prop
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
First endpoint concrete-lemma stub bank under the R1988D first concrete-lemma
boundary.

The bank records the names and routing carriers of the first concrete endpoint
lemmas that later proof files must fill.  It deliberately leaves all proof and
RH-level flags negative.
-/
structure MainAnchoredEndpointConcreteLemmaStubBank
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
    (L : EndpointFirstConcreteLemmaBoundary X) where
  stage : EndpointConcreteLemmaStubStage
  primaryStubKind : EndpointConcreteLemmaStubKind
  localReductionStub : EndpointConcreteLemmaStubItem L
  finiteAbelKernelStub : EndpointConcreteLemmaStubItem L
  normalizationStub : EndpointConcreteLemmaStubItem L
  endpointMajorantStub : EndpointConcreteLemmaStubItem L
  boundaryWindowStub : EndpointConcreteLemmaStubItem L
  statementBankStubRoute : EndpointConcreteLemmaStubItem L
  proofSkeletonStubRoute : EndpointConcreteLemmaStubItem L
  auditConcreteStubBoundary : EndpointConcreteLemmaStubItem L
  firstConcreteLemmaBoundaryCarrier : Type
  endpointKernelAxiomBoundaryCarrier : Type
  endpointProofKernelInterfaceCarrier : Type
  laterEndpointProofFileCarrier : Type
  attachedToR1988FirstConcreteLemmaBoundary : Prop
  attachedToR1988EndpointKernelAxiomBoundary : Prop
  attachedToR1987EndpointProofKernelInterface : Prop
  localReductionStubRecorded : Prop
  finiteAbelKernelStubRecorded : Prop
  normalizationStubRecorded : Prop
  endpointMajorantStubRecorded : Prop
  boundaryWindowStubRecorded : Prop
  statementBankStubRouteRecorded : Prop
  proofSkeletonStubRouteRecorded : Prop
  auditConcreteStubBoundaryRecorded : Prop
  allEndpointConcreteLemmaStubsRecorded : Prop
  noStubDischargedHere : Prop
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

/-- Forget the concrete-lemma stub bank to the R1988D first concrete-lemma boundary. -/
def endpoint_concrete_lemma_stub_bank_to_first_boundary
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
    (_SB : MainAnchoredEndpointConcreteLemmaStubBank L) :
    EndpointFirstConcreteLemmaBoundary X :=
  L

/-- Forget the concrete-lemma stub bank to the R1988D endpoint kernel axiom boundary. -/
def endpoint_concrete_lemma_stub_bank_to_axiom_boundary
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
    (SB : MainAnchoredEndpointConcreteLemmaStubBank L) :
    MainAnchoredEndpointKernelAxiomBoundary K :=
  R1988DLeanEndpointKernelAxiomBoundary.endpoint_concrete_lemma_boundary_to_axiom_boundary
    (endpoint_concrete_lemma_stub_bank_to_first_boundary SB)

/-- Forget the concrete-lemma stub bank to the R1987D proof-kernel interface. -/
def endpoint_concrete_lemma_stub_bank_to_kernel
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
    (SB : MainAnchoredEndpointConcreteLemmaStubBank L) :
    MainAnchoredEndpointProofKernelInterface G :=
  R1988DLeanEndpointKernelAxiomBoundary.endpoint_kernel_axiom_boundary_to_kernel
    (endpoint_concrete_lemma_stub_bank_to_axiom_boundary SB)

/-- Forget the concrete-lemma stub bank to the R1980D statement bank. -/
def endpoint_concrete_lemma_stub_bank_to_statement_bank
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
    (SB : MainAnchoredEndpointConcreteLemmaStubBank L) :
    ConcreteEstimateStatementBank P :=
  R1988DLeanEndpointKernelAxiomBoundary.endpoint_kernel_axiom_boundary_to_statement_bank
    (endpoint_concrete_lemma_stub_bank_to_axiom_boundary SB)

/-- Return the recorded no-endpoint-proof boundary proposition. -/
def endpoint_concrete_lemma_stub_bank_records_no_endpoint_proof_here
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
    (SB : MainAnchoredEndpointConcreteLemmaStubBank L) : Prop :=
  SB.noEndpointEstimateClosedHere

end R1989DLeanEndpointConcreteLemmaStubs
