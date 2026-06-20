namespace R2080DLeanEndpointFirstConcreteObligationEndpointCertificateReplay

structure ToyEndpointCertificateReplay where
  packetAvailable : Bool
  replayExecuted : Bool
  resultRecorded : Bool
  replayAccepted : Bool
deriving Repr, DecidableEq

def toyEndpointCertificateReplay : ToyEndpointCertificateReplay :=
  { packetAvailable := true
    replayExecuted := true
    resultRecorded := true
    replayAccepted := false }

theorem toy_endpoint_certificate_replay_records_execution :
    toyEndpointCertificateReplay.replayExecuted = true /\
      toyEndpointCertificateReplay.resultRecorded = true :=
  And.intro rfl rfl

theorem toy_endpoint_certificate_replay_does_not_invent_acceptance :
    toyEndpointCertificateReplay.replayAccepted = false :=
  rfl

end R2080DLeanEndpointFirstConcreteObligationEndpointCertificateReplay
