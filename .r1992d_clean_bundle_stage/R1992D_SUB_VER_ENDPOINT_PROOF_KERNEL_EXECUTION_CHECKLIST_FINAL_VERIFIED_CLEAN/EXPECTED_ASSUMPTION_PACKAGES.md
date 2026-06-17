# Expected local assumption packages

R1949D intentionally uses localized assumption packages. The package names and intended manuscript roles are as follows.

| Lean package | Locality | Manuscript role |
|---|---:|---|
| `AbelIdentityAxioms B` | object-local | quotient identity implies same-scale coordinate for the selected finite/Abel boundary bookkeeping object |
| `SameObjectPreservationAxioms B` | object-local | same-object preservation plus no-hidden-normalization yields coordinate closure, and coordinate closure yields finite-to-Abel closure necessity |
| `SupportExhaustionAxioms Th` | theory-local | every coherent operation in the selected theory has structural support |
| `LayerRealizationAxioms Th.layerCtx` | theory-context-local | every listed structural layer has a generator witness in the selected realization context |
| `GeneratorRealizationAxioms Th` | theory-local | structural support plus layer realization yields generator realization, and generator realization enters generated closure |
| `TerminalExtensionAxioms Th` | theory-local | generated operations preserve nonzero terminal classes, preservation excludes internal kill, and kill attempts classify into internal kill or terminal ideal extension |

The important R1949D hardening is that `LayerRealizable` is not defined as `True`. It is now an existential predicate over a layer-realization context.
