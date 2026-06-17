# R1949D proof-obligation map

This file records the field-level obligations represented in `R1949DLean/ProofObligationMap.lean`.

## Finite-to-Abel side

| Label | Lean label | Package | Meaning |
|---|---|---|---|
| PO-FA-1 | `poFA1QuotientIdentityToSameScale` | `AbelIdentityAxioms B` | quotient identity yields same-scale coordinate |
| PO-FA-2 | `poFA2SameObjectNoHiddenToClosure` | `SameObjectPreservationAxioms B` | same-object preservation plus no-hidden-normalization yields coordinate closure |
| PO-FA-3 | `poFA3CoordinateClosureToFiniteToAbel` | `SameObjectPreservationAxioms B` | coordinate closure forces finite-to-Abel closure necessity |

## Structural support and generator side

| Label | Lean label | Package | Meaning |
|---|---|---|---|
| PO-SS-1 | `poSS1CoherentSupportExhaustion` | `SupportExhaustionAxioms Th` | coherent closure implies existence of structural support |
| PO-LR-1 | `poLR1ListedLayerRealizability` | `LayerRealizationAxioms Th.layerCtx` | each listed structural layer has a generator witness in the selected context |
| PO-GR-1 | `poGR1SupportActionGeneratorRealization` | `GeneratorRealizationAxioms Th` | support action plus layer realization yields generator realization |
| PO-GR-2 | `poGR2GeneratorEntryIntoGeneratedClosure` | `GeneratorRealizationAxioms Th` | generator realization enters generated closure |

## Terminal side

| Label | Lean label | Package | Meaning |
|---|---|---|---|
| PO-TR-1 | `poTR1GeneratedPreservesTerminal` | `TerminalExtensionAxioms Th` | generated operations preserve nonzero terminal classes |
| PO-TR-2 | `poTR2PreservationExcludesInternalKill` | `TerminalExtensionAxioms Th` | preservation excludes internal killing of the terminal class |
| PO-TR-3 | `poTR3KillAttemptClassification` | `TerminalExtensionAxioms Th` | every kill attempt is either internal or forces terminal ideal extension |

## Main theorem profiles

| Lean theorem/profile | Obligations used |
|---|---|
| `finite_to_abel_from_bookkeeping` / `finiteToAbelProfile` | PO-FA-1, PO-FA-2, PO-FA-3 |
| `coherent_closure_normal_form_chain` / `structuralGeneratedClosureProfile` | PO-SS-1, PO-LR-1, PO-GR-1, PO-GR-2 |
| `terminal_no_escape_chain` / `terminalNoEscapeProfile` | PO-TR-1, PO-TR-2 |
| `kill_attempt_forces_terminal_ideal_extension` / `terminalExtensionProfile` | PO-TR-1, PO-TR-2, PO-TR-3 |
| `conditional_main_no_escape_from_all_obligations` / `mainNoEscapeProfile` | PO-FA-1, PO-FA-2, PO-FA-3, PO-SS-1, PO-LR-1, PO-GR-1, PO-GR-2, PO-TR-1, PO-TR-2 |
| `conditional_kill_attempt_forces_terminal_extension` / `mainTerminalExtensionProfile` | PO-FA-1, PO-FA-2, PO-FA-3, PO-SS-1, PO-LR-1, PO-GR-1, PO-GR-2, PO-TR-1, PO-TR-2, PO-TR-3 |

## Limitation

The map is a review-facing formal index. It is not an automated extraction of all theorem dependencies from Lean's kernel. Its value is that the manuscript's remaining mathematical obligations are made explicit, named, localized, and checked against the conditional main theorem profiles.


## R1956D analytic interface addition

R1956D adds a pre-formal analytic interface layer above R1955D. It identifies analytic input/output interfaces, estimate slots, and mathlib-facing anchors. It does not claim a complete Lean formalization of the zeta function, Li coefficients, explicit formula, Abel boundary passage, or analytic estimates.
