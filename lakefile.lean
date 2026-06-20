import Lake
open Lake DSL

package «R2097DLeanConcreteRealAbelLimitTheorem» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.31.0"


lean_lib «R1949DLean» where

lean_lib «R1952DLeanSupport» where

lean_lib «R1954DLeanBridge» where

lean_lib «R1955DLeanScaffold» where

lean_lib «R1956DLeanInterface» where

lean_lib «R1957DLeanCoverage» where

lean_lib «R1958DLeanAudit» where

lean_lib «R1959DLeanTransfer» where

lean_lib «R1960DLeanLimit» where

lean_lib «R1961DLeanPacket» where

lean_lib «R1962DLeanAnalyticRealization» where

lean_lib «R1963DLeanAnalyticDecomposition» where

lean_lib «R1964DLeanAnalyticMicroTargets» where

lean_lib «R1965DLeanRealizationInterfaces» where

lean_lib «R1966DLeanSourceCategories» where

lean_lib «R1967DLeanSourceEvidence» where

lean_lib «R1968DLeanAnchorClassification» where

lean_lib «R1969DLeanFormalizationPriority» where

lean_lib «R1970DLeanFirstFormalizationTarget» where

lean_lib «R1971DLeanAbelBoundarySkeleton» where

lean_lib «R1972DLeanToyAbelModel» where

lean_lib «R1973DLeanFiniteAbelIdentity» where

lean_lib «R1974DLeanFiniteAbelComponents» where

lean_lib «R1975DLeanFiniteAbelNormalization» where

lean_lib «R1976DLeanFiniteAbelEstimateGates» where

lean_lib «R1977DLeanEstimateDependencyClosure» where

lean_lib «R1978DLeanQuantitativeEstimateMatrix» where

lean_lib «R1979DLeanConcreteEstimateBlueprint» where

lean_lib «R1980DLeanConcreteEstimateStatements» where

lean_lib «R1981DLeanConcreteProofSkeletons» where

lean_lib «R1982DLeanProofObligationExecutionPlan» where

lean_lib «R1983DLeanMainManuscriptAnchoredVerificationSpine» where

lean_lib «R1984DLeanManuscriptObligationImplementationQueue» where

lean_lib «R1985DLeanEndpointFirstImplementationBlock» where

lean_lib «R1986DLeanEndpointStatementGroup» where

lean_lib «R1987DLeanEndpointProofKernelInterface» where

lean_lib «R1988DLeanEndpointKernelAxiomBoundary» where

lean_lib «R1989DLeanEndpointConcreteLemmaStubs» where

lean_lib «R1990DLeanEndpointConcreteLemmaStatementBank» where

lean_lib «R1991DLeanEndpointConcreteProofRouteBank» where

lean_lib «R1992DLeanEndpointProofKernelExecutionChecklist» where

lean_lib «R1993DLeanEndpointProofKernelImplementationLedger» where

lean_lib «R1994DLeanEndpointProofKernelExecutionInterface» where

lean_lib «R1995DLeanEndpointFirstExecutableSkeleton» where

lean_lib «R1996DLeanEndpointExecutableKernelBoundary» where

lean_lib «R1997DLeanEndpointExecutableProofKernelStub» where

lean_lib «R1998DLeanEndpointExecutableProofKernelBodyPlan» where

lean_lib «R1999DLeanEndpointFirstConcreteDischargeInterface» where

lean_lib «R2000DLeanEndpointConcreteDischargeObligationSlots» where

lean_lib «R2001DLeanEndpointFirstDischargeCertificateInterface» where

lean_lib «R2002DLeanEndpointFirstCertificatePayloadSlots» where

lean_lib «R2003DLeanEndpointFirstDischargeAttemptBoundary» where

lean_lib «R2004DLeanEndpointFirstDischargeAttemptInputSlots» where

lean_lib «R2005DLeanEndpointFirstDischargeExecutionPrecheck» where

lean_lib «R2006DLeanEndpointFirstDischargeExecutionGate» where

lean_lib «R2007DLeanEndpointFirstDischargeDryRunTrace» where

lean_lib «R2008DLeanEndpointFirstDischargeDryRunResultSlots» where

lean_lib «R2009DLeanEndpointFirstDischargeWitnessHandoffInterface» where

lean_lib «R2010DLeanEndpointFirstWitnessValidationSlots» where

lean_lib «R2011DLeanEndpointFirstDischargeExecutionHandoffBoundary» where

lean_lib «R2012DLeanEndpointFirstExecutionHandoffPayloadSlots» where

lean_lib «R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary» where

lean_lib «R2014DLeanEndpointFirstRehearsalResultSlots» where

lean_lib «R2015DLeanEndpointFirstExecutionWitnessPacketBoundary» where

lean_lib «R2016DLeanEndpointFirstExecutionWitnessValidationSlots» where

