#!/usr/bin/env bash
set -euo pipefail

python3 - <<'EOPY'
from pathlib import Path
import re

p = Path('lakefile.lean')
s = p.read_text()
s = re.sub(r'package «[^»]+» where', 'package «R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary» where', s, count=1)
s = re.sub(r'@\[\s*default_target\s*\]\s*
(?=lean_lib)', '', s)
for name in ['R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots', 'R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary']:
    s = re.sub(r'
*lean_lib «' + re.escape(name) + r'» where
(?:\s+roots := #\[`[^
]+\]
)?', '
', s)
s = s.rstrip() + '

'
s += 'lean_lib «R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots» where

'
s += '@[default_target]
lean_lib «R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary» where
'
p.write_text(s)

pm = Path('Main.lean')
if pm.exists():
    m = pm.read_text()
    imp = 'import R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
'
    if imp not in m:
        m = imp + m
    checks = [
        '#check R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots.endpoint_first_proof_kernel_execution_certificate_slots_to_actual_li_target',
        '#check R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots.endpoint_first_proof_kernel_execution_certificate_dependency_audit_to_actual_li_target',
        '#check R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots.r2024_sixty_third_step_is_execution_certificate_slots_not_kernel_execution',
        '#check R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots.r2024_sixty_third_step_does_not_claim_rh_formalization',
        '#check R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary.endpoint_first_concrete_lemma_discharge_boundary_to_actual_li_target',
        '#check R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary.endpoint_first_concrete_lemma_discharge_dependency_audit_to_actual_li_target',
        '#check R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary.r2025_sixty_fourth_step_is_discharge_boundary_not_concrete_lemma_discharge',
        '#check R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary.r2025_sixty_fourth_step_does_not_claim_rh_formalization',
    ]
    for line in checks:
        if line not in m:
            m += '
' + line
    pm.write_text(m)

print('R2025D combined patch metadata applied.')
EOPY
