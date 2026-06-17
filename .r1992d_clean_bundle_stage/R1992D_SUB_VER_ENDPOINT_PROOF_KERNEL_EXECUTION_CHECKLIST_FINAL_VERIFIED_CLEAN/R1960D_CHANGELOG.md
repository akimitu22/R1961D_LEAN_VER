# R1960D changelog

## R1960D_LEAN / R1960D_SUB

- Added `R1960DLeanLimit` namespace.
- Added `BoundaryLimitSystem.lean` with actual Lean theorems:
  - `same_scale_boundary_limit_transfer`
  - `eventual_finite_target_to_boundary_target`
  - `no_hidden_scale_drift_boundary_transfer`
- Added `AbelBoundaryTransfer.lean` with packaged finite-to-Abel boundary witness structures and transfer theorems.
- Added `LimitPassageCertificates.lean` linking the new boundary-limit theorem to inherited R1956D critical slots while preserving R1958D non-claim boundaries.
- Added `ToyLimitPassage.lean` sanity checks.
- Added `VersionLimit.lean` declaring R1960D as an abstract Abel-boundary limit-passage layer over R1959D.
- Updated `Main.lean`, `lakefile.lean`, `verify.ps1`, README, status, checklist, and checksum files.

Status: VERIFIED by external Windows Lean/Lake rerun.


## R1960D verified packaging update

- Added the successful Windows PowerShell verification log as `VERIFY_LOG_WINDOWS.txt`.
- Updated `VERIFY_STATUS.md`, `README_LEAN.md`, `REVIEW_CHECKLIST.md`, and `REVIEW_VERIFICATION_REPORT.md` to VERIFIED status.
- Removed `VERIFY_STATUS_PENDING.md`.
- Regenerated `MANIFEST.txt` and `SHA256SUMS.txt`.
