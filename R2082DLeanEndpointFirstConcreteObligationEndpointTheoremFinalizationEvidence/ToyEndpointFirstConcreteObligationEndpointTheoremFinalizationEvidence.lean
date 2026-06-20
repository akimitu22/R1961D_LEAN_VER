namespace R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence

structure ToyFinalizationEvidence (Target ExportStatement : Prop) : Prop where
  targetProof : Target
  exportStatementProof : ExportStatement

theorem toy_finalization_evidence_to_target
    {Target ExportStatement : Prop}
    (h : ToyFinalizationEvidence Target ExportStatement) : Target :=
  h.targetProof

theorem toy_finalization_evidence_to_export_statement
    {Target ExportStatement : Prop}
    (h : ToyFinalizationEvidence Target ExportStatement) : ExportStatement :=
  h.exportStatementProof

end R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence
