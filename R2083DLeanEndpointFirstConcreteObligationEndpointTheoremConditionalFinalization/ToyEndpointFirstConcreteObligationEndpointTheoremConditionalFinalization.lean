import R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence.ToyEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence

namespace R2083DLeanEndpointFirstConcreteObligationEndpointTheoremConditionalFinalization

def ToyConditionalFinalizationStatement (Target ExportStatement : Prop) : Prop :=
  R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence.ToyFinalizationEvidence
      Target ExportStatement →
    Target

theorem toy_conditional_finalization_statement_proved
    (Target ExportStatement : Prop) :
    ToyConditionalFinalizationStatement Target ExportStatement :=
  fun evidence => evidence.targetProof

end R2083DLeanEndpointFirstConcreteObligationEndpointTheoremConditionalFinalization
