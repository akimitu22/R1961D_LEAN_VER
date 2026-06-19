import R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary.EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundaryBridge
import R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap.ToyEndpointFirstConcreteObligationLocalDischargeClosureObligationMap

namespace R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R1962DLeanAnalyticRealization

private def mkCertificateBoundaryRequirement {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget)
    (name : String) (source : String) (idx : Nat) :
    EndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundaryRequirement A :=
  { boundaryRequirementName := name
    sourceClosureObligationName := source
    boundaryRequirementIndex := idx
    requiredCertificateInput := Unit
    requiredCertificateOutput := Unit
    expectedCertificateInvariant := True
    certificateTermIsProvidedHere := false
    certificateIsCheckedHere := false
    actualLiTarget := h }

/-- Toy constructor for R2058D local discharge closure certificate boundary. -/
def toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
      (R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap.toy_endpoint_first_concrete_obligation_local_discharge_closure_obligation_map h) :=
  { certificateBoundaryStageCount := 8
    endpointEstimateCertificateBoundary := mkCertificateBoundaryRequirement h "endpoint-estimate-closure-certificate-boundary" "endpoint-estimate-closure-obligation" 0
    explicitFormulaCertificateBoundary := mkCertificateBoundaryRequirement h "explicit-formula-closure-certificate-boundary" "explicit-formula-closure-obligation" 1
    transferAssemblyCertificateBoundary := mkCertificateBoundaryRequirement h "transfer-assembly-closure-certificate-boundary" "transfer-assembly-closure-obligation" 2
    finiteAbelReductionCertificateBoundary := mkCertificateBoundaryRequirement h "finite-abel-reduction-closure-certificate-boundary" "finite-abel-reduction-closure-obligation" 3
    proofKernelConnectionCertificateBoundary := mkCertificateBoundaryRequirement h "proof-kernel-connection-closure-certificate-boundary" "proof-kernel-connection-closure-obligation" 4
    inheritedClosureObligationMap := Unit
    recordsEndpointEstimateCertificateBoundary := True
    recordsExplicitFormulaCertificateBoundary := True
    recordsTransferAssemblyCertificateBoundary := True
    recordsFiniteAbelReductionCertificateBoundary := True
    recordsProofKernelConnectionCertificateBoundary := True
    respectsClosureObligationMapOpenStatus := True
    suppliesNoCertificateProofTerm := True
    checksNoCertificateHere := True
    permitsFutureClosureCertificateSlots := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary h)

end R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