lean_lib «R2019DLeanEndpointFirstExecutableAttemptStartBoundary» where

lean_lib «R2017DLeanEndpointFirstExecutableAttemptShellBoundary» where
  roots := #[`R2017DLeanEndpointFirstExecutableAttemptShellBoundary]

lean_lib «R2018DLeanEndpointFirstExecutableAttemptInputSlots» where

lean_lib «R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots» where

lean_lib «R2021DLeanEndpointFirstProofKernelInvocationBoundary» where

lean_lib «R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots» where

lean_lib «R2023DLeanEndpointFirstProofKernelExecutionBoundary» where

lean_lib «R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots» where
  roots := #[`R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots]

lean_lib «R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary» where
  roots := #[`R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary]

lean_lib «R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots» where
  roots := #[`R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots]

lean_lib «R2027DLeanEndpointFirstEstimateHandoffBoundary» where
  roots := #[`R2027DLeanEndpointFirstEstimateHandoffBoundary]

lean_lib «R2028DLeanEndpointFirstEstimateHandoffCertificateSlots» where
  roots := #[`R2028DLeanEndpointFirstEstimateHandoffCertificateSlots]

lean_lib «R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary» where
  roots := #[`R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary]

lean_lib «R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots» where
  roots := #[`R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots]

lean_lib «R2031DLeanEndpointFirstRHTargetIntegrationBoundary» where
  roots := #[`R2031DLeanEndpointFirstRHTargetIntegrationBoundary]


lean_lib «R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots» where
  roots := #[`R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots]

lean_lib «R2033DLeanEndpointFinalTheoremHandoffBoundary» where
  roots := #[`R2033DLeanEndpointFinalTheoremHandoffBoundary]

lean_lib «R2034DLeanEndpointFinalTheoremHandoffCertificateSlots» where
  roots := #[`R2034DLeanEndpointFinalTheoremHandoffCertificateSlots]
lean_lib «R2035DLeanEndpointFinalRHClaimBoundary» where
  roots := #[`R2035DLeanEndpointFinalRHClaimBoundary]

lean_lib R2036DLeanEndpointFinalRHClaimCertificateSlots where
  roots := #[`R2036DLeanEndpointFinalRHClaimCertificateSlots]
lean_lib R2037DLeanEndpointFinalPackageClosureBoundary where
  roots := #[`R2037DLeanEndpointFinalPackageClosureBoundary]

lean_lib R2038DLeanEndpointFinalPackageClosureCertificateSlots where
  roots := #[`R2038DLeanEndpointFinalPackageClosureCertificateSlots]
lean_lib R2039DLeanEndpointFinalArchiveExportBoundary where
  roots := #[`R2039DLeanEndpointFinalArchiveExportBoundary]

lean_lib R2040DLeanEndpointFinalArchiveExportCertificateSlots where
  roots := #[`R2040DLeanEndpointFinalArchiveExportCertificateSlots]
lean_lib R2041DLeanEndpointFinalSubmissionBoundary where
  roots := #[`R2041DLeanEndpointFinalSubmissionBoundary]

lean_lib R2042DLeanEndpointFinalSubmissionCertificateSlots where
  roots := #[`R2042DLeanEndpointFinalSubmissionCertificateSlots]
lean_lib R2043DLeanEndpointFinalVerificationBoundary where
  roots := #[`R2043DLeanEndpointFinalVerificationBoundary]

lean_lib R2044DLeanEndpointProofObligationExecutionQueue where
  roots := #[`R2044DLeanEndpointProofObligationExecutionQueue]
lean_lib R2045DLeanEndpointFirstConcreteProofObligationBoundary where
  roots := #[`R2045DLeanEndpointFirstConcreteProofObligationBoundary]

lean_lib R2046DLeanEndpointFirstConcreteObligationDecompositionSlots where
  roots := #[`R2046DLeanEndpointFirstConcreteObligationDecompositionSlots]
lean_lib R2047DLeanEndpointFirstConcreteObligationLemmaStatementBank where
  roots := #[`R2047DLeanEndpointFirstConcreteObligationLemmaStatementBank]

lean_lib R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph where
  roots := #[`R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph]
lean_lib R2049DLeanEndpointFirstConcreteObligationProofReadinessChecklist where
  roots := #[`R2049DLeanEndpointFirstConcreteObligationProofReadinessChecklist]

lean_lib R2050DLeanEndpointFirstConcreteObligationExecutableProofAttemptEnvelope where
  roots := #[`R2050DLeanEndpointFirstConcreteObligationExecutableProofAttemptEnvelope]
lean_lib R2051DLeanEndpointFirstConcreteObligationProofAttemptTraceLedger where
  roots := #[`R2051DLeanEndpointFirstConcreteObligationProofAttemptTraceLedger]

