#!/usr/bin/env bash
set -euo pipefail
python3 - <<'PYCODE'
from pathlib import Path
import re
latest = 'R2035DLeanEndpointFinalRHClaimBoundary'
libs = ['R2034DLeanEndpointFinalTheoremHandoffCertificateSlots', 'R2035DLeanEndpointFinalRHClaimBoundary']
p = Path('lakefile.lean')
s = p.read_text()
s = re.sub(r'^package «[^»]+» where', f'package «{latest}» where', s, count=1, flags=re.M)
lines = [line for line in s.splitlines() if line.strip() != '@[default_target]']
s = '\n'.join(lines) + '\n'
for lib in libs:
    marker = f'lean_lib «{lib}» where'
    block = f'\nlean_lib «{lib}» where\n  roots := #[`{lib}]\n'
    if marker not in s:
        s += block
marker = f'lean_lib «{latest}» where'
if marker not in s:
    raise SystemExit(f'missing {marker}')
s = s.replace(marker, f'@[default_target]\n{marker}', 1)
p.write_text(s)
m = Path('Main.lean')
t = m.read_text()
for lib in libs:
    imp = f'import {lib}'
    if imp not in t:
        t = imp + '\n' + t
checks = [
    '#check R2034DLeanEndpointFinalTheoremHandoffCertificateSlots.endpoint_final_theorem_handoff_certificate_slots_to_actual_li_target',
    '#check R2035DLeanEndpointFinalRHClaimBoundary.endpoint_final_rh_claim_boundary_to_actual_li_target',
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + '\n\n' + chk + '\n'
m.write_text(t)
print('Updated lakefile.lean and Main.lean for R2034D/R2035D.')
PYCODE
