# R1965D toy realization interface fix

This patch fixes `R1965DLeanRealizationInterfaces/ToyRealizationInterfaces.lean`.

The previous version declared `toy_realization_interfaces_produce_micro_target_system`
as a `theorem`, but its type is an `AnalyticMicroTargetSystem`, i.e. data rather
than a proposition. Lean requires theorem targets to be propositions, so the
object has been changed to a `def`.

This patch does not alter the mathematical scope of R1965D. It only corrects
the Lean declaration form so that the toy realization-interface layer can build.
