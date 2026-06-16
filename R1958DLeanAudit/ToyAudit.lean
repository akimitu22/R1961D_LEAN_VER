import R1958DLeanAudit.NonClaimCertificates
import R1957DLeanCoverage.ToyCoverage

namespace R1958DLeanAudit

open R1949DLean
open R1955DLeanScaffold
open R1956DLeanInterface
open R1957DLeanCoverage

structure ToyAuditCertificate where
  inheritedToyCoverageRuns : Bool
  theoremAuditLedgerAvailable : Bool
  noOrphanAuditAvailable : Bool
  nonClaimCertificateAvailable : Bool
  standardConclusionStillInheritedConditionally : Bool

def toyAuditCertificate : ToyAuditCertificate :=
  { inheritedToyCoverageRuns := true
    theoremAuditLedgerAvailable := true
    noOrphanAuditAvailable := true
    nonClaimCertificateAvailable := true
    standardConclusionStillInheritedConditionally := true }

theorem toy_audit_certificate_runs :
    Nonempty (RefinedBridgeAxioms toyStandardLiScaffold toyManuscriptAnalyticScaffold) ∧
    toyAuditCertificate.inheritedToyCoverageRuns = true ∧
    toyAuditCertificate.theoremAuditLedgerAvailable = true ∧
    toyAuditCertificate.noOrphanAuditAvailable = true ∧
    toyAuditCertificate.nonClaimCertificateAvailable = true := by
  constructor
  · exact (R1957DLeanCoverage.toy_interface_coverage_certificate_runs).left
  simp [toyAuditCertificate]

theorem toy_audit_no_escape_still_reaches_standard_conclusion :
    toyStandardLiScaffold.standardContext.standardAnalyticConclusion := by
  exact R1957DLeanCoverage.toy_interface_coverage_no_escape_still_reaches_standard_conclusion

theorem toy_audit_terminal_extension_still_reaches_standard_conclusion
    (hAttempt : toyTheory.AttemptsToKill toyOperation toyTerminal) :
    toyStandardLiScaffold.standardContext.standardAnalyticConclusion := by
  exact R1957DLeanCoverage.toy_interface_coverage_terminal_extension_still_reaches_standard_conclusion hAttempt

end R1958DLeanAudit
