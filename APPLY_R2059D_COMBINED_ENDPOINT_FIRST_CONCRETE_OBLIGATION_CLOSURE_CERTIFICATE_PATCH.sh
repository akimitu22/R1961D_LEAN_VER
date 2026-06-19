#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re

latest = "R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots"
libs = [
    "R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary",
    "R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots",
]

for junk in [
    "R2057D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LOCAL_DISCHARGE_CLOSURE_PATCH.zip",
    "R2059D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_CLOSURE_CERTIFICATE_PATCH.zip",
    "VERIFY_LOG_CODESPACES_R2057D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LOCAL_DISCHARGE_CLOSURE_OBLIGATION_MAP.txt~",
    "VERIFY_LOG_CODESPACES_R2059D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_CLOSURE_CERTIFICATE_SLOTS.txt~",
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
    "#check R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary.endpoint_first_concrete_obligation_local_discharge_closure_certificate_boundary_to_actual_li_target",
    "#check R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots.endpoint_first_concrete_obligation_local_discharge_closure_certificate_slots_to_actual_li_target",
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)
print("Updated lakefile.lean and Main.lean for R2058D/R2059D closure-certificate layers.")
APPLYPY