lean_lib R2052DLeanEndpointFirstConcreteObligationTraceReplayCheckpoint where
  roots := #[`R2052DLeanEndpointFirstConcreteObligationTraceReplayCheckpoint]
lean_lib R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry where
  roots := #[`R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry]

lean_lib R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder where
  roots := #[`R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder]
lean_lib R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary where
  roots := #[`R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary]

lean_lib R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan where
  roots := #[`R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan]
lean_lib R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap where
  roots := #[`R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap]

lean_lib R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary where
  roots := #[`R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary]
lean_lib R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots where
  roots := #[`R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots]

lean_lib R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary where
  roots := #[`R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary]
lean_lib R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface where
  roots := #[`R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface]

lean_lib R2062DLeanEndpointFirstConcreteObligationWitnessKernel where
  roots := #[`R2062DLeanEndpointFirstConcreteObligationWitnessKernel]
lean_lib R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt where
  roots := #[`R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt]

lean_lib R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply where
  roots := #[`R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply]

lean_lib R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution where
  roots := #[`R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution]

lean_lib R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure where
  roots := #[`R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure]

lean_lib R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport where
  roots := #[`R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport]

lean_lib R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration where
  roots := #[`R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration]

lean_lib R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff where
  roots := #[`R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff]

lean_lib R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly where
  roots := #[`R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly]

lean_lib R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary where
  roots := #[`R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary]

lean_lib R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate where
  roots := #[`R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate]

lean_lib R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate where
  roots := #[`R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate]

lean_lib R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate where
  roots := #[`R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate]

lean_lib R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff where
  roots := #[`R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff]

lean_lib R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate where
  roots := #[`R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate]

lean_lib R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary where
  roots := #[`R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary]

lean_lib R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation where
  roots := #[`R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation]

@[default_target]
lean_lib R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport where
  roots := #[`R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport]

@[default_target]
lean_lib R2080DLeanEndpointFirstConcreteObligationEndpointCertificateReplay where
  roots := #[`R2080DLeanEndpointFirstConcreteObligationEndpointCertificateReplay]

@[default_target]
lean_lib R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate where
  roots := #[`R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate]

@[default_target]
lean_lib R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence where
  roots := #[`R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence]

@[default_target]
lean_lib R2083DLeanEndpointFirstConcreteObligationEndpointTheoremConditionalFinalization where
  roots := #[`R2083DLeanEndpointFirstConcreteObligationEndpointTheoremConditionalFinalization]

@[default_target]
lean_lib R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness where
  roots := #[`R2084DLeanEndpointFirstConcreteObligationEndpointDependencyClosureWitness]

@[default_target]
lean_lib R2085DLeanEndpointFirstConcreteObligationEndpointClosedTargetExtraction where
  roots := #[`R2085DLeanEndpointFirstConcreteObligationEndpointClosedTargetExtraction]

@[default_target]
lean_lib R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence where
  roots := #[`R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence]

@[default_target]
lean_lib R2087DLeanEndpointFirstConcreteObligationActualLiTargetDischarge where
  roots := #[`R2087DLeanEndpointFirstConcreteObligationActualLiTargetDischarge]

@[default_target]
lean_lib R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge where
  roots := #[`R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge]

@[default_target]
lean_lib R2089DLeanEndpointFirstConcreteObligationAbelBoundarySourceDischarge where
  roots := #[`R2089DLeanEndpointFirstConcreteObligationAbelBoundarySourceDischarge]

@[default_target]
lean_lib R2090DLeanConcreteFiniteAbelSummation where
  roots := #[`R2090DLeanConcreteFiniteAbelSummation]

@[default_target]
lean_lib R2091DLeanConcreteRealAbelBoundary where
  roots := #[`R2091DLeanConcreteRealAbelBoundary]

@[default_target]
lean_lib R2092DLeanGeometricAbelKernelMassLimit where
  roots := #[`R2092DLeanGeometricAbelKernelMassLimit]

@[default_target]
lean_lib R2093DLeanGeometricAbelKernelInfiniteNormalization where
  roots := #[`R2093DLeanGeometricAbelKernelInfiniteNormalization]

@[default_target]
lean_lib R2094DLeanConcreteBoundedAbelAverage where
  roots := #[`R2094DLeanConcreteBoundedAbelAverage]

@[default_target]
lean_lib R2095DLeanConcreteAbelAverageStability where
  roots := #[`R2095DLeanConcreteAbelAverageStability]

@[default_target]
lean_lib R2096DLeanInfiniteAbelSummationIdentity where
  roots := #[`R2096DLeanInfiniteAbelSummationIdentity]

@[default_target]
lean_lib R2097DLeanConcreteRealAbelLimitTheorem where
  roots := #[`R2097DLeanConcreteRealAbelLimitTheorem]
