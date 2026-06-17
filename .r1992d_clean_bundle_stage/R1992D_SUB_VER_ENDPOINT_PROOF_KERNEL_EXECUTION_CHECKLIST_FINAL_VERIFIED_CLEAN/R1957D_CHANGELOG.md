# R1957D Changelog

## Summary

R1957D upgrades R1956D by adding a Lean interface-coverage and dependency-certification layer.

## Added

- `R1957DLeanCoverage` namespace.
- Version coverage certificate.
- Interface obligation to refined target coverage certificate.
- Estimate-slot coverage certificate.
- Mathlib-anchor external-status coverage certificate.
- Dependency profiles for R1956D conditional interface theorems.
- Declared-assumption path certificates.
- Toy coverage sanity checks.
- `INTERFACE_COVERAGE_MAP.md`.

## Documentation fixes absorbed

- Corrected the README verification command to `powershell -ExecutionPolicy Bypass -File .\verify.ps1`.
- Replaced the old R1954D-titled verification report with an R1957D-specific verification report.

## Verification status

Verified on Windows PowerShell with Lean 4.31.0 / Lake 5.0.0. `lake build` completed successfully with 51 jobs, and `Main.lean` checks completed successfully.


## Fix-1: Windows script hygiene and toy namespace resolution

- Removed a stray leading `\` line from `verify.ps1`.
- Added `open R1949DLean` to `R1957DLeanCoverage/ToyCoverage.lean` so `toyTheory.AttemptsToKill` resolves against the inherited R1949D toy theory.
- Updated pending verification status.
- No analytic or logical strengthening/weakening was introduced.


## VER packaging update

- Added `VERIFY_LOG_WINDOWS.txt` containing the successful R1957D Windows PowerShell verification log.
- Updated `VERIFY_STATUS.md` to VERIFIED.
- Removed `VERIFY_STATUS_PENDING.md` from the verified packet.
- Recomputed `SHA256SUMS.txt` and submission-level `TOP_SHA256.txt`.
