import R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph.EndpointFirstConcreteObligationLemmaDependencyGraphBridge
import R2047DLeanEndpointFirstConcreteObligationLemmaStatementBank.ToyEndpointFirstConcreteObligationLemmaStatementBank

namespace R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph

open R2047DLeanEndpointFirstConcreteObligationLemmaStatementBank
open R2046DLeanEndpointFirstConcreteObligationDecompositionSlots
open R2045DLeanEndpointFirstConcreteProofObligationBoundary
open R2044DLeanEndpointProofObligationExecutionQueue
open R2043DLeanEndpointFinalVerificationBoundary
open R2042DLeanEndpointFinalSubmissionCertificateSlots
open R2041DLeanEndpointFinalSubmissionBoundary
open R2040DLeanEndpointFinalArchiveExportCertificateSlots
open R2039DLeanEndpointFinalArchiveExportBoundary
open R2038DLeanEndpointFinalPackageClosureCertificateSlots
open R2037DLeanEndpointFinalPackageClosureBoundary
open R2036DLeanEndpointFinalRHClaimCertificateSlots
open R2035DLeanEndpointFinalRHClaimBoundary
open R2034DLeanEndpointFinalTheoremHandoffCertificateSlots
open R2033DLeanEndpointFinalTheoremHandoffBoundary
open R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots
open R2031DLeanEndpointFirstRHTargetIntegrationBoundary
open R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots
open R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary
open R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Toy constructor for R2048D first concrete lemma dependency graph. -/
def toy_endpoint_first_concrete_obligation_lemma_dependency_graph
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLemmaDependencyGraph
      (R2047DLeanEndpointFirstConcreteObligationLemmaStatementBank.toy_endpoint_first_concrete_obligation_lemma_statement_bank h) :=
  { dependencyGraphStageCount := 7
    endpointEstimateToTransferEdge :=
      { edgeName := "endpoint-estimate-to-transfer"
        edgeIndex := 0
        sourceLemmaName := "endpoint-estimate-concrete-bound-lemma"
        targetLemmaName := "transfer-assembly-lemma"
        dependencyCondition := True
        sourceAlreadyProved := false
        targetAlreadyProved := false
        preservesEndpointEstimateInput := true
        preservesExplicitFormulaInput := false
        preservesTransferInput := true
        preservesFiniteAbelInput := false
        actualLiTarget := h }
    explicitFormulaToTransferEdge :=
      { edgeName := "explicit-formula-to-transfer"
        edgeIndex := 1
        sourceLemmaName := "explicit-formula-bridge-lemma"
        targetLemmaName := "transfer-assembly-lemma"
        dependencyCondition := True
        sourceAlreadyProved := false
        targetAlreadyProved := false
        preservesEndpointEstimateInput := false
        preservesExplicitFormulaInput := true
        preservesTransferInput := true
        preservesFiniteAbelInput := false
        actualLiTarget := h }
    transferToFiniteAbelReductionEdge :=
      { edgeName := "transfer-to-finite-abel-reduction"
        edgeIndex := 2
        sourceLemmaName := "transfer-assembly-lemma"
        targetLemmaName := "finite-abel-reduction-lemma"
        dependencyCondition := True
        sourceAlreadyProved := false
        targetAlreadyProved := false
        preservesEndpointEstimateInput := true
        preservesExplicitFormulaInput := true
        preservesTransferInput := true
        preservesFiniteAbelInput := true
        actualLiTarget := h }
    finiteAbelReductionToKernelEdge :=
      { edgeName := "finite-abel-reduction-to-kernel-connection"
        edgeIndex := 3
        sourceLemmaName := "finite-abel-reduction-lemma"
        targetLemmaName := "proof-kernel-connection-lemma"
        dependencyCondition := True
        sourceAlreadyProved := false
        targetAlreadyProved := false
        preservesEndpointEstimateInput := false
        preservesExplicitFormulaInput := false
        preservesTransferInput := true
        preservesFiniteAbelInput := true
        actualLiTarget := h }
    endpointEstimateToKernelEdge :=
      { edgeName := "endpoint-estimate-to-kernel-connection"
        edgeIndex := 4
        sourceLemmaName := "endpoint-estimate-concrete-bound-lemma"
        targetLemmaName := "proof-kernel-connection-lemma"
        dependencyCondition := True
        sourceAlreadyProved := false
        targetAlreadyProved := false
        preservesEndpointEstimateInput := true
        preservesExplicitFormulaInput := true
        preservesTransferInput := true
        preservesFiniteAbelInput := true
        actualLiTarget := h }
    inheritedLemmaStatementBank := Unit
    recordsEndpointEstimateDependency := True
    recordsExplicitFormulaDependency := True
    recordsTransferAssemblyDependency := True
    recordsFiniteAbelReductionDependency := True
    recordsProofKernelConnectionDependency := True
    allDependencyGraphNodesStillOpen := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_lemma_dependency_graph_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_lemma_dependency_graph_to_actual_li_target
    (R2047DLeanEndpointFirstConcreteObligationLemmaStatementBank.toy_endpoint_first_concrete_obligation_lemma_statement_bank h)
    (toy_endpoint_first_concrete_obligation_lemma_dependency_graph h)

end R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph
