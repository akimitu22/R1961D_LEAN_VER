import R2083DLeanEndpointFirstConcreteObligationEndpointTheoremConditionalFinalization

namespace R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness

/--
The complete dependent input chain needed by the endpoint theorem.
This is data, not a boolean status record: constructing a value supplies every
anchored layer from `R2067Export` through the exported certificate `BI`.
-/
structure EndpointDependencyClosureWitness
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) where
  r2067Export : Type
  ax : R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration.MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) r2067Export
  ay : R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff.MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff (A := A) ax
  az : R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly (A := A) ay
  ba : R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary (A := A) az
  bb : R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate (A := A) ba
  bc : R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate (A := A) bb
  bd : R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate.MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate (A := A) bc
  be : R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff (A := A) bd
  bf : R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate (A := A) be
  bg : R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary (A := A) bf
  bh : R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation (A := A) bg
  bi : R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport (A := A) bh

def EndpointDependencyClosureExists
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) : Prop :=
  Nonempty (EndpointDependencyClosureWitness A)

def endpoint_first_concrete_obligation_endpoint_dependency_closure_witness_to_finalization_evidence
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (w : EndpointDependencyClosureWitness A) :
    R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence.EndpointTheoremFinalizationEvidence
      (A := A) w.bi :=
  R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence.endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence
    (A := A) w.bi

theorem endpoint_first_concrete_obligation_endpoint_dependency_closure_witness_preserves_certificate_statement
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (w : EndpointDependencyClosureWitness A) :
    w.bi.certificateExportStatement :=
  (endpoint_first_concrete_obligation_endpoint_dependency_closure_witness_to_finalization_evidence w).certificateExportStatement

end R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness
