$ErrorActionPreference = "Stop"

Write-Host "=== R1961D Lean Abstract Explicit-Packet Balance Packet ==="
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

Write-Host "`n=== R1960D inherited limit wrapper scan ==="
$LimitVersion = Select-String -Path $LeanFiles.FullName -Pattern 'namespace\s+R1960DLeanLimit|structure\s+BoundaryLimitSystem|theorem\s+same_scale_boundary_limit_transfer|theorem\s+finite_to_abel_boundary_limit_transfer|theorem\s+r1960_version_declares_abel_boundary_limit_layer'
$LimitVersion
if (($LimitVersion | Measure-Object).Count -lt 5) { throw "R1960D inherited limit entries were not all found." }
Write-Host "R1960D inherited limit wrapper entries found."

Write-Host "`n=== R1961D packet balance system scan ==="
$PacketSystem = Select-String -Path $LeanFiles.FullName -Pattern 'namespace\s+R1961DLeanPacket|structure\s+ExplicitPacketBalanceSystem|def\s+AllPacketsControlled|def\s+NoHiddenResidualPacket|theorem\s+explicit_packet_balance_to_target|theorem\s+no_hidden_residual_packet_transfer|theorem\s+controlled_prime_zero_endpoint_packets_to_li_target'
$PacketSystem
if (($PacketSystem | Measure-Object).Count -lt 7) { throw "R1961D packet balance system entries were not all found." }
Write-Host "R1961D packet balance system entries found."

Write-Host "`n=== R1961D boundary-to-packet transfer scan ==="
$PacketTransfer = Select-String -Path $LeanFiles.FullName -Pattern 'structure\s+BoundaryPacketBalance|theorem\s+abel_boundary_yields_all_packet_controls|theorem\s+abel_boundary_packet_balance_to_li_target|theorem\s+finite_tail_boundary_packet_balance_to_li_target|theorem\s+no_hidden_residual_boundary_packet_transfer|structure\s+FiniteToPacketBalanceWitness|theorem\s+finite_to_packet_balance_target|structure\s+NormalizedBoundaryPacketBalance|theorem\s+normalized_finite_tail_boundary_packet_balance_to_li_target'
$PacketTransfer
if (($PacketTransfer | Measure-Object).Count -lt 9) { throw "R1961D boundary-to-packet transfer entries were not all found." }
Write-Host "R1961D boundary-to-packet transfer entries found."

Write-Host "`n=== R1961D certificate scan ==="
$PacketCert = Select-String -Path $LeanFiles.FullName -Pattern 'def\s+packetBalanceCriticalSlots|structure\s+PacketBalanceDepthCertificate|def\s+r1961PacketBalanceDepthCertificate|theorem\s+r1961_critical_slots_are_inherited_from_r1956_interface|theorem\s+r1961_packet_depth_certificate_records_actual_abstract_theorems|theorem\s+r1961_packet_layer_keeps_r1958_non_claim_boundary|structure\s+PacketVersionCompatibility|def\s+r1961DeepensR1960Limit|theorem\s+r1961_version_declares_packet_balance_layer'
$PacketCert
if (($PacketCert | Measure-Object).Count -lt 9) { throw "R1961D packet certificate entries were not all found." }
Write-Host "R1961D packet certificate entries found."

Write-Host "`n=== R1961D toy packet-balance scan ==="
$ToyPacket = Select-String -Path $LeanFiles.FullName -Pattern 'def\s+toyExplicitPacketBalanceSystem|theorem\s+toy_packet_balance_runs|def\s+toyBoundaryPacketBalance|def\s+toyFiniteToPacketBalanceWitness|theorem\s+toy_boundary_packet_balance_runs|theorem\s+toy_finite_tail_packet_balance_runs|theorem\s+toy_finite_to_packet_balance_witness_runs|def\s+toyNormalizedBoundaryPacketBalance|theorem\s+toy_normalized_finite_tail_packet_balance_runs'
$ToyPacket
if (($ToyPacket | Measure-Object).Count -lt 9) { throw "R1961D toy packet-balance entries were not all found." }
Write-Host "R1961D toy packet-balance entries found."

Write-Host "`n=== Theorem list ==="
Select-String -Path $LeanFiles.FullName -Pattern '^\s*theorem\s+' | ForEach-Object { $_.Line.Trim() }

Write-Host "`n=== Lake build ==="
lake build
if ($LASTEXITCODE -ne 0) { throw "lake build failed." }

Write-Host "`n=== Main.lean check ==="
lake env lean Main.lean
if ($LASTEXITCODE -ne 0) { throw "lake env lean Main.lean failed." }

Write-Host "`nR1961D Lean abstract explicit-packet balance packet completed successfully." -ForegroundColor Green
