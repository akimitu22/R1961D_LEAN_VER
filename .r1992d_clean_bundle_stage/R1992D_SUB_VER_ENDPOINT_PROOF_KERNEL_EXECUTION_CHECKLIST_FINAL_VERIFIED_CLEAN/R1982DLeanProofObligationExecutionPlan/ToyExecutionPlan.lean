import R1982DLeanProofObligationExecutionPlan.ExecutionBridge

namespace R1982DLeanProofObligationExecutionPlan

open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Generic toy-style check: forgetting an execution plan returns its input statement bank. -/
theorem toy_execution_plan_to_statement_bank_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) :
    execution_plan_to_statement_bank E = S := by
  rfl

/-- Generic toy-style check: the R1982D bridge preserves the inherited actual-Li target. -/
theorem toy_execution_plan_to_actual_li_target_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) :
    A.actualLiTarget := by
  exact concrete_proof_obligation_execution_plan_to_actual_li_target E

/-- Generic toy-style check: forgetting an execution order returns the ambient plan. -/
theorem toy_execution_order_to_plan_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (O : ConcreteProofObligationExecutionOrder E) :
    execution_order_to_plan O = E := by
  rfl

end R1982DLeanProofObligationExecutionPlan
