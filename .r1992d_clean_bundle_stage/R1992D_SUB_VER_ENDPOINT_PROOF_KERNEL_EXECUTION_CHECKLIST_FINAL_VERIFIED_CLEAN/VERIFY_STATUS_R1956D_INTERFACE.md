# R1956D verification status — VERIFIED

Status: VERIFIED on Windows PowerShell.

This packet was verified from the `R1956D_LEAN` directory using:

```powershell
powershell -ExecutionPolicy Bypass -File .\verify.ps1
```

## Toolchain reported in the verification log

- Lean: 4.31.0
- Lake: 5.0.0-src+68218e8
- elan: 4.2.0

## Verification results

- `lake build`: success
- Build jobs: 45 jobs completed successfully
- `Main.lean` check: success
- `sorry` / `admit` / `unsafe`: none detected
- global `axiom`: none detected
- legacy `LayerRealizable := True`: none detected
- R1956D analytic interface wrapper: detected
- analytic input/output/compatibility interfaces: detected
- estimate slots: detected
- mathlib-facing anchors: detected
- interface obligations: detected
- analytic interface theorems: detected
- toy analytic interface entries: detected

## Correct interpretation

R1956D is not a full Lean formalization of the analytic number theory. It verifies a pre-formal analytic interface layer above R1955D: analytic input/output/compatibility records, explicit estimate slots, mathlib-facing anchors, interface obligations, and conditional theorems from the interface axioms to the inherited refined scaffold and bridge conclusions.

The analytic theorems themselves remain explicitly named interface obligations / future formalization anchors.

## Log

The full Windows PowerShell log is included as `VERIFY_LOG_WINDOWS_R1956D_INTERFACE.txt`.
