import R1980DLeanConcreteEstimateStatements.StatementDependencyBridge

namespace R1980DLeanConcreteEstimateStatements

open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Future concrete proof-file categories. -/
inductive ConcreteEstimateProofFileKind where
  | endpointEstimateFile
  | boundaryErrorEstimateFile
  | remainderUniformityFile
  | signTransferFile
  | sharedAuxiliaryFile
  deriving DecidableEq, Repr

/-- A route from a named statement to a future proof file. -/
structure ConcreteEstimateProofFileRoute
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  statementTag : ConcreteEstimateStatementTag
  fileKind : ConcreteEstimateProofFileKind
  fileNameCarrier : Type
  theoremNameCarrier : Type
  importLocationCarrier : Type
  routeNamed : Prop
  theoremNameReserved : Prop
  importLocationRecorded : Prop
  routeMatchesStatementBank : Prop
  fileMayContainLaterProof : Bool
  proofIncludedHere : Bool
  nonClaimBoundary : Prop

/-- Routing table for future concrete proof files. -/
structure ConcreteEstimateProofFileRouting
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  statementBank : ConcreteEstimateStatementBank P
  endpointRouteFamily : Type
  boundaryRouteFamily : Type
  remainderUniformityRouteFamily : Type
  signTransferRouteFamily : Type
  sharedAuxiliaryRouteFamily : Type
  allRoutesNamed : Prop
  routesCoverStatementBank : Prop
  routesMatchDependencyClosure : Prop
  routesReadyForConcreteProofFiles : Prop
  noProofFileImplementedHere : Prop
  nonClaimBoundary : Prop

/-- Forget proof-file routing back to the statement bank. -/
def proof_file_routing_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_R : ConcreteEstimateProofFileRouting S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Proof-file routes can record explicitly that no proof is included here. -/
theorem proof_file_route_records_no_proof_included_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (R : ConcreteEstimateProofFileRoute S)
    (h : R.proofIncludedHere = false) :
    R.proofIncludedHere = false := by
  exact h

end R1980DLeanConcreteEstimateStatements
