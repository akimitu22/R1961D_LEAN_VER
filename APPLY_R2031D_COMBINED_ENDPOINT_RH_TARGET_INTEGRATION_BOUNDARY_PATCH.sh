#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path
import re

latest = "R2031DLeanEndpointFirstRHTargetIntegrationBoundary"
libs = [
    "R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots",
    "R2031DLeanEndpointFirstRHTargetIntegrationBoundary",
]

p = Path("lakefile.lean")
s = p.read_text()

s = re.sub(
    r'^package «[^»]+» where',
    f'package «{latest}» where',
    s,
    count=1,
    flags=re.M,
)

lines = [line for line in s.splitlines() if line.strip() != "@[default_target]"]
s = "\n".join(lines) + "\n"

for lib in libs:
    pattern = re.compile(
        r'\n*lean_lib\s+«' + re.escape(lib) + r'»\s+where\n(?:\s+roots\s*:=.*\n)?',
        re.M,
    )
    s = pattern.sub("\n", s)

s = s.rstrip() + "\n\n"
for lib in libs:
    block = f"lean_lib «{lib}» where\n  roots := #[`{lib}]\n\n"
    if lib == latest:
        block = "@[default_target]\n" + block
    s += block

p.write_text(s)

m = Path("Main.lean")
t = m.read_text() if m.exists() else ""

for lib in libs:
    imp = f"import {lib}"
    if imp not in t:
        t = imp + "\n" + t

checks = [
    "#check R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots.endpoint_first_explicit_formula_handoff_certificate_slots_to_actual_li_target",
    "#check R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots.endpoint_first_explicit_formula_handoff_certificate_dependency_audit_to_actual_li_target",
    "#check R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots.r2030_sixty_ninth_step_is_explicit_formula_handoff_certificate_slots_not_formula_proof",
    "#check R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots.r2030_sixty_ninth_step_does_not_claim_rh_formalization",
    "#check R2031DLeanEndpointFirstRHTargetIntegrationBoundary.endpoint_first_rh_target_integration_boundary_to_actual_li_target",
    "#check R2031DLeanEndpointFirstRHTargetIntegrationBoundary.endpoint_first_rh_target_integration_dependency_audit_to_actual_li_target",
    "#check R2031DLeanEndpointFirstRHTargetIntegrationBoundary.r2031_seventieth_step_is_rh_target_integration_boundary_not_rh_proof",
    "#check R2031DLeanEndpointFirstRHTargetIntegrationBoundary.r2031_seventieth_step_does_not_claim_rh_formalization",
]

for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)

print("R2031D combined patch metadata applied.")
PY
