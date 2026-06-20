# R2081D Endpoint Theorem Finalization Gate Ledger

## Scope

R2081D consumes the R2080D replay record and exposes the endpoint theorem finalization gate.

## Positive claims

- the replay-side input is available to the gate;
- the replay result is recorded;
- the endpoint theorem finalization gate is executed here;
- the gate result is recorded here;
- the actual-Li target, statement, and checked candidate remain traceable.

## Deliberately withheld claims

- the finalization gate has not passed;
- the endpoint theorem is not finalized or proved;
- the endpoint theorem certificate is not claimed complete;
- RH is not proved;
- the full RH formalization is not completed.

## Formal markers

```text
certificateReplayInputAvailableHere = true
certificateReplayResultRecordedHere = true
endpointTheoremFinalizationGateExecutedHere = true
endpointTheoremFinalizationGateResultRecordedHere = true
endpointTheoremFinalizationGatePassedHere = false
endpointTheoremFinalizedHere = false
```
