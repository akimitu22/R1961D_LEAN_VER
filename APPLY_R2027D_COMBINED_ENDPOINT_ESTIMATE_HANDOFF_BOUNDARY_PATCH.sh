#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path
import re

latest = "R2027DLeanEndpointFirstEstimateHandoffBoundary"
libs = [
    "R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots",
    "R2027DLeanEndpointFirstEstimateHandoffBoundary",
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

# Remove all existing default target markers, then mark latest only.
lines = [line for line in s.splitlines() if line.strip() != "@[default_target]"]
s = "\n".join(lines) + "\n"

# Avoid duplicate blocks for the new libraries when the script is rerun.
for lib in libs:
    pattern = re.compile(
        r'\n*lean_lib\s+«' + re.escape(lib) + r'»\s+where\n(?:\s+roots\s*:=\s*#\[`[^\n]+`\]\n)?',
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
    "#check R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots.endpoint_first_concrete_lemma_discharge_certificate_slots_to_actual_li_target",
    "#check R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots.endpoint_first_concrete_lemma_discharge_certificate_dependency_audit_to_actual_li_target",
    "#check R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots.r2026_sixty_fifth_step_is_discharge_certificate_slots_not_discharge",
    "#check R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots.r2026_sixty_fifth_step_does_not_claim_rh_formalization",
    "#check R2027DLeanEndpointFirstEstimateHandoffBoundary.endpoint_first_estimate_handoff_boundary_to_actual_li_target",
    "#check R2027DLeanEndpointFirstEstimateHandoffBoundary.endpoint_first_estimate_handoff_dependency_audit_to_actual_li_target",
    "#check R2027DLeanEndpointFirstEstimateHandoffBoundary.r2027_sixty_sixth_step_is_estimate_handoff_boundary_not_estimate_proof",
    "#check R2027DLeanEndpointFirstEstimateHandoffBoundary.r2027_sixty_sixth_step_does_not_claim_rh_formalization",
]

for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)

print("R2027D combined patch metadata applied.")
PY
