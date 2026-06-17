#!/usr/bin/env bash
set -euo pipefail

TARGET="R1992DLeanEndpointProofKernelExecutionChecklist"
LOG="VERIFY_LOG_CODESPACES_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.txt"
STATUS="VERIFY_STATUS_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.md"
BUNDLE_BASENAME="R1992D_SUB_VER_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST_FINAL_VERIFIED_CLEAN"
OUT_ZIP="${BUNDLE_BASENAME}.zip"
OUT_SHA="${BUNDLE_BASENAME}.sha256"
STAGE_ROOT=".r1992d_clean_bundle_stage"
STAGE_DIR="${STAGE_ROOT}/${BUNDLE_BASENAME}"
FINAL_MANIFEST="MANIFEST_R1992D_FINAL.txt"
FINAL_PATCH_MANIFEST="PATCH_MANIFEST_R1992D_FINAL.txt"
FINAL_SUMS="SHA256SUMS_R1992D_FINAL.txt"

if [[ ! -f "${LOG}" ]]; then
  echo "ERROR: ${LOG} not found. Run lake build with tee before creating the clean bundle." >&2
  exit 1
fi

BUILD_LINE="$(grep -E 'Build completed successfully \([0-9]+ jobs\)\.' "${LOG}" | tail -n 1 || true)"
if [[ -z "${BUILD_LINE}" ]]; then
  echo "ERROR: ${LOG} does not contain a successful build line." >&2
  exit 1
fi

if [[ ! -f "lakefile.lean" || ! -f "lean-toolchain" ]]; then
  echo "ERROR: this script must be run from the Lean project root." >&2
  exit 1
fi

if ! grep -q "${TARGET}" lakefile.lean; then
  echo "ERROR: lakefile.lean does not mention ${TARGET}. Apply R1992D first." >&2
  exit 1
fi

if [[ -d ".lake" ]]; then
  echo "Removing .lake before clean export."
  rm -rf .lake
fi

rm -rf "${STAGE_ROOT}" "${OUT_ZIP}" "${OUT_SHA}"
mkdir -p "${STAGE_DIR}"

# Copy the project as a clean source tree.  Patch zips, standalone .sha256 files,
# Git metadata, Lake build artifacts, and any previous clean-bundle staging area
# are excluded.  Verification logs and SHA256SUMS_*.txt ledgers are retained.
tar \
  --exclude='./.git' \
  --exclude='./.lake' \
  --exclude='./.r1992d_clean_bundle_stage' \
  --exclude='./*.zip' \
  --exclude='./*.sha256' \
  -cf - . | (cd "${STAGE_DIR}" && tar -xf -)

COMMIT_SHA="$(git rev-parse --short HEAD 2>/dev/null || echo unknown)"

cat > "${STAGE_DIR}/${FINAL_MANIFEST}" <<MANIFEST
# MANIFEST — R1992D final clean export package

## Package scope

This is the R1961D–R1992D Lean support package clean-export manifest.
It is modeled on the R1974D clean sub-version package layout, but extends the
verified spine through the R1992D endpoint proof-kernel execution checklist
layer.

## Current Lean target

\`\`\`text
${TARGET}
\`\`\`

## Current build result

\`\`\`text
${BUILD_LINE}
\`\`\`

## Source commit at export time

\`\`\`text
${COMMIT_SHA}
\`\`\`

## Current endpoint continuation spine

\`\`\`text
R1983D — main-manuscript anchored verification spine
R1984D — manuscript-obligation implementation queue
R1985D — endpoint first implementation block
R1986D — endpoint statement group
R1987D — endpoint proof-kernel interface
R1988D — endpoint kernel axiom boundary
R1989D — endpoint concrete-lemma stubs
R1990D — endpoint concrete-lemma statement bank
R1991D — endpoint concrete proof-route bank
R1992D — endpoint proof-kernel execution checklist
\`\`\`

## New R1992D files expected in this export

\`\`\`text
R1992DLeanEndpointProofKernelExecutionChecklist.lean
R1992DLeanEndpointProofKernelExecutionChecklist/EndpointExecutionChecklistSlots.lean
R1992DLeanEndpointProofKernelExecutionChecklist/EndpointExecutionDependencyChecklist.lean
R1992DLeanEndpointProofKernelExecutionChecklist/EndpointExecutionChecklistBridge.lean
R1992DLeanEndpointProofKernelExecutionChecklist/ToyEndpointExecutionChecklist.lean
R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST_LEDGER.md
R1992D_THIRTY_FIRST_BEST_STEP.md
R1992D_PATCH_MANIFEST.txt
VERIFY_STATUS_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.md
VERIFY_LOG_CODESPACES_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.txt
SHA256SUMS_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.txt
\`\`\`

## Clean-export files

\`\`\`text
${FINAL_MANIFEST}
${FINAL_PATCH_MANIFEST}
${FINAL_SUMS}
R1992D_FINAL_VERIFIED_CLEAN_EXPORT_NOTE.md
MAKE_R1992D_SUB_VER_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST_FINAL_VERIFIED_CLEAN.sh
\`\`\`

## Non-claim boundary

This package is a Lean proof-system / proof-obligation / route-checklist package.
It does not prove the endpoint estimate, boundary-error estimate,
remainder-uniformity estimate, sign-transfer estimate, explicit formula, Li
criterion, terminal estimates, or RH.
MANIFEST

cat > "${STAGE_DIR}/${FINAL_PATCH_MANIFEST}" <<PATCHMANIFEST
# PATCH MANIFEST — R1992D final clean export

This file records the clean-export packaging boundary for the R1992D sub-version
package.

## Export rule

The clean ZIP was generated only after ${LOG} recorded:

\`\`\`text
${BUILD_LINE}
\`\`\`

## Excluded from clean ZIP

\`\`\`text
.git/
.lake/
*.zip
*.sha256
.r1992d_clean_bundle_stage/
\`\`\`

## Included verification artifacts

\`\`\`text
VERIFY_LOG_CODESPACES_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.txt
VERIFY_STATUS_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.md
SHA256SUMS_R1992D_ENDPOINT_PROOF_KERNEL_EXECUTION_CHECKLIST.txt
\`\`\`
PATCHMANIFEST

(
  cd "${STAGE_DIR}"
  find . -type f ! -name "${FINAL_SUMS}" -print0 \
    | sort -z \
    | xargs -0 sha256sum > "${FINAL_SUMS}"
)

(
  cd "${STAGE_ROOT}"
  zip -qr "../${OUT_ZIP}" "${BUNDLE_BASENAME}"
)

sha256sum "${OUT_ZIP}" > "${OUT_SHA}"

echo "Created ${OUT_ZIP}"
echo "Created ${OUT_SHA}"
echo "Verified build line: ${BUILD_LINE}"
