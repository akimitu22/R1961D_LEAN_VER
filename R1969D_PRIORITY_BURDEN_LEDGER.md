# R1969D priority/burden ledger

## Core classifications

R1969D introduces three classification axes:

1. `FormalizationPriority`
   - `immediateCore`
   - `high`
   - `medium`
   - `low`
   - `ledgerOnly`

2. `DependencySeverity`
   - `blockingCore`
   - `critical`
   - `major`
   - `moderate`
   - `auditOnly`

3. `RemainingProofBurden`
   - `newAnalyticCoreFormalization`
   - `externalClassicalTheoremIntegration`
   - `manuscriptBridgeFormalization`
   - `existingLibraryOrRoutineFormalization`
   - `auditOrLedgerCheck`

## Default mapping from R1968D anchor classes

| R1968D anchor class | Priority | Severity | Burden |
|---|---|---|---|
| new analytic formalization | immediate core | blocking core | new analytic core formalization |
| external classical theorem | high | critical | external theorem integration |
| manuscript theorem | high | major | manuscript bridge formalization |
| mathlib anchor | medium | moderate | existing library/routine formalization |
| audit/ledger anchor | ledger only | audit only | audit or ledger check |

## Non-claim boundary

R1969D is an ordering layer.  It does not assert that the analytic objects or estimates are already formalized.  Its role is to make the remaining burden explicit and machine-checkable.
