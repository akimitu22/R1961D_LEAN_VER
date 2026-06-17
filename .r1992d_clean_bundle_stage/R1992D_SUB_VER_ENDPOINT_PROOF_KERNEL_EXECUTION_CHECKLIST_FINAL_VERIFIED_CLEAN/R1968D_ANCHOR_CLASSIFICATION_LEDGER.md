# R1968D Anchor Classification Ledger

R1968D classifies the R1967D source-evidence slots by the kind of formal anchor expected in later concrete analytic formalization work.

## Anchor kinds

- `mathlibAnchor`: background objects or general analytic infrastructure expected to be supplied by existing library material or routine library extensions.
- `externalClassicalTheoremAnchor`: classical analytic-number-theoretic inputs, such as explicit-formula identities, that must be imported or formalized from accepted theorems.
- `manuscriptTheoremAnchor`: manuscript-specific bridge, normalization, compatibility, or terminal assertions that must be formalized from the paper.
- `newAnalyticFormalizationAnchor`: genuinely new concrete Lean formalization work, especially Li-kernel, Abel-boundary, packet-object, and packet-estimate construction.
- `auditOrLedgerAnchor`: audit/ledger entries that track compatibility rather than proving analytic estimates.

## Lean bridge

The main Lean bridge is:

```lean
R1968DLeanAnchorClassification.anchor_classification_to_actual_li_target
```

It records:

```text
anchor classification
→ R1967D source-evidence slots
→ R1966D concrete source categories
→ R1965D realization interfaces
→ R1964D micro-targets
→ R1963D decomposition slots
→ R1962D analytic obligations
→ R1961D packet-balance layer
→ actual Li target
```

## Non-claim boundary

R1968D does not prove the concrete Li kernel, Abel boundary, explicit formula, packet estimates, Li criterion, or RH. It classifies what kind of anchor each remaining source-evidence item will require.
