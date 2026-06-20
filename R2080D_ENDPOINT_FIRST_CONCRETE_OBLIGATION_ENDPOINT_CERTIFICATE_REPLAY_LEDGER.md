# R2080D Endpoint Certificate Replay Ledger

## Scope

R2080D consumes the certificate boundary packet exported by R2079D and records the first replay-side state.

## Positive claims

- the R2079D export packet is available to the replay layer;
- endpoint certificate replay is executed here;
- the replay result is recorded here;
- the existing actual-Li target, statement, checked candidate, and closure-gate result remain traceable.

## Deliberately withheld claims

- replay acceptance is not established;
- the endpoint theorem certificate is not completed;
- the endpoint theorem is not proved;
- RH is not proved;
- the full RH formalization is not completed.

## Formal markers

```text
exportPacketAvailableHere = true
endpointCertificateReplayExecutedHere = true
endpointCertificateReplayResultRecordedHere = true
endpointCertificateReplayAcceptedHere = false
endpointTheoremCertificateCompletedHere = false
```
