import R1958DLeanAudit.NoOrphanCertificates

namespace R1958DLeanAudit

inductive AnalyticNonClaimKind where
  | zetaTheory
  | liCriterion
  | liKernelIdentity
  | abelBoundaryPassage
  | explicitFormula
  | riemannVonMangoldtFormula
  | uniformLittleOhEstimates
  | terminalPacketEstimates
  | fullRHFormalization
  deriving Repr, DecidableEq

structure NonClaimEntry where
  kind : AnalyticNonClaimKind
  description : String
  claimedHere : Bool

def nonClaimLedger : List NonClaimEntry :=
  [ { kind := AnalyticNonClaimKind.zetaTheory
      description := "analytic theory of the Riemann zeta function"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.liCriterion
      description := "Li criterion"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.liKernelIdentity
      description := "actual Li-kernel identity"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.abelBoundaryPassage
      description := "Abel boundary passage estimates"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.explicitFormula
      description := "standard explicit formula package"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.riemannVonMangoldtFormula
      description := "Riemann-von Mangoldt formula"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.uniformLittleOhEstimates
      description := "uniform little-oh estimates"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.terminalPacketEstimates
      description := "terminal prime, zero, and endpoint packet estimates"
      claimedHere := false },
    { kind := AnalyticNonClaimKind.fullRHFormalization
      description := "full Lean formalization of RH or its analytic number theory"
      claimedHere := false } ]

structure NonClaimCertificate where
  ledger : List NonClaimEntry
  claimsZetaTheory : Bool
  claimsLiCriterion : Bool
  claimsLiKernelIdentity : Bool
  claimsAbelBoundaryPassage : Bool
  claimsExplicitFormula : Bool
  claimsRiemannVonMangoldtFormula : Bool
  claimsUniformLittleOhEstimates : Bool
  claimsTerminalPacketEstimates : Bool
  claimsFullRHFormalization : Bool

def r1958NonClaimCertificate : NonClaimCertificate :=
  { ledger := nonClaimLedger
    claimsZetaTheory := false
    claimsLiCriterion := false
    claimsLiKernelIdentity := false
    claimsAbelBoundaryPassage := false
    claimsExplicitFormula := false
    claimsRiemannVonMangoldtFormula := false
    claimsUniformLittleOhEstimates := false
    claimsTerminalPacketEstimates := false
    claimsFullRHFormalization := false }

theorem non_claim_ledger_lists_major_external_analytic_targets :
    r1958NonClaimCertificate.ledger = nonClaimLedger := by
  rfl

theorem r1958_declares_no_full_analytic_formalization_claim :
    r1958NonClaimCertificate.claimsZetaTheory = false ∧
    r1958NonClaimCertificate.claimsLiCriterion = false ∧
    r1958NonClaimCertificate.claimsLiKernelIdentity = false ∧
    r1958NonClaimCertificate.claimsAbelBoundaryPassage = false ∧
    r1958NonClaimCertificate.claimsExplicitFormula = false ∧
    r1958NonClaimCertificate.claimsRiemannVonMangoldtFormula = false ∧
    r1958NonClaimCertificate.claimsUniformLittleOhEstimates = false ∧
    r1958NonClaimCertificate.claimsTerminalPacketEstimates = false ∧
    r1958NonClaimCertificate.claimsFullRHFormalization = false := by
  simp [r1958NonClaimCertificate]

end R1958DLeanAudit
