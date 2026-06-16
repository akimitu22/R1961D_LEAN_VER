import R1961DLeanPacket.PacketBalanceCertificates
import R1960DLeanLimit.ToyLimitPassage

namespace R1961DLeanPacket

open R1960DLeanLimit
open R1959DLeanTransfer

/-- Toy packet system: all packet controls are True and the target is True. -/
def toyExplicitPacketBalanceSystem : ExplicitPacketBalanceSystem :=
  { primePacketControlled := True
    zeroPacketControlled := True
    endpointPacketControlled := True
    scaleErrorPacketControlled := True
    obstructionLedgerCompatible := True
    noHiddenResidualPacket := True
    liTarget := True
    targetFromPackets := fun _ _ _ _ _ _ => trivial }

theorem toy_packet_balance_runs :
    toyExplicitPacketBalanceSystem.liTarget := by
  exact explicit_packet_balance_to_target toyExplicitPacketBalanceSystem
    ⟨trivial, trivial, trivial, trivial, trivial⟩
    trivial

/-- Toy boundary-to-packet system using the R1960D toy boundary limit passage. -/
def toyBoundaryPacketBalance : BoundaryPacketBalance Unit Unit Unit :=
  { boundarySystem := toyBoundaryLimitSystem
    packetSystem := toyExplicitPacketBalanceSystem
    primeFromBoundary := fun _ => trivial
    zeroFromBoundary := fun _ => trivial
    endpointFromBoundary := fun _ => trivial
    scaleErrorFromBoundary := fun _ => trivial
    obstructionFromBoundary := fun _ => trivial
    noResidualFromBoundary := fun _ => trivial }

def toyFiniteToPacketBalanceWitness : FiniteToPacketBalanceWitness Unit Unit Unit :=
  { balance := toyBoundaryPacketBalance
    sameScaleOnTail := fun _ _ => rfl
    finiteTargetOnTail := fun _ _ => trivial }

theorem toy_boundary_packet_balance_runs :
    toyBoundaryPacketBalance.packetSystem.liTarget := by
  have hBoundary : AbelTarget toyBoundaryPacketBalance.boundarySystem.transferSystem
      toyBoundaryPacketBalance.boundarySystem.abelBoundary := by
    exact toy_boundary_limit_passage_runs
  exact abel_boundary_packet_balance_to_li_target toyBoundaryPacketBalance hBoundary

theorem toy_finite_tail_packet_balance_runs :
    toyBoundaryPacketBalance.packetSystem.liTarget := by
  exact finite_tail_boundary_packet_balance_to_li_target
    toyBoundaryPacketBalance
    (fun _ _ => rfl)
    (fun _ _ => trivial)

theorem toy_finite_to_packet_balance_witness_runs :
    toyFiniteToPacketBalanceWitness.balance.packetSystem.liTarget := by
  exact finite_to_packet_balance_target toyFiniteToPacketBalanceWitness

/-- Toy normalized boundary-to-packet system. -/
def toyNormalizedBoundaryPacketBalance : NormalizedBoundaryPacketBalance Unit Unit Nat Nat :=
  { boundarySystem := toyNormalizedBoundaryLimitSystem
    packetSystem := toyExplicitPacketBalanceSystem
    primeFromBoundary := fun _ => trivial
    zeroFromBoundary := fun _ => trivial
    endpointFromBoundary := fun _ => trivial
    scaleErrorFromBoundary := fun _ => trivial
    obstructionFromBoundary := fun _ => trivial
    noResidualFromBoundary := fun _ => trivial }

theorem toy_normalized_finite_tail_packet_balance_runs :
    toyNormalizedBoundaryPacketBalance.packetSystem.liTarget := by
  exact normalized_finite_tail_boundary_packet_balance_to_li_target
    toyNormalizedBoundaryPacketBalance
    (fun _ _ => rfl)
    (fun _ _ => rfl)

end R1961DLeanPacket
