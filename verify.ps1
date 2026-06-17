$ErrorActionPreference = "Stop"

Write-Host "=== R1972D Lean Abel-boundary Toy Model Packet ==="
Write-Host "Location: $(Get-Location)"

Write-Host "`n=== Tool versions ==="
lean --version
lake --version
elan --version

Write-Host "`n=== Lean-related files ==="
$LeanRelated = Get-ChildItem -Recurse -File | Where-Object {
    $_.Extension -eq ".lean" -or
    $_.Name -in @("lean-toolchain", "lakefile.lean", "lakefile.toml")
}
$LeanRelated | Select-Object FullName

$LeanFiles = Get-ChildItem -Recurse -Filter *.lean

Write-Host "`n=== Forbidden token scan ==="
$Forbidden = Select-String -Path $LeanFiles.FullName -Pattern '\bsorry\b|\badmit\b|\bunsafe\b|set_option\s+autoImplicit\s+true'
if ($Forbidden) {
    Write-Host "Found forbidden tokens:" -ForegroundColor Red
    $Forbidden
    throw "Forbidden tokens found."
} else {
    Write-Host "No sorry/admit/unsafe/autoImplicit true found." -ForegroundColor Green
}

Write-Host "`n=== Global axiom scan ==="
$Axioms = Select-String -Path $LeanFiles.FullName -Pattern '^\s*axiom\s+'
if ($Axioms) {
    Write-Host "Unexpected global axiom declarations found:" -ForegroundColor Red
    $Axioms
    throw "Unexpected global axiom declarations found."
} else {
    Write-Host "No global axiom declarations found." -ForegroundColor Green
}

Write-Host "`n=== Legacy trivial layer scan ==="
$LegacyLayer = Select-String -Path $LeanFiles.FullName -Pattern 'def\s+LayerRealizable\s+\(_\s*:\s*StructuralLayer\)\s*:\s*Prop\s*:=\s*True'
if ($LegacyLayer) { throw "Legacy trivial LayerRealizable definition found." }
Write-Host "No legacy LayerRealizable := True definition found." -ForegroundColor Green

Write-Host "`n=== R1961D packet-balance scan ==="
$PacketScan = Select-String -Path $LeanFiles.FullName -Pattern 'structure\s+ExplicitPacketBalanceSystem|theorem\s+explicit_packet_balance_to_target|theorem\s+controlled_prime_zero_endpoint_packets_to_li_target|theorem\s+normalized_finite_tail_boundary_packet_balance_to_li_target'
$PacketScan
if (($PacketScan | Measure-Object).Count -lt 4) { throw "R1961D packet-balance entries were not all found." }
Write-Host "R1961D packet-balance entries found."

Write-Host "`n=== R1962D-R1970D analytic obligation path scan ==="
$PathScan = Select-String -Path $LeanFiles.FullName -Pattern 'theorem\s+analytic_realization_packet_balance_to_li_target|theorem\s+realized_pre_target_slots_to_actual_li_target|theorem\s+micro_targets_to_actual_li_target|theorem\s+realized_interfaces_to_actual_li_target|theorem\s+concrete_sources_to_actual_li_target|theorem\s+source_evidence_slots_to_actual_li_target|theorem\s+anchor_classification_to_actual_li_target|theorem\s+priority_plan_to_actual_li_target|theorem\s+minimal_first_target_plan_to_actual_li_target'
$PathScan
if (($PathScan | Measure-Object).Count -lt 9) { throw "R1962D-R1970D analytic-obligation path entries were not all found." }
Write-Host "R1962D-R1970D analytic-obligation path entries found."

Write-Host "`n=== R1971D Abel-boundary skeleton scan ==="
$R1971Scan = Select-String -Path $LeanFiles.FullName -Pattern 'structure\s+AbelBoundaryDefinitionSkeletonPlan|theorem\s+abel_boundary_skeleton_to_actual_li_target|theorem\s+r1971_tenth_step_is_definition_skeleton_not_abel_boundary_proof'
$R1971Scan
if (($R1971Scan | Measure-Object).Count -lt 3) { throw "R1971D Abel-boundary skeleton entries were not all found." }
Write-Host "R1971D Abel-boundary skeleton entries found."

Write-Host "`n=== R1972D toy Abel model scan ==="
$R1972Scan = Select-String -Path $LeanFiles.FullName -Pattern 'structure\s+ToyAnalyticAbelModelPlan|theorem\s+toy_abel_model_to_actual_li_target|theorem\s+r1972_eleventh_step_is_toy_model_not_concrete_abel_boundary_proof|theorem\s+toy_abel_model_to_actual_li_target_runs'
$R1972Scan
if (($R1972Scan | Measure-Object).Count -lt 4) { throw "R1972D toy Abel model entries were not all found." }
Write-Host "R1972D toy Abel model entries found."

Write-Host "`n=== Theorem list ==="
Select-String -Path $LeanFiles.FullName -Pattern '^\s*theorem\s+' | ForEach-Object { $_.Line.Trim() }

Write-Host "`n=== Lake build ==="
lake build
if ($LASTEXITCODE -ne 0) { throw "lake build failed." }

Write-Host "`n=== Main.lean check ==="
lake env lean Main.lean
if ($LASTEXITCODE -ne 0) { throw "lake env lean Main.lean failed." }

Write-Host "`nR1972D Lean Abel-boundary toy model packet completed successfully." -ForegroundColor Green
