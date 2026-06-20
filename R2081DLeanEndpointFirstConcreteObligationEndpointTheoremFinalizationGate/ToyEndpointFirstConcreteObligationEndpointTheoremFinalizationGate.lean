namespace R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate

structure ToyEndpointTheoremFinalizationGate where
  replayResultAvailable : Bool
  gateExecuted : Bool
  gateResultRecorded : Bool
  gatePassed : Bool
  theoremFinalized : Bool
deriving Repr, DecidableEq

def toyEndpointTheoremFinalizationGate : ToyEndpointTheoremFinalizationGate :=
  { replayResultAvailable := true
    gateExecuted := true
    gateResultRecorded := true
    gatePassed := false
    theoremFinalized := false }

theorem toy_endpoint_theorem_finalization_gate_records_execution :
    toyEndpointTheoremFinalizationGate.gateExecuted = true /\
      toyEndpointTheoremFinalizationGate.gateResultRecorded = true :=
  And.intro rfl rfl

theorem toy_endpoint_theorem_finalization_gate_does_not_invent_finalization :
    toyEndpointTheoremFinalizationGate.gatePassed = false /\
      toyEndpointTheoremFinalizationGate.theoremFinalized = false :=
  And.intro rfl rfl

end R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate
