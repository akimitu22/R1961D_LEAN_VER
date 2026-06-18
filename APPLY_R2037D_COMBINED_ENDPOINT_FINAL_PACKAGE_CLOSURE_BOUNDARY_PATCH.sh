#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re
latest = 'R2037DLeanEndpointFinalPackageClosureBoundary'
libs = ['R2036DLeanEndpointFinalRHClaimCertificateSlots', 'R2037DLeanEndpointFinalPackageClosureBoundary']

p = Path('lakefile.lean')
s = p.read_text()
s = re.sub(r'^package «[^»]+» where', f'package «{latest}» where', s, count=1, flags=re.M)
lines = [line for line in s.splitlines() if line.strip() != '@[default_target]']
s = '
'.join(lines) + '
'
for lib in libs:
    marker = f'lean_lib «{lib}» where'
    block = f'
lean_lib «{lib}» where
  roots := #[`{lib}]
'
    if marker not in s:
        s += block
marker = f'lean_lib «{latest}» where'
if marker not in s:
    raise SystemExit(f'missing {marker}')
s = s.replace(marker, f'@[default_target]
{marker}', 1)
p.write_text(s)

m = Path('Main.lean')
t = m.read_text()
for lib in libs:
    imp = f'import {lib}'
    if imp not in t:
        t = imp + '
' + t
checks = [
    '#check R2036DLeanEndpointFinalRHClaimCertificateSlots.endpoint_final_rh_claim_certificate_slots_to_actual_li_target',
    '#check R2037DLeanEndpointFinalPackageClosureBoundary.endpoint_final_package_closure_boundary_to_actual_li_target',
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + '

' + chk + '
'
m.write_text(t)
print('Updated lakefile.lean and Main.lean for R2036D/R2037D.')
APPLYPY
