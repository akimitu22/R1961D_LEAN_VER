# R1990D fix: restore aggregate import spine

This patch fixes the R1990D default build graph.

The original R1990D aggregate module imported only its own four submodules.
Those submodules reached earlier layers through selected bridge/slot imports, but
not through the R1989D aggregate module. As a result, several prior toy and
aggregate modules were pruned from the `lake build` graph, and the total job
count fell from the verified R1989D value.

The fix adds:

```lean
import R1989DLeanEndpointConcreteLemmaStubs
```

at the top of:

```text
R1990DLeanEndpointConcreteLemmaStatementBank.lean
```

This restores the verified aggregate spine while keeping the R1990D statement
bank layer unchanged. It does not add endpoint estimates, boundary-error
estimates, remainder/uniformity estimates, sign-transfer estimates, the explicit
formula, or RH.
