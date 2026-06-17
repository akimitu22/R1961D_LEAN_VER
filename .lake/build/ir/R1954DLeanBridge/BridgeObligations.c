// Lean compiler output
// Module: R1954DLeanBridge.BridgeObligations
// Imports: public import Init public meta import Init public import R1954DLeanBridge.ManuscriptObjects public import R1952DLeanSupport.ObligationFieldBindings
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
lean_object* lean_nat_to_int(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* l_List_reverse___redArg(lean_object*);
lean_object* l_Repr_addAppParen(lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_toCtorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_toCtorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 68, .m_capacity = 68, .m_length = 67, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd1RiemannZetaAndLiTarget"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__0_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__1_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 72, .m_capacity = 72, .m_length = 71, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__2_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__3_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__2_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__3 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__3_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__4_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 73, .m_capacity = 73, .m_length = 72, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__4 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__4_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__5_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__4_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__5 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__5_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__6_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 74, .m_capacity = 74, .m_length = 73, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__6 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__6_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__7_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__6_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__7 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__7_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__8_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 75, .m_capacity = 75, .m_length = 74, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__8 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__8_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__9_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__8_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__9 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__9_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__10_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 66, .m_capacity = 66, .m_length = 65, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd6TerminalPacketBridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__10 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__10_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__11_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__10_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__11 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__11_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__12_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 77, .m_capacity = 77, .m_length = 76, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__12 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__12_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__13_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__12_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__13 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__13_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__14_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 74, .m_capacity = 74, .m_length = 73, .m_data = "R1954DLeanBridge.BridgeObligationLabel.boStd8LiTargetToStandardConclusion"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__14 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__14_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__15_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__14_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__15 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__15_value;
static lean_once_cell_t lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16;
static lean_once_cell_t lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr(uint8_t, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___boxed(lean_object*, lean_object*);
static const lean_closure_object lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_closure_object) + sizeof(void*)*0, .m_other = 0, .m_tag = 245}, .m_fun = (void*)lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___boxed, .m_arity = 2, .m_num_fixed = 0, .m_objs = {} };
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel___closed__0_value;
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ofNat(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ofNat___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1954DLeanBridge_instDecidableEqBridgeObligationLabel(uint8_t, uint8_t);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instDecidableEqBridgeObligationLabel___boxed(lean_object*, lean_object*);
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 56, .m_capacity = 56, .m_length = 55, .m_data = "standard RH statement / Li-criterion target declaration"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__0_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 38, .m_capacity = 38, .m_length = 37, .m_data = "bridge obligation, not analytic proof"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__0_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(0, 0, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__2_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__3_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 44, .m_capacity = 44, .m_length = 43, .m_data = "finite Li object and Li-kernel input bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__3 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__3_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__4_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__3_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(1, 2, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__4 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__4_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__5_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 43, .m_capacity = 43, .m_length = 42, .m_data = "Abel-boundary same-scale coordinate bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__5 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__5_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__6_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__5_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(2, 5, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__6 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__6_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__7_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 42, .m_capacity = 42, .m_length = 41, .m_data = "explicit-formula generated-closure bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__7 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__7_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__8_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__7_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(3, 3, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__8 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__8_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__9_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 53, .m_capacity = 53, .m_length = 52, .m_data = "admissible scale topology / uniform little-oh bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__9 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__9_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__10_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__9_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(4, 6, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__10 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__10_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__11_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 55, .m_capacity = 55, .m_length = 54, .m_data = "prime, zero-phase, and endpoint terminal packet bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__11 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__11_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__12_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__11_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(5, 4, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__12 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__12_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__13_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 65, .m_capacity = 65, .m_length = 64, .m_data = "obstruction quotient and non-internal cancellation ledger bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__13 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__13_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__14_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__13_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(6, 7, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__14 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__14_value;
static const lean_string_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__15_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 49, .m_capacity = 49, .m_length = 48, .m_data = "Li-target to standard analytic conclusion bridge"};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__15 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__15_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__16_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 8, .m_other = 2, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__15_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__1_value),LEAN_SCALAR_PTR_LITERAL(7, 1, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__16 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__16_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__17_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__16_value),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__17 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__17_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__18_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__14_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__17_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__18 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__18_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__19_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__12_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__18_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__19 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__19_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__20_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__10_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__19_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__20 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__20_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__21_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__8_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__20_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__21 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__21_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__22_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__6_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__21_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__22 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__22_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__23_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__4_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__22_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__23 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__23_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__24_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__2_value),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__23_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__24 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__24_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings___closed__24_value;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_List_mapTR_loop___at___00R1954DLeanBridge_bridgeObligationLabels_spec__0(lean_object*, lean_object*);
static lean_once_cell_t lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels___closed__0;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(2) << 1) | 1)),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(1) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__0_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__1_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(0) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__1_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__2_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_finiteToAbelBridgeCoreLabels___closed__2_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(6) << 1) | 1)),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(5) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__0_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__1_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(4) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__1_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__2_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__3_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(3) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__2_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__3 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__3_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_coherentClosureBridgeCoreLabels___closed__3_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(9) << 1) | 1)),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(8) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__0_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__1_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(7) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__1_value)}};
static const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__2_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels = (const lean_object*)&lp_R1961DLeanPacket_R1954DLeanBridge_terminalBridgeCoreLabels___closed__2_value;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx(uint8_t v_x_1_){
_start:
{
switch(v_x_1_)
{
case 0:
{
lean_object* v___x_2_; 
v___x_2_ = lean_unsigned_to_nat(0u);
return v___x_2_;
}
case 1:
{
lean_object* v___x_3_; 
v___x_3_ = lean_unsigned_to_nat(1u);
return v___x_3_;
}
case 2:
{
lean_object* v___x_4_; 
v___x_4_ = lean_unsigned_to_nat(2u);
return v___x_4_;
}
case 3:
{
lean_object* v___x_5_; 
v___x_5_ = lean_unsigned_to_nat(3u);
return v___x_5_;
}
case 4:
{
lean_object* v___x_6_; 
v___x_6_ = lean_unsigned_to_nat(4u);
return v___x_6_;
}
case 5:
{
lean_object* v___x_7_; 
v___x_7_ = lean_unsigned_to_nat(5u);
return v___x_7_;
}
case 6:
{
lean_object* v___x_8_; 
v___x_8_ = lean_unsigned_to_nat(6u);
return v___x_8_;
}
default: 
{
lean_object* v___x_9_; 
v___x_9_ = lean_unsigned_to_nat(7u);
return v___x_9_;
}
}
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx___boxed(lean_object* v_x_10_){
_start:
{
uint8_t v_x_boxed_11_; lean_object* v_res_12_; 
v_x_boxed_11_ = lean_unbox(v_x_10_);
v_res_12_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx(v_x_boxed_11_);
return v_res_12_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_toCtorIdx(uint8_t v_x_13_){
_start:
{
lean_object* v___x_14_; 
v___x_14_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx(v_x_13_);
return v___x_14_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_toCtorIdx___boxed(lean_object* v_x_15_){
_start:
{
uint8_t v_x_4__boxed_16_; lean_object* v_res_17_; 
v_x_4__boxed_16_ = lean_unbox(v_x_15_);
v_res_17_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_toCtorIdx(v_x_4__boxed_16_);
return v_res_17_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___redArg(lean_object* v_k_18_){
_start:
{
lean_inc(v_k_18_);
return v_k_18_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___redArg___boxed(lean_object* v_k_19_){
_start:
{
lean_object* v_res_20_; 
v_res_20_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___redArg(v_k_19_);
lean_dec(v_k_19_);
return v_res_20_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim(lean_object* v_motive_21_, lean_object* v_ctorIdx_22_, uint8_t v_t_23_, lean_object* v_h_24_, lean_object* v_k_25_){
_start:
{
lean_inc(v_k_25_);
return v_k_25_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim___boxed(lean_object* v_motive_26_, lean_object* v_ctorIdx_27_, lean_object* v_t_28_, lean_object* v_h_29_, lean_object* v_k_30_){
_start:
{
uint8_t v_t_boxed_31_; lean_object* v_res_32_; 
v_t_boxed_31_ = lean_unbox(v_t_28_);
v_res_32_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorElim(v_motive_26_, v_ctorIdx_27_, v_t_boxed_31_, v_h_29_, v_k_30_);
lean_dec(v_k_30_);
lean_dec(v_ctorIdx_27_);
return v_res_32_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___redArg(lean_object* v_boStd1RiemannZetaAndLiTarget_33_){
_start:
{
lean_inc(v_boStd1RiemannZetaAndLiTarget_33_);
return v_boStd1RiemannZetaAndLiTarget_33_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___redArg___boxed(lean_object* v_boStd1RiemannZetaAndLiTarget_34_){
_start:
{
lean_object* v_res_35_; 
v_res_35_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___redArg(v_boStd1RiemannZetaAndLiTarget_34_);
lean_dec(v_boStd1RiemannZetaAndLiTarget_34_);
return v_res_35_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim(lean_object* v_motive_36_, uint8_t v_t_37_, lean_object* v_h_38_, lean_object* v_boStd1RiemannZetaAndLiTarget_39_){
_start:
{
lean_inc(v_boStd1RiemannZetaAndLiTarget_39_);
return v_boStd1RiemannZetaAndLiTarget_39_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim___boxed(lean_object* v_motive_40_, lean_object* v_t_41_, lean_object* v_h_42_, lean_object* v_boStd1RiemannZetaAndLiTarget_43_){
_start:
{
uint8_t v_t_boxed_44_; lean_object* v_res_45_; 
v_t_boxed_44_ = lean_unbox(v_t_41_);
v_res_45_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd1RiemannZetaAndLiTarget_elim(v_motive_40_, v_t_boxed_44_, v_h_42_, v_boStd1RiemannZetaAndLiTarget_43_);
lean_dec(v_boStd1RiemannZetaAndLiTarget_43_);
return v_res_45_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___redArg(lean_object* v_boStd2LiKernelFiniteObjectBridge_46_){
_start:
{
lean_inc(v_boStd2LiKernelFiniteObjectBridge_46_);
return v_boStd2LiKernelFiniteObjectBridge_46_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___redArg___boxed(lean_object* v_boStd2LiKernelFiniteObjectBridge_47_){
_start:
{
lean_object* v_res_48_; 
v_res_48_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___redArg(v_boStd2LiKernelFiniteObjectBridge_47_);
lean_dec(v_boStd2LiKernelFiniteObjectBridge_47_);
return v_res_48_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim(lean_object* v_motive_49_, uint8_t v_t_50_, lean_object* v_h_51_, lean_object* v_boStd2LiKernelFiniteObjectBridge_52_){
_start:
{
lean_inc(v_boStd2LiKernelFiniteObjectBridge_52_);
return v_boStd2LiKernelFiniteObjectBridge_52_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim___boxed(lean_object* v_motive_53_, lean_object* v_t_54_, lean_object* v_h_55_, lean_object* v_boStd2LiKernelFiniteObjectBridge_56_){
_start:
{
uint8_t v_t_boxed_57_; lean_object* v_res_58_; 
v_t_boxed_57_ = lean_unbox(v_t_54_);
v_res_58_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd2LiKernelFiniteObjectBridge_elim(v_motive_53_, v_t_boxed_57_, v_h_55_, v_boStd2LiKernelFiniteObjectBridge_56_);
lean_dec(v_boStd2LiKernelFiniteObjectBridge_56_);
return v_res_58_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___redArg(lean_object* v_boStd3AbelBoundarySameScaleBridge_59_){
_start:
{
lean_inc(v_boStd3AbelBoundarySameScaleBridge_59_);
return v_boStd3AbelBoundarySameScaleBridge_59_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___redArg___boxed(lean_object* v_boStd3AbelBoundarySameScaleBridge_60_){
_start:
{
lean_object* v_res_61_; 
v_res_61_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___redArg(v_boStd3AbelBoundarySameScaleBridge_60_);
lean_dec(v_boStd3AbelBoundarySameScaleBridge_60_);
return v_res_61_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim(lean_object* v_motive_62_, uint8_t v_t_63_, lean_object* v_h_64_, lean_object* v_boStd3AbelBoundarySameScaleBridge_65_){
_start:
{
lean_inc(v_boStd3AbelBoundarySameScaleBridge_65_);
return v_boStd3AbelBoundarySameScaleBridge_65_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim___boxed(lean_object* v_motive_66_, lean_object* v_t_67_, lean_object* v_h_68_, lean_object* v_boStd3AbelBoundarySameScaleBridge_69_){
_start:
{
uint8_t v_t_boxed_70_; lean_object* v_res_71_; 
v_t_boxed_70_ = lean_unbox(v_t_67_);
v_res_71_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd3AbelBoundarySameScaleBridge_elim(v_motive_66_, v_t_boxed_70_, v_h_68_, v_boStd3AbelBoundarySameScaleBridge_69_);
lean_dec(v_boStd3AbelBoundarySameScaleBridge_69_);
return v_res_71_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___redArg(lean_object* v_boStd4ExplicitFormulaClosureBridge_72_){
_start:
{
lean_inc(v_boStd4ExplicitFormulaClosureBridge_72_);
return v_boStd4ExplicitFormulaClosureBridge_72_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___redArg___boxed(lean_object* v_boStd4ExplicitFormulaClosureBridge_73_){
_start:
{
lean_object* v_res_74_; 
v_res_74_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___redArg(v_boStd4ExplicitFormulaClosureBridge_73_);
lean_dec(v_boStd4ExplicitFormulaClosureBridge_73_);
return v_res_74_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim(lean_object* v_motive_75_, uint8_t v_t_76_, lean_object* v_h_77_, lean_object* v_boStd4ExplicitFormulaClosureBridge_78_){
_start:
{
lean_inc(v_boStd4ExplicitFormulaClosureBridge_78_);
return v_boStd4ExplicitFormulaClosureBridge_78_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim___boxed(lean_object* v_motive_79_, lean_object* v_t_80_, lean_object* v_h_81_, lean_object* v_boStd4ExplicitFormulaClosureBridge_82_){
_start:
{
uint8_t v_t_boxed_83_; lean_object* v_res_84_; 
v_t_boxed_83_ = lean_unbox(v_t_80_);
v_res_84_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd4ExplicitFormulaClosureBridge_elim(v_motive_79_, v_t_boxed_83_, v_h_81_, v_boStd4ExplicitFormulaClosureBridge_82_);
lean_dec(v_boStd4ExplicitFormulaClosureBridge_82_);
return v_res_84_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___redArg(lean_object* v_boStd5AdmissibleScaleTopologyBridge_85_){
_start:
{
lean_inc(v_boStd5AdmissibleScaleTopologyBridge_85_);
return v_boStd5AdmissibleScaleTopologyBridge_85_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___redArg___boxed(lean_object* v_boStd5AdmissibleScaleTopologyBridge_86_){
_start:
{
lean_object* v_res_87_; 
v_res_87_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___redArg(v_boStd5AdmissibleScaleTopologyBridge_86_);
lean_dec(v_boStd5AdmissibleScaleTopologyBridge_86_);
return v_res_87_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim(lean_object* v_motive_88_, uint8_t v_t_89_, lean_object* v_h_90_, lean_object* v_boStd5AdmissibleScaleTopologyBridge_91_){
_start:
{
lean_inc(v_boStd5AdmissibleScaleTopologyBridge_91_);
return v_boStd5AdmissibleScaleTopologyBridge_91_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim___boxed(lean_object* v_motive_92_, lean_object* v_t_93_, lean_object* v_h_94_, lean_object* v_boStd5AdmissibleScaleTopologyBridge_95_){
_start:
{
uint8_t v_t_boxed_96_; lean_object* v_res_97_; 
v_t_boxed_96_ = lean_unbox(v_t_93_);
v_res_97_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd5AdmissibleScaleTopologyBridge_elim(v_motive_92_, v_t_boxed_96_, v_h_94_, v_boStd5AdmissibleScaleTopologyBridge_95_);
lean_dec(v_boStd5AdmissibleScaleTopologyBridge_95_);
return v_res_97_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___redArg(lean_object* v_boStd6TerminalPacketBridge_98_){
_start:
{
lean_inc(v_boStd6TerminalPacketBridge_98_);
return v_boStd6TerminalPacketBridge_98_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___redArg___boxed(lean_object* v_boStd6TerminalPacketBridge_99_){
_start:
{
lean_object* v_res_100_; 
v_res_100_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___redArg(v_boStd6TerminalPacketBridge_99_);
lean_dec(v_boStd6TerminalPacketBridge_99_);
return v_res_100_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim(lean_object* v_motive_101_, uint8_t v_t_102_, lean_object* v_h_103_, lean_object* v_boStd6TerminalPacketBridge_104_){
_start:
{
lean_inc(v_boStd6TerminalPacketBridge_104_);
return v_boStd6TerminalPacketBridge_104_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim___boxed(lean_object* v_motive_105_, lean_object* v_t_106_, lean_object* v_h_107_, lean_object* v_boStd6TerminalPacketBridge_108_){
_start:
{
uint8_t v_t_boxed_109_; lean_object* v_res_110_; 
v_t_boxed_109_ = lean_unbox(v_t_106_);
v_res_110_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd6TerminalPacketBridge_elim(v_motive_105_, v_t_boxed_109_, v_h_107_, v_boStd6TerminalPacketBridge_108_);
lean_dec(v_boStd6TerminalPacketBridge_108_);
return v_res_110_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___redArg(lean_object* v_boStd7ObstructionQuotientLedgerBridge_111_){
_start:
{
lean_inc(v_boStd7ObstructionQuotientLedgerBridge_111_);
return v_boStd7ObstructionQuotientLedgerBridge_111_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___redArg___boxed(lean_object* v_boStd7ObstructionQuotientLedgerBridge_112_){
_start:
{
lean_object* v_res_113_; 
v_res_113_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___redArg(v_boStd7ObstructionQuotientLedgerBridge_112_);
lean_dec(v_boStd7ObstructionQuotientLedgerBridge_112_);
return v_res_113_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim(lean_object* v_motive_114_, uint8_t v_t_115_, lean_object* v_h_116_, lean_object* v_boStd7ObstructionQuotientLedgerBridge_117_){
_start:
{
lean_inc(v_boStd7ObstructionQuotientLedgerBridge_117_);
return v_boStd7ObstructionQuotientLedgerBridge_117_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim___boxed(lean_object* v_motive_118_, lean_object* v_t_119_, lean_object* v_h_120_, lean_object* v_boStd7ObstructionQuotientLedgerBridge_121_){
_start:
{
uint8_t v_t_boxed_122_; lean_object* v_res_123_; 
v_t_boxed_122_ = lean_unbox(v_t_119_);
v_res_123_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd7ObstructionQuotientLedgerBridge_elim(v_motive_118_, v_t_boxed_122_, v_h_120_, v_boStd7ObstructionQuotientLedgerBridge_121_);
lean_dec(v_boStd7ObstructionQuotientLedgerBridge_121_);
return v_res_123_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___redArg(lean_object* v_boStd8LiTargetToStandardConclusion_124_){
_start:
{
lean_inc(v_boStd8LiTargetToStandardConclusion_124_);
return v_boStd8LiTargetToStandardConclusion_124_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___redArg___boxed(lean_object* v_boStd8LiTargetToStandardConclusion_125_){
_start:
{
lean_object* v_res_126_; 
v_res_126_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___redArg(v_boStd8LiTargetToStandardConclusion_125_);
lean_dec(v_boStd8LiTargetToStandardConclusion_125_);
return v_res_126_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim(lean_object* v_motive_127_, uint8_t v_t_128_, lean_object* v_h_129_, lean_object* v_boStd8LiTargetToStandardConclusion_130_){
_start:
{
lean_inc(v_boStd8LiTargetToStandardConclusion_130_);
return v_boStd8LiTargetToStandardConclusion_130_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim___boxed(lean_object* v_motive_131_, lean_object* v_t_132_, lean_object* v_h_133_, lean_object* v_boStd8LiTargetToStandardConclusion_134_){
_start:
{
uint8_t v_t_boxed_135_; lean_object* v_res_136_; 
v_t_boxed_135_ = lean_unbox(v_t_132_);
v_res_136_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_boStd8LiTargetToStandardConclusion_elim(v_motive_131_, v_t_boxed_135_, v_h_133_, v_boStd8LiTargetToStandardConclusion_134_);
lean_dec(v_boStd8LiTargetToStandardConclusion_134_);
return v_res_136_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16(void){
_start:
{
lean_object* v___x_161_; lean_object* v___x_162_; 
v___x_161_ = lean_unsigned_to_nat(2u);
v___x_162_ = lean_nat_to_int(v___x_161_);
return v___x_162_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17(void){
_start:
{
lean_object* v___x_163_; lean_object* v___x_164_; 
v___x_163_ = lean_unsigned_to_nat(1u);
v___x_164_ = lean_nat_to_int(v___x_163_);
return v___x_164_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr(uint8_t v_x_165_, lean_object* v_prec_166_){
_start:
{
lean_object* v___y_168_; lean_object* v___y_175_; lean_object* v___y_182_; lean_object* v___y_189_; lean_object* v___y_196_; lean_object* v___y_203_; lean_object* v___y_210_; lean_object* v___y_217_; 
switch(v_x_165_)
{
case 0:
{
lean_object* v___x_223_; uint8_t v___x_224_; 
v___x_223_ = lean_unsigned_to_nat(1024u);
v___x_224_ = lean_nat_dec_le(v___x_223_, v_prec_166_);
if (v___x_224_ == 0)
{
lean_object* v___x_225_; 
v___x_225_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_168_ = v___x_225_;
goto v___jp_167_;
}
else
{
lean_object* v___x_226_; 
v___x_226_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_168_ = v___x_226_;
goto v___jp_167_;
}
}
case 1:
{
lean_object* v___x_227_; uint8_t v___x_228_; 
v___x_227_ = lean_unsigned_to_nat(1024u);
v___x_228_ = lean_nat_dec_le(v___x_227_, v_prec_166_);
if (v___x_228_ == 0)
{
lean_object* v___x_229_; 
v___x_229_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_175_ = v___x_229_;
goto v___jp_174_;
}
else
{
lean_object* v___x_230_; 
v___x_230_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_175_ = v___x_230_;
goto v___jp_174_;
}
}
case 2:
{
lean_object* v___x_231_; uint8_t v___x_232_; 
v___x_231_ = lean_unsigned_to_nat(1024u);
v___x_232_ = lean_nat_dec_le(v___x_231_, v_prec_166_);
if (v___x_232_ == 0)
{
lean_object* v___x_233_; 
v___x_233_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_182_ = v___x_233_;
goto v___jp_181_;
}
else
{
lean_object* v___x_234_; 
v___x_234_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_182_ = v___x_234_;
goto v___jp_181_;
}
}
case 3:
{
lean_object* v___x_235_; uint8_t v___x_236_; 
v___x_235_ = lean_unsigned_to_nat(1024u);
v___x_236_ = lean_nat_dec_le(v___x_235_, v_prec_166_);
if (v___x_236_ == 0)
{
lean_object* v___x_237_; 
v___x_237_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_189_ = v___x_237_;
goto v___jp_188_;
}
else
{
lean_object* v___x_238_; 
v___x_238_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_189_ = v___x_238_;
goto v___jp_188_;
}
}
case 4:
{
lean_object* v___x_239_; uint8_t v___x_240_; 
v___x_239_ = lean_unsigned_to_nat(1024u);
v___x_240_ = lean_nat_dec_le(v___x_239_, v_prec_166_);
if (v___x_240_ == 0)
{
lean_object* v___x_241_; 
v___x_241_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_196_ = v___x_241_;
goto v___jp_195_;
}
else
{
lean_object* v___x_242_; 
v___x_242_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_196_ = v___x_242_;
goto v___jp_195_;
}
}
case 5:
{
lean_object* v___x_243_; uint8_t v___x_244_; 
v___x_243_ = lean_unsigned_to_nat(1024u);
v___x_244_ = lean_nat_dec_le(v___x_243_, v_prec_166_);
if (v___x_244_ == 0)
{
lean_object* v___x_245_; 
v___x_245_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_203_ = v___x_245_;
goto v___jp_202_;
}
else
{
lean_object* v___x_246_; 
v___x_246_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_203_ = v___x_246_;
goto v___jp_202_;
}
}
case 6:
{
lean_object* v___x_247_; uint8_t v___x_248_; 
v___x_247_ = lean_unsigned_to_nat(1024u);
v___x_248_ = lean_nat_dec_le(v___x_247_, v_prec_166_);
if (v___x_248_ == 0)
{
lean_object* v___x_249_; 
v___x_249_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_210_ = v___x_249_;
goto v___jp_209_;
}
else
{
lean_object* v___x_250_; 
v___x_250_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_210_ = v___x_250_;
goto v___jp_209_;
}
}
default: 
{
lean_object* v___x_251_; uint8_t v___x_252_; 
v___x_251_ = lean_unsigned_to_nat(1024u);
v___x_252_ = lean_nat_dec_le(v___x_251_, v_prec_166_);
if (v___x_252_ == 0)
{
lean_object* v___x_253_; 
v___x_253_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__16);
v___y_217_ = v___x_253_;
goto v___jp_216_;
}
else
{
lean_object* v___x_254_; 
v___x_254_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17, &lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__17);
v___y_217_ = v___x_254_;
goto v___jp_216_;
}
}
}
v___jp_167_:
{
lean_object* v___x_169_; lean_object* v___x_170_; uint8_t v___x_171_; lean_object* v___x_172_; lean_object* v___x_173_; 
v___x_169_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__1));
lean_inc(v___y_168_);
v___x_170_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_170_, 0, v___y_168_);
lean_ctor_set(v___x_170_, 1, v___x_169_);
v___x_171_ = 0;
v___x_172_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_172_, 0, v___x_170_);
lean_ctor_set_uint8(v___x_172_, sizeof(void*)*1, v___x_171_);
v___x_173_ = l_Repr_addAppParen(v___x_172_, v_prec_166_);
return v___x_173_;
}
v___jp_174_:
{
lean_object* v___x_176_; lean_object* v___x_177_; uint8_t v___x_178_; lean_object* v___x_179_; lean_object* v___x_180_; 
v___x_176_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__3));
lean_inc(v___y_175_);
v___x_177_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_177_, 0, v___y_175_);
lean_ctor_set(v___x_177_, 1, v___x_176_);
v___x_178_ = 0;
v___x_179_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_179_, 0, v___x_177_);
lean_ctor_set_uint8(v___x_179_, sizeof(void*)*1, v___x_178_);
v___x_180_ = l_Repr_addAppParen(v___x_179_, v_prec_166_);
return v___x_180_;
}
v___jp_181_:
{
lean_object* v___x_183_; lean_object* v___x_184_; uint8_t v___x_185_; lean_object* v___x_186_; lean_object* v___x_187_; 
v___x_183_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__5));
lean_inc(v___y_182_);
v___x_184_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_184_, 0, v___y_182_);
lean_ctor_set(v___x_184_, 1, v___x_183_);
v___x_185_ = 0;
v___x_186_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_186_, 0, v___x_184_);
lean_ctor_set_uint8(v___x_186_, sizeof(void*)*1, v___x_185_);
v___x_187_ = l_Repr_addAppParen(v___x_186_, v_prec_166_);
return v___x_187_;
}
v___jp_188_:
{
lean_object* v___x_190_; lean_object* v___x_191_; uint8_t v___x_192_; lean_object* v___x_193_; lean_object* v___x_194_; 
v___x_190_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__7));
lean_inc(v___y_189_);
v___x_191_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_191_, 0, v___y_189_);
lean_ctor_set(v___x_191_, 1, v___x_190_);
v___x_192_ = 0;
v___x_193_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_193_, 0, v___x_191_);
lean_ctor_set_uint8(v___x_193_, sizeof(void*)*1, v___x_192_);
v___x_194_ = l_Repr_addAppParen(v___x_193_, v_prec_166_);
return v___x_194_;
}
v___jp_195_:
{
lean_object* v___x_197_; lean_object* v___x_198_; uint8_t v___x_199_; lean_object* v___x_200_; lean_object* v___x_201_; 
v___x_197_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__9));
lean_inc(v___y_196_);
v___x_198_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_198_, 0, v___y_196_);
lean_ctor_set(v___x_198_, 1, v___x_197_);
v___x_199_ = 0;
v___x_200_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_200_, 0, v___x_198_);
lean_ctor_set_uint8(v___x_200_, sizeof(void*)*1, v___x_199_);
v___x_201_ = l_Repr_addAppParen(v___x_200_, v_prec_166_);
return v___x_201_;
}
v___jp_202_:
{
lean_object* v___x_204_; lean_object* v___x_205_; uint8_t v___x_206_; lean_object* v___x_207_; lean_object* v___x_208_; 
v___x_204_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__11));
lean_inc(v___y_203_);
v___x_205_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_205_, 0, v___y_203_);
lean_ctor_set(v___x_205_, 1, v___x_204_);
v___x_206_ = 0;
v___x_207_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_207_, 0, v___x_205_);
lean_ctor_set_uint8(v___x_207_, sizeof(void*)*1, v___x_206_);
v___x_208_ = l_Repr_addAppParen(v___x_207_, v_prec_166_);
return v___x_208_;
}
v___jp_209_:
{
lean_object* v___x_211_; lean_object* v___x_212_; uint8_t v___x_213_; lean_object* v___x_214_; lean_object* v___x_215_; 
v___x_211_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__13));
lean_inc(v___y_210_);
v___x_212_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_212_, 0, v___y_210_);
lean_ctor_set(v___x_212_, 1, v___x_211_);
v___x_213_ = 0;
v___x_214_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_214_, 0, v___x_212_);
lean_ctor_set_uint8(v___x_214_, sizeof(void*)*1, v___x_213_);
v___x_215_ = l_Repr_addAppParen(v___x_214_, v_prec_166_);
return v___x_215_;
}
v___jp_216_:
{
lean_object* v___x_218_; lean_object* v___x_219_; uint8_t v___x_220_; lean_object* v___x_221_; lean_object* v___x_222_; 
v___x_218_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___closed__15));
lean_inc(v___y_217_);
v___x_219_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_219_, 0, v___y_217_);
lean_ctor_set(v___x_219_, 1, v___x_218_);
v___x_220_ = 0;
v___x_221_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_221_, 0, v___x_219_);
lean_ctor_set_uint8(v___x_221_, sizeof(void*)*1, v___x_220_);
v___x_222_ = l_Repr_addAppParen(v___x_221_, v_prec_166_);
return v___x_222_;
}
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr___boxed(lean_object* v_x_255_, lean_object* v_prec_256_){
_start:
{
uint8_t v_x_457__boxed_257_; lean_object* v_res_258_; 
v_x_457__boxed_257_ = lean_unbox(v_x_255_);
v_res_258_ = lp_R1961DLeanPacket_R1954DLeanBridge_instReprBridgeObligationLabel_repr(v_x_457__boxed_257_, v_prec_256_);
lean_dec(v_prec_256_);
return v_res_258_;
}
}
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ofNat(lean_object* v_n_261_){
_start:
{
lean_object* v___x_262_; uint8_t v___x_263_; 
v___x_262_ = lean_unsigned_to_nat(3u);
v___x_263_ = lean_nat_dec_le(v_n_261_, v___x_262_);
if (v___x_263_ == 0)
{
lean_object* v___x_264_; uint8_t v___x_265_; 
v___x_264_ = lean_unsigned_to_nat(5u);
v___x_265_ = lean_nat_dec_le(v_n_261_, v___x_264_);
if (v___x_265_ == 0)
{
lean_object* v___x_266_; uint8_t v___x_267_; 
v___x_266_ = lean_unsigned_to_nat(6u);
v___x_267_ = lean_nat_dec_le(v_n_261_, v___x_266_);
if (v___x_267_ == 0)
{
uint8_t v___x_268_; 
v___x_268_ = 7;
return v___x_268_;
}
else
{
uint8_t v___x_269_; 
v___x_269_ = 6;
return v___x_269_;
}
}
else
{
lean_object* v___x_270_; uint8_t v___x_271_; 
v___x_270_ = lean_unsigned_to_nat(4u);
v___x_271_ = lean_nat_dec_le(v_n_261_, v___x_270_);
if (v___x_271_ == 0)
{
uint8_t v___x_272_; 
v___x_272_ = 5;
return v___x_272_;
}
else
{
uint8_t v___x_273_; 
v___x_273_ = 4;
return v___x_273_;
}
}
}
else
{
lean_object* v___x_274_; uint8_t v___x_275_; 
v___x_274_ = lean_unsigned_to_nat(1u);
v___x_275_ = lean_nat_dec_le(v_n_261_, v___x_274_);
if (v___x_275_ == 0)
{
lean_object* v___x_276_; uint8_t v___x_277_; 
v___x_276_ = lean_unsigned_to_nat(2u);
v___x_277_ = lean_nat_dec_le(v_n_261_, v___x_276_);
if (v___x_277_ == 0)
{
uint8_t v___x_278_; 
v___x_278_ = 3;
return v___x_278_;
}
else
{
uint8_t v___x_279_; 
v___x_279_ = 2;
return v___x_279_;
}
}
else
{
lean_object* v___x_280_; uint8_t v___x_281_; 
v___x_280_ = lean_unsigned_to_nat(0u);
v___x_281_ = lean_nat_dec_le(v_n_261_, v___x_280_);
if (v___x_281_ == 0)
{
uint8_t v___x_282_; 
v___x_282_ = 1;
return v___x_282_;
}
else
{
uint8_t v___x_283_; 
v___x_283_ = 0;
return v___x_283_;
}
}
}
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ofNat___boxed(lean_object* v_n_284_){
_start:
{
uint8_t v_res_285_; lean_object* v_r_286_; 
v_res_285_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ofNat(v_n_284_);
lean_dec(v_n_284_);
v_r_286_ = lean_box(v_res_285_);
return v_r_286_;
}
}
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1954DLeanBridge_instDecidableEqBridgeObligationLabel(uint8_t v_x_287_, uint8_t v_y_288_){
_start:
{
lean_object* v___x_289_; lean_object* v___x_290_; uint8_t v___x_291_; 
v___x_289_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx(v_x_287_);
v___x_290_ = lp_R1961DLeanPacket_R1954DLeanBridge_BridgeObligationLabel_ctorIdx(v_y_288_);
v___x_291_ = lean_nat_dec_eq(v___x_289_, v___x_290_);
lean_dec(v___x_290_);
lean_dec(v___x_289_);
return v___x_291_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_instDecidableEqBridgeObligationLabel___boxed(lean_object* v_x_292_, lean_object* v_y_293_){
_start:
{
uint8_t v_x_13__boxed_294_; uint8_t v_y_14__boxed_295_; uint8_t v_res_296_; lean_object* v_r_297_; 
v_x_13__boxed_294_ = lean_unbox(v_x_292_);
v_y_14__boxed_295_ = lean_unbox(v_y_293_);
v_res_296_ = lp_R1961DLeanPacket_R1954DLeanBridge_instDecidableEqBridgeObligationLabel(v_x_13__boxed_294_, v_y_14__boxed_295_);
v_r_297_ = lean_box(v_res_296_);
return v_r_297_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_List_mapTR_loop___at___00R1954DLeanBridge_bridgeObligationLabels_spec__0(lean_object* v_a_372_, lean_object* v_a_373_){
_start:
{
if (lean_obj_tag(v_a_372_) == 0)
{
lean_object* v___x_374_; 
v___x_374_ = l_List_reverse___redArg(v_a_373_);
return v___x_374_;
}
else
{
lean_object* v_head_375_; lean_object* v_tail_376_; lean_object* v___x_378_; uint8_t v_isShared_379_; uint8_t v_isSharedCheck_386_; 
v_head_375_ = lean_ctor_get(v_a_372_, 0);
v_tail_376_ = lean_ctor_get(v_a_372_, 1);
v_isSharedCheck_386_ = !lean_is_exclusive(v_a_372_);
if (v_isSharedCheck_386_ == 0)
{
v___x_378_ = v_a_372_;
v_isShared_379_ = v_isSharedCheck_386_;
goto v_resetjp_377_;
}
else
{
lean_inc(v_tail_376_);
lean_inc(v_head_375_);
lean_dec(v_a_372_);
v___x_378_ = lean_box(0);
v_isShared_379_ = v_isSharedCheck_386_;
goto v_resetjp_377_;
}
v_resetjp_377_:
{
uint8_t v_label_380_; lean_object* v___x_381_; lean_object* v___x_383_; 
v_label_380_ = lean_ctor_get_uint8(v_head_375_, sizeof(void*)*2);
lean_dec(v_head_375_);
v___x_381_ = lean_box(v_label_380_);
if (v_isShared_379_ == 0)
{
lean_ctor_set(v___x_378_, 1, v_a_373_);
lean_ctor_set(v___x_378_, 0, v___x_381_);
v___x_383_ = v___x_378_;
goto v_reusejp_382_;
}
else
{
lean_object* v_reuseFailAlloc_385_; 
v_reuseFailAlloc_385_ = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(v_reuseFailAlloc_385_, 0, v___x_381_);
lean_ctor_set(v_reuseFailAlloc_385_, 1, v_a_373_);
v___x_383_ = v_reuseFailAlloc_385_;
goto v_reusejp_382_;
}
v_reusejp_382_:
{
v_a_372_ = v_tail_376_;
v_a_373_ = v___x_383_;
goto _start;
}
}
}
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels___closed__0(void){
_start:
{
lean_object* v___x_387_; lean_object* v___x_388_; lean_object* v___x_389_; 
v___x_387_ = lean_box(0);
v___x_388_ = ((lean_object*)(lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationBindings));
v___x_389_ = lp_R1961DLeanPacket_List_mapTR_loop___at___00R1954DLeanBridge_bridgeObligationLabels_spec__0(v___x_388_, v___x_387_);
return v___x_389_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels(void){
_start:
{
lean_object* v___x_390_; 
v___x_390_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels___closed__0, &lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels___closed__0_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels___closed__0);
return v___x_390_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_ManuscriptObjects(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1952DLeanSupport_ObligationFieldBindings(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeObligations(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_ManuscriptObjects(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1952DLeanSupport_ObligationFieldBindings(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels = _init_lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels();
lean_mark_persistent(lp_R1961DLeanPacket_R1954DLeanBridge_bridgeObligationLabels);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
