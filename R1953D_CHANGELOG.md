# R1953D Changelog

R1953D raises the Lean support packet one step beyond R1949D while preserving the verified R1949D core unchanged.

## Added

- `R1952DLeanSupport.VersionMap`
- `R1952DLeanSupport.SupportTheorems`
- `R1952DLeanSupport.ProfileCoverage`
- `R1952DLeanSupport.ObligationFieldBindings`
- `R1952DLeanSupport.ToySupport`
- `SUPPORT_COMPATIBILITY.md`
- `OBLIGATION_FIELD_BINDINGS.md`

## Verified status

The refreshed R1953D support layer was verified by user-side Windows PowerShell with Lean 4.31.0 / Lake 5.0.0. The build completed successfully with 21 jobs. See `VERIFY_LOG_WINDOWS.txt` and `VERIFY_STATUS.md`.

## Scope

R1953D verifies compatibility, wrapper invocation, profile coverage, obligation-field binding consistency, and toy support. It remains a conditional logical-assembly support packet, not a full analytic formalization.
