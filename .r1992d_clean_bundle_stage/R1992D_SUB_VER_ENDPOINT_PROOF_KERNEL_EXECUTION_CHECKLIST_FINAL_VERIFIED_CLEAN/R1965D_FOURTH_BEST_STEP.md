# R1965D Fourth Best Step

The best next step after R1964D is not to attempt the whole analytic proof at
once.  The useful next move is to define realization interfaces for each actual
analytic block and connect those interfaces to the existing R1964D micro-target
bridge.

R1965D does this by adding:

- `ActualLiKernelInterface`,
- `AbelBoundaryInterface`,
- `ExplicitFormulaInterface`,
- packet estimate interfaces,
- obstruction and residual interfaces,
- `ActualAnalyticRealizationInterfaces`,
- `ActualAnalyticRealizationEvidence`,
- the bridge theorem
  `realized_interfaces_to_actual_li_target`.

This makes the remaining hard analytic work more precise.  Later versions can
replace the propositional targets in these interfaces by concrete definitions
and theorems for the actual Li kernel, Abel boundary, zeta explicit formula,
and packet estimates.
