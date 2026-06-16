# R1953D Lean Support Verification Status

Status: VERIFIED by user-side Windows PowerShell run.

## Verification environment

- Lean: 4.31.0, x86_64-w64-windows-gnu, commit 68218e876d2a38b1985b8590fff244a83c321783, Release
- Lake: 5.0.0-src+68218e8, Lean version 4.31.0
- elan: 4.2.0, 861dbdae2, 2026-02-25
- Command: `powershell -ExecutionPolicy Bypass -File .\verify.ps1`

## Results recorded in `VERIFY_LOG_WINDOWS_R1953D_SUPPORT.txt`

- `lake build`: success; 21 jobs completed.
- `Main.lean` check: success.
- Forbidden token scan: no `sorry`, `admit`, `unsafe`, or `set_option autoImplicit true` found.
- Global axiom scan: no global `axiom` declarations found.
- Legacy trivial layer scan: no `LayerRealizable := True` definition found.
- Hardened local assumption packages: found.
- R1952D/R1953D support wrapper entries: found.
- Dependency certificates: found.
- Field-level proof-obligation map: found.
- R1953D profile coverage theorems: found.
- Obligation-field binding table: found.
- Toy model and support wrapper entries: found and type-checked.

## Main checked R1949D core declarations

- `R1949DLean.conditional_main_no_escape_from_all_obligations`
- `R1949DLean.conditional_kill_attempt_forces_terminal_extension`
- `R1949DLean.main_profile_uses_all_hardened_packages`
- `R1949DLean.main_terminal_extension_profile_includes_classification`
- `R1949DLean.toy_model_runs_conditional_main`
- `R1949DLean.toy_model_terminal_branch_consistency`

## Main checked R1952D/R1953D support declarations

- `R1952DLeanSupport.version_map_declares_unmodified_verified_core`
- `R1952DLeanSupport.r1952_conditional_main_no_escape_from_verified_core`
- `R1952DLeanSupport.r1952_conditional_terminal_extension_from_verified_core`
- `R1952DLeanSupport.main_profile_contains_finite_to_abel_labels`
- `R1952DLeanSupport.main_profile_contains_structural_labels`
- `R1952DLeanSupport.main_profile_contains_terminal_no_escape_labels`
- `R1952DLeanSupport.terminal_extension_profile_contains_classification_label`
- `R1952DLeanSupport.obligation_binding_table_has_all_labels`
- `R1952DLeanSupport.main_profile_and_binding_table_align_on_no_escape_labels`
- `R1952DLeanSupport.toy_model_satisfies_all_hardened_packages`
- `R1952DLeanSupport.toy_model_ready_and_main_run`
- `R1952DLeanSupport.toy_model_terminal_extension_branch_runs`
- `R1952DLeanSupport.toy_model_uses_verified_support_wrapper`

## Scope note

This verified packet checks the conditional Lean skeleton, the R1952D/R1953D compatibility wrapper, the profile-coverage theorems, the obligation-field binding table, and the toy-support sanity checks. It does not constitute a full Lean formalization of the analytic number-theoretic proof. The non-formalized mathematical content remains isolated in the explicit local assumption packages and field-level proof obligations.

## External warning note

The conda/pydantic messages in the Windows log are external environment warnings and are not Lean/Lake errors. The Lean/Lake build and `Main.lean` check completed successfully.
