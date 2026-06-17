# R1962D analytic obligation ledger

This ledger identifies the exact concrete analytic obligations that must be realized to instantiate the R1961D packet-balance interface.

| Lean field | Mathematical role | Status in this step |
|---|---|---|
| `actualLiKernelRegistered` | actual Li kernel / canonical Li phase object is fixed | target only |
| `actualAbelBoundaryRegistered` | actual Abel-boundary object is fixed | target only |
| `actualExplicitFormulaAvailable` | standard prime-zero explicit formula is available in the preserved quotient | target only |
| `primePacketEstimate` | prime-side packet is controlled | target only |
| `zeroPacketEstimate` | zero-side packet is controlled | target only |
| `endpointPacketEstimate` | endpoint/boundary packet is controlled | target only |
| `scaleErrorAndLittleOhEstimate` | same-scale error and uniform little-oh terms are controlled | target only |
| `obstructionLedgerCompatibility` | obstruction quotient / ledger compatibility is maintained | target only |
| `terminalNoHiddenResidual` | terminal residual packet is not hidden | target only |
| `actualLiTarget` | actual Li target produced by these obligations | target only |

## Bridge to R1961D

`toExplicitPacketBalanceSystem` maps the concrete obligations to the R1961D fields:

| R1961D field | R1962D source |
|---|---|
| `primePacketControlled` | common actual Li/Abel/formula anchor + prime packet estimate |
| `zeroPacketControlled` | common actual Li/Abel/formula anchor + zero packet estimate |
| `endpointPacketControlled` | common actual Li/Abel/formula anchor + endpoint packet estimate |
| `scaleErrorPacketControlled` | common actual Li/Abel/formula anchor + scale-error/little-oh estimate |
| `obstructionLedgerCompatible` | obstruction ledger compatibility |
| `noHiddenResidualPacket` | terminal no-hidden-residual statement |
| `liTarget` | actual Li target |

## Immediate next task after this file builds

The next real analytic target should be one field only, not all fields at once.  The most useful first field is usually:

```lean
actualExplicitFormulaAvailable
```

because the prime, zero, endpoint, and scale-error packets all depend on the exact explicit-formula decomposition that is being preserved.
