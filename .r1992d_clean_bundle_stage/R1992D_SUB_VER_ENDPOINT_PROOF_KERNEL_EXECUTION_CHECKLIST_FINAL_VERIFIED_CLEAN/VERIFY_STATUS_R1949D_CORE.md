# R1949D Verification Status

Status: VERIFIED by user-side Windows PowerShell run.

## Verification environment

- Lean: 4.31.0, x86_64-w64-windows-gnu, commit 68218e876d2a38b1985b8590fff244a83c321783, Release
- Lake: 5.0.0-src+68218e8, Lean version 4.31.0
- elan: 4.2.0, 861dbdae2, 2026-02-25
- Command: `powershell -ExecutionPolicy Bypass -File .\verify.ps1`

## Results recorded in `VERIFY_LOG_WINDOWS_R1949D_CORE.txt`

- `lake build`: success; 15 jobs completed.
- `Main.lean` check: success.
- Forbidden token scan: no `sorry`, `admit`, `unsafe`, or `set_option autoImplicit true` found.
- Global axiom scan: no global `axiom` declarations found.
- Legacy trivial layer scan: no `LayerRealizable := True` definition found.
- Hardened local assumption packages: found.
- Dependency certificates: found.
- Field-level proof-obligation map: found.
- Toy model entries: found and type-checked.

## Main checked declarations

- `conditional_main_no_escape_from_all_obligations`
- `conditional_kill_attempt_forces_terminal_extension`
- `layer_realization_certificate_shape`
- `layer_realization_obligation_is_no_longer_trivial_true_definition`
- `main_profile_uses_all_hardened_packages`
- `main_terminal_extension_profile_includes_classification`
- `toy_model_runs_conditional_main`
- `toy_model_terminal_branch_consistency`

## Scope note

This verified packet checks the conditional Lean skeleton and the hardened proof-obligation/dependency-localization layer. It does not constitute a full Lean formalization of the analytic number-theoretic proof. The non-formalized mathematical content remains isolated in the explicit local assumption packages and field-level proof obligations.

## External warning note

The conda/pydantic messages in the Windows log are external environment warnings and are not Lean/Lake errors. The Lean/Lake build and `Main.lean` check completed successfully.
