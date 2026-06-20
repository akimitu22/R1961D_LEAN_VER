import R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness

namespace R2085DLeanEndpointFirstConcreteObligationEndpointClosedTargetExtraction

def EndpointClosedTargetStatement
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) : Prop :=
  R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness.EndpointDependencyClosureExists A →
    A.actualLiTarget

theorem endpoint_first_concrete_obligation_endpoint_closed_target_from_witness
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (w : R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness.EndpointDependencyClosureWitness A) :
    A.actualLiTarget :=
  R2083DLeanEndpointFirstConcreteObligationEndpointTheoremConditionalFinalization.endpoint_first_concrete_obligation_endpoint_theorem_conditional_finalization_from_exported_certificate
    (A := A) w.bi

theorem endpoint_first_concrete_obligation_endpoint_closed_target_extraction
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) :
    EndpointClosedTargetStatement A :=
  fun closureExists =>
    Nonempty.elim closureExists fun witness =>
      endpoint_first_concrete_obligation_endpoint_closed_target_from_witness witness

theorem endpoint_first_concrete_obligation_endpoint_closed_target_preserves_certificate_statement
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (w : R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness.EndpointDependencyClosureWitness A) :
    w.bi.certificateExportStatement :=
  R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness.endpoint_first_concrete_obligation_endpoint_dependency_closure_witness_preserves_certificate_statement w

end R2085DLeanEndpointFirstConcreteObligationEndpointClosedTargetExtraction
