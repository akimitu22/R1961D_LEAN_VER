#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re

latest = "R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt"
libs = [
    "R2062DLeanEndpointFirstConcreteObligationWitnessKernel",
    "R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt",
]

for junk in [
    "R2061D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_CLOSURE_CERTIFICATE_WITNESS_PATCH.zip",
    "R2063D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_WITNESS_KERNEL_LOCAL_DISCHARGE_ATTEMPT_PATCH.zip",
    "VERIFY_LOG_CODESPACES_R2061D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_CLOSURE_CERTIFICATE_WITNESS_INTERFACE.txt~",
    "VERIFY_LOG_CODESPACES_R2063D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_WITNESS_KERNEL_LOCAL_DISCHARGE_ATTEMPT.txt~",
]:
    Path(junk).unlink(missing_ok=True)

p = Path("lakefile.lean")
s = p.read_text()
s = re.sub(r'(?m)^package\s+(?:«[^»]+»|\S+)\s+where', f'package «{latest}» where', s, count=1)
s = re.sub(r'(?m)^\s*@\[default_target\]\s*\n', '', s)
s = re.sub(r'(?m)^\s*@default_target\s*\n', '', s)

for lib in libs:
    has_plain = f"lean_lib {lib} where" in s
    has_quoted = f"lean_lib «{lib}» where" in s
    if not (has_plain or has_quoted):
        s = s.rstrip() + "\n\n" + f"lean_lib {lib} where\n  roots := #[`{lib}]\n"

pattern = rf'(?m)^lean_lib\s+(?:«{re.escape(latest)}»|{re.escape(latest)})\s+where'
if re.search(pattern, s):
    s = re.sub(pattern, f"@[default_target]\nlean_lib {latest} where", s, count=1)
else:
    s = s.rstrip() + "\n\n" + f"@[default_target]\nlean_lib {latest} where\n  roots := #[`{latest}]\n"

p.write_text(s)

m = Path("Main.lean")
t = m.read_text() if m.exists() else ""
for lib in libs:
    imp = f"import {lib}"
    if imp not in t:
        t = t.rstrip() + "\n" + imp + "\n"

checks = [
    "#check R2062DLeanEndpointFirstConcreteObligationWitnessKernel.endpoint_first_concrete_obligation_witness_kernel_to_actual_li_target",
    "#check R2062DLeanEndpointFirstConcreteObligationWitnessKernel.endpoint_first_concrete_obligation_witness_kernel_required_witness_term_type",
    "#check R2062DLeanEndpointFirstConcreteObligationWitnessKernel.endpoint_first_concrete_obligation_witness_kernel_checker_kernel_obligation",
    "#check R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.endpoint_first_concrete_obligation_local_discharge_attempt_to_actual_li_target",
    "#check R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.endpoint_first_concrete_obligation_local_discharge_attempt_if_all_required_obligations_supplied",
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)
print("Updated lakefile.lean and Main.lean for R2062D/R2063D witness-kernel/local-discharge-attempt layers.")
APPLYPY
