#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path
import re

latest = "R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary"
libs = [
    "R2028DLeanEndpointFirstEstimateHandoffCertificateSlots",
    "R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary",
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
    "#check R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.endpoint_first_estimate_handoff_certificate_slots_to_actual_li_target",
    "#check R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.endpoint_first_estimate_handoff_certificate_dependency_audit_to_actual_li_target",
    "#check R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.r2028_sixty_seventh_step_is_estimate_handoff_certificate_slots_not_estimate_proof",
    "#check R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.r2028_sixty_seventh_step_does_not_claim_rh_formalization",
    "#check R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary.endpoint_first_explicit_formula_handoff_boundary_to_actual_li_target",
    "#check R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary.endpoint_first_explicit_formula_handoff_dependency_audit_to_actual_li_target",
    "#check R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary.r2029_sixty_eighth_step_is_explicit_formula_handoff_boundary_not_formula_proof",
    "#check R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary.r2029_sixty_eighth_step_does_not_claim_rh_formalization",
]

for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)

print("R2029D combined patch metadata applied.")
PY
