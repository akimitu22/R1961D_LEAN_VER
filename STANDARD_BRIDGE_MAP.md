# Standard Analytic Bridge Map

The R1954D bridge layer introduces the following standard analytic bridge components.

| Lean item | Meaning | Status |
|---|---|---|
| `StandardRHBridgeContext.rhStatement` | Standard RH-side target statement | bridge target, not proved |
| `StandardRHBridgeContext.liCriterionTarget` | Li-criterion-side target | bridge target, not proved |
| `StandardRHBridgeContext.standardAnalyticConclusion` | standard analytic conclusion reached through bridge axioms | conditional target |
| `hasRiemannZetaObject` | zeta-function object availability | bridge obligation |
| `hasLiCoefficients` | Li coefficients availability | bridge obligation |
| `hasLiKernel` | Li-kernel representation availability | bridge obligation |
| `hasExplicitFormula` | explicit-formula representation availability | bridge obligation |
| `hasZeroCounting` | zero-counting / zero-packet representation availability | bridge obligation |
| `hasAbelBoundaryPassage` | Abel boundary passage availability | bridge obligation |
| `hasAdmissibleScaleTopology` | admissible scale topology / uniform little-oh availability | bridge obligation |
| `hasObstructionQuotient` | obstruction quotient availability | bridge obligation |

The central R1954D theorem is conditional:

```lean
bridge_conditional_no_escape_to_standard_conclusion
```

It states that, given the verified R1952D/R1953D conditional chain and bridge axioms from the manuscript objects to the standard analytic target, the standard analytic conclusion follows.
