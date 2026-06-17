// Lean compiler output
// Module: R1955DLeanScaffold.RefinedBridgeObligations
// Imports: public import Init public meta import Init public import R1955DLeanScaffold.ManuscriptScaffolds public import R1954DLeanBridge.BridgeObligations
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
lean_object* l_List_reverse___redArg(lean_object*);
lean_object* lean_nat_to_int(lean_object*);
lean_object* l_Repr_addAppParen(lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_toCtorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_toCtorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 76, .m_capacity = 76, .m_length = 75, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__0_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__1_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 73, .m_capacity = 73, .m_length = 72, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbLi1LiCoefficientFamily"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__2_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__3_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__2_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__3 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__3_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__4_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 75, .m_capacity = 75, .m_length = 74, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbLi2LiKernelCompatibility"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__4 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__4_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__5_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__4_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__5 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__5_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__6_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 80, .m_capacity = 80, .m_length = 79, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbLi3FiniteLiInputCompatibility"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__6 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__6_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__7_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__6_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__7 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__7_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__8_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 80, .m_capacity = 80, .m_length = 79, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbAbel1AbelRegularizationObject"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__8 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__8_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__9_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__8_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__9 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__9_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__10_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 83, .m_capacity = 83, .m_length = 82, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbAbel2SameScaleBoundaryCoordinate"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__10 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__10_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__11_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__10_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__11 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__11_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__12_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 76, .m_capacity = 76, .m_length = 75, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbEF1PrimePacketRealization"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__12 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__12_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__13_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__12_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__13 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__13_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__14_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 75, .m_capacity = 75, .m_length = 74, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbEF2ZeroPacketRealization"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__14 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__14_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__15_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__14_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__15 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__15_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__16_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 74, .m_capacity = 74, .m_length = 73, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbEF3EndpointBoundaryTerm"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__16 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__16_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__17_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__16_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__17 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__17_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__18_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 80, .m_capacity = 80, .m_length = 79, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbScale1AdmissibleScaleTopology"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__18 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__18_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__19_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__18_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__19 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__19_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__20_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 80, .m_capacity = 80, .m_length = 79, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbScale2UniformLittleOhTracking"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__20 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__20_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__21_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__20_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__21 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__21_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__22_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 84, .m_capacity = 84, .m_length = 83, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbTerm1TerminalPacketClassification"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__22 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__22_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__23_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__22_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__23 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__23_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__24_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 77, .m_capacity = 77, .m_length = 76, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbTerm2TerminalNonAbsorption"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__24 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__24_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__25_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__24_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__25 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__25_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__26_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 79, .m_capacity = 79, .m_length = 78, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbOQ1ObstructionQuotientLedger"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__26 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__26_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__27_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__26_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__27 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__27_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__28_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 83, .m_capacity = 83, .m_length = 82, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbOQ2NonInternalCancellationLedger"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__28 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__28_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__29_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__28_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__29 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__29_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__30_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 90, .m_capacity = 90, .m_length = 89, .m_data = "R1955DLeanScaffold.RefinedBridgeObligationLabel.rbConclusion1LiTargetToStandardConclusion"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__30 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__30_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__31_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*1 + 0, .m_other = 1, .m_tag = 3}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__30_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__31 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__31_value;
static lean_once_cell_t lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32;
static lean_once_cell_t lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr(uint8_t, lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___boxed(lean_object*, lean_object*);
static const lean_closure_object lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_closure_object) + sizeof(void*)*0, .m_other = 0, .m_tag = 245}, .m_fun = (void*)lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___boxed, .m_arity = 2, .m_num_fixed = 0, .m_objs = {} };
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel___closed__0_value;
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ofNat(lean_object*);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ofNat___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1955DLeanScaffold_instDecidableEqRefinedBridgeObligationLabel(uint8_t, uint8_t);
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instDecidableEqRefinedBridgeObligationLabel___boxed(lean_object*, lean_object*);
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 46, .m_capacity = 46, .m_length = 45, .m_data = "standard RH statement and Li-criterion target"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__0_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 28, .m_capacity = 28, .m_length = 27, .m_data = "standard target declaration"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__1_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 46, .m_capacity = 46, .m_length = 45, .m_data = "refined bridge obligation, not analytic proof"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__3_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__0_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__1_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(0, 0, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__3 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__3_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__4_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 22, .m_capacity = 22, .m_length = 21, .m_data = "Li coefficient family"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__4 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__4_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__5_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 20, .m_capacity = 20, .m_length = 19, .m_data = "Li-side target data"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__5 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__5_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__6_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__4_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__5_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(1, 1, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__6 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__6_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__7_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 17, .m_capacity = 17, .m_length = 16, .m_data = "Li kernel object"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__7 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__7_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__8_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 31, .m_capacity = 31, .m_length = 30, .m_data = "Li-kernel finite-object bridge"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__8 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__8_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__9_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__7_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__8_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(2, 2, 1, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__9 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__9_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__10_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 16, .m_capacity = 16, .m_length = 15, .m_data = "finite Li input"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__10 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__10_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__11_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 24, .m_capacity = 24, .m_length = 23, .m_data = "finite-to-Abel entrance"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__11 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__11_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__12_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__10_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__11_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(3, 3, 1, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__12 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__12_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__13_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 27, .m_capacity = 27, .m_length = 26, .m_data = "Abel regularization object"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__13 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__13_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__14_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 22, .m_capacity = 22, .m_length = 21, .m_data = "Abel-boundary passage"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__14 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__14_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__15_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__13_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__14_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(4, 4, 2, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__15 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__15_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__16_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 31, .m_capacity = 31, .m_length = 30, .m_data = "same-scale boundary coordinate"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__16 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__16_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__17_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 36, .m_capacity = 36, .m_length = 35, .m_data = "same-scale Abel-boundary coordinate"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__17 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__17_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__18_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__16_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__17_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(5, 4, 2, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__18 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__18_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__19_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 13, .m_capacity = 13, .m_length = 12, .m_data = "prime packet"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__19 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__19_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__20_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 30, .m_capacity = 30, .m_length = 29, .m_data = "explicit-formula prime packet"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__20 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__20_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__21_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__19_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__20_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(6, 5, 3, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__21 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__21_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__22_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 18, .m_capacity = 18, .m_length = 17, .m_data = "zero-phase packet"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__22 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__22_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__23_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 29, .m_capacity = 29, .m_length = 28, .m_data = "explicit-formula zero packet"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__23 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__23_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__24_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__22_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__23_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(7, 6, 3, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__24 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__24_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__25_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 23, .m_capacity = 23, .m_length = 22, .m_data = "endpoint boundary term"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__25 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__25_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__26_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 40, .m_capacity = 40, .m_length = 39, .m_data = "explicit-formula endpoint boundary term"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__26 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__26_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__27_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__25_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__26_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(8, 7, 3, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__27 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__27_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__28_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 26, .m_capacity = 26, .m_length = 25, .m_data = "admissible scale topology"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__28 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__28_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__29_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 15, .m_capacity = 15, .m_length = 14, .m_data = "scale topology"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__29 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__29_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__30_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__28_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__29_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(9, 8, 4, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__30 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__30_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__31_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 27, .m_capacity = 27, .m_length = 26, .m_data = "uniform little-oh tracking"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__31 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__31_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__32_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 24, .m_capacity = 24, .m_length = 23, .m_data = "uniform scale estimates"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__32 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__32_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__33_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__31_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__32_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(10, 8, 4, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__33 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__33_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__34_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 31, .m_capacity = 31, .m_length = 30, .m_data = "terminal packet classification"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__34 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__34_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__35_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 37, .m_capacity = 37, .m_length = 36, .m_data = "prime-zero-endpoint terminal classes"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__35 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__35_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__36_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__34_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__35_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(11, 9, 5, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__36 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__36_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__37_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 24, .m_capacity = 24, .m_length = 23, .m_data = "terminal non-absorption"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__37 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__37_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__38_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 26, .m_capacity = 26, .m_length = 25, .m_data = "terminal no-escape branch"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__38 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__38_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__39_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__37_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__38_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(12, 9, 5, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__39 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__39_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__40_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 28, .m_capacity = 28, .m_length = 27, .m_data = "obstruction quotient ledger"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__40 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__40_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__41_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__40_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__40_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(13, 10, 6, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__41 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__41_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__42_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 33, .m_capacity = 33, .m_length = 32, .m_data = "non-internal cancellation ledger"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__42 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__42_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__43_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 39, .m_capacity = 39, .m_length = 38, .m_data = "non-internal cancellation alternatives"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__43 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__43_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__44_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__42_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__43_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(14, 10, 6, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__44 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__44_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__45_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 33, .m_capacity = 33, .m_length = 32, .m_data = "Li-target to standard conclusion"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__45 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__45_value;
static const lean_string_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__46_value = {.m_header = {.m_rc = 0, .m_cs_sz = 0, .m_other = 0, .m_tag = 249}, .m_size = 29, .m_capacity = 29, .m_length = 28, .m_data = "standard analytic conclusion"};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__46 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__46_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__47_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 8, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__45_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__46_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__2_value),LEAN_SCALAR_PTR_LITERAL(15, 11, 7, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__47 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__47_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__48_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__47_value),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__48 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__48_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__49_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__44_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__48_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__49 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__49_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__50_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__41_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__49_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__50 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__50_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__51_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__39_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__50_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__51 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__51_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__52_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__36_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__51_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__52 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__52_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__53_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__33_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__52_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__53 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__53_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__54_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__30_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__53_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__54 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__54_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__55_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__27_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__54_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__55 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__55_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__56_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__24_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__55_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__56 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__56_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__57_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__21_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__56_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__57 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__57_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__58_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__18_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__57_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__58 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__58_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__59_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__15_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__58_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__59 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__59_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__60_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__12_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__59_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__60 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__60_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__61_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__9_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__60_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__61 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__61_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__62_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__6_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__61_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__62 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__62_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__63_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__3_value),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__62_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__63 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__63_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings___closed__63_value;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_List_mapTR_loop___at___00R1955DLeanScaffold_refinedBridgeObligationLabels_spec__0(lean_object*, lean_object*);
static lean_once_cell_t lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels___closed__0;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_List_mapTR_loop___at___00R1955DLeanScaffold_refinedBridgeProjectionLabels_spec__0(lean_object*, lean_object*);
static lean_once_cell_t lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels___closed__0;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(7) << 1) | 1)),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__1_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(6) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__0_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__1 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__1_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__2_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(5) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__1_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__2 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__2_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__3_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(4) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__2_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__3 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__3_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__4_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(3) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__3_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__4 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__4_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__5_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(2) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__4_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__5 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__5_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__6_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(1) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__5_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__6 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__6_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__7_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*2 + 0, .m_other = 2, .m_tag = 1}, .m_objs = {((lean_object*)(((size_t)(0) << 1) | 1)),((lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__6_value)}};
static const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__7 = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__7_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold = (const lean_object*)&lp_R1961DLeanPacket_R1955DLeanScaffold_r1954BridgeLabelsCoveredByRefinedScaffold___closed__7_value;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx(uint8_t v_x_1_){
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
case 7:
{
lean_object* v___x_9_; 
v___x_9_ = lean_unsigned_to_nat(7u);
return v___x_9_;
}
case 8:
{
lean_object* v___x_10_; 
v___x_10_ = lean_unsigned_to_nat(8u);
return v___x_10_;
}
case 9:
{
lean_object* v___x_11_; 
v___x_11_ = lean_unsigned_to_nat(9u);
return v___x_11_;
}
case 10:
{
lean_object* v___x_12_; 
v___x_12_ = lean_unsigned_to_nat(10u);
return v___x_12_;
}
case 11:
{
lean_object* v___x_13_; 
v___x_13_ = lean_unsigned_to_nat(11u);
return v___x_13_;
}
case 12:
{
lean_object* v___x_14_; 
v___x_14_ = lean_unsigned_to_nat(12u);
return v___x_14_;
}
case 13:
{
lean_object* v___x_15_; 
v___x_15_ = lean_unsigned_to_nat(13u);
return v___x_15_;
}
case 14:
{
lean_object* v___x_16_; 
v___x_16_ = lean_unsigned_to_nat(14u);
return v___x_16_;
}
default: 
{
lean_object* v___x_17_; 
v___x_17_ = lean_unsigned_to_nat(15u);
return v___x_17_;
}
}
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx___boxed(lean_object* v_x_18_){
_start:
{
uint8_t v_x_boxed_19_; lean_object* v_res_20_; 
v_x_boxed_19_ = lean_unbox(v_x_18_);
v_res_20_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx(v_x_boxed_19_);
return v_res_20_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_toCtorIdx(uint8_t v_x_21_){
_start:
{
lean_object* v___x_22_; 
v___x_22_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx(v_x_21_);
return v___x_22_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_toCtorIdx___boxed(lean_object* v_x_23_){
_start:
{
uint8_t v_x_4__boxed_24_; lean_object* v_res_25_; 
v_x_4__boxed_24_ = lean_unbox(v_x_23_);
v_res_25_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_toCtorIdx(v_x_4__boxed_24_);
return v_res_25_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___redArg(lean_object* v_k_26_){
_start:
{
lean_inc(v_k_26_);
return v_k_26_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___redArg___boxed(lean_object* v_k_27_){
_start:
{
lean_object* v_res_28_; 
v_res_28_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___redArg(v_k_27_);
lean_dec(v_k_27_);
return v_res_28_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim(lean_object* v_motive_29_, lean_object* v_ctorIdx_30_, uint8_t v_t_31_, lean_object* v_h_32_, lean_object* v_k_33_){
_start:
{
lean_inc(v_k_33_);
return v_k_33_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim___boxed(lean_object* v_motive_34_, lean_object* v_ctorIdx_35_, lean_object* v_t_36_, lean_object* v_h_37_, lean_object* v_k_38_){
_start:
{
uint8_t v_t_boxed_39_; lean_object* v_res_40_; 
v_t_boxed_39_ = lean_unbox(v_t_36_);
v_res_40_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorElim(v_motive_34_, v_ctorIdx_35_, v_t_boxed_39_, v_h_37_, v_k_38_);
lean_dec(v_k_38_);
lean_dec(v_ctorIdx_35_);
return v_res_40_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___redArg(lean_object* v_rbStd1StandardRHAndLiTarget_41_){
_start:
{
lean_inc(v_rbStd1StandardRHAndLiTarget_41_);
return v_rbStd1StandardRHAndLiTarget_41_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___redArg___boxed(lean_object* v_rbStd1StandardRHAndLiTarget_42_){
_start:
{
lean_object* v_res_43_; 
v_res_43_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___redArg(v_rbStd1StandardRHAndLiTarget_42_);
lean_dec(v_rbStd1StandardRHAndLiTarget_42_);
return v_res_43_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim(lean_object* v_motive_44_, uint8_t v_t_45_, lean_object* v_h_46_, lean_object* v_rbStd1StandardRHAndLiTarget_47_){
_start:
{
lean_inc(v_rbStd1StandardRHAndLiTarget_47_);
return v_rbStd1StandardRHAndLiTarget_47_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim___boxed(lean_object* v_motive_48_, lean_object* v_t_49_, lean_object* v_h_50_, lean_object* v_rbStd1StandardRHAndLiTarget_51_){
_start:
{
uint8_t v_t_boxed_52_; lean_object* v_res_53_; 
v_t_boxed_52_ = lean_unbox(v_t_49_);
v_res_53_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbStd1StandardRHAndLiTarget_elim(v_motive_48_, v_t_boxed_52_, v_h_50_, v_rbStd1StandardRHAndLiTarget_51_);
lean_dec(v_rbStd1StandardRHAndLiTarget_51_);
return v_res_53_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___redArg(lean_object* v_rbLi1LiCoefficientFamily_54_){
_start:
{
lean_inc(v_rbLi1LiCoefficientFamily_54_);
return v_rbLi1LiCoefficientFamily_54_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___redArg___boxed(lean_object* v_rbLi1LiCoefficientFamily_55_){
_start:
{
lean_object* v_res_56_; 
v_res_56_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___redArg(v_rbLi1LiCoefficientFamily_55_);
lean_dec(v_rbLi1LiCoefficientFamily_55_);
return v_res_56_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim(lean_object* v_motive_57_, uint8_t v_t_58_, lean_object* v_h_59_, lean_object* v_rbLi1LiCoefficientFamily_60_){
_start:
{
lean_inc(v_rbLi1LiCoefficientFamily_60_);
return v_rbLi1LiCoefficientFamily_60_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim___boxed(lean_object* v_motive_61_, lean_object* v_t_62_, lean_object* v_h_63_, lean_object* v_rbLi1LiCoefficientFamily_64_){
_start:
{
uint8_t v_t_boxed_65_; lean_object* v_res_66_; 
v_t_boxed_65_ = lean_unbox(v_t_62_);
v_res_66_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi1LiCoefficientFamily_elim(v_motive_61_, v_t_boxed_65_, v_h_63_, v_rbLi1LiCoefficientFamily_64_);
lean_dec(v_rbLi1LiCoefficientFamily_64_);
return v_res_66_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___redArg(lean_object* v_rbLi2LiKernelCompatibility_67_){
_start:
{
lean_inc(v_rbLi2LiKernelCompatibility_67_);
return v_rbLi2LiKernelCompatibility_67_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___redArg___boxed(lean_object* v_rbLi2LiKernelCompatibility_68_){
_start:
{
lean_object* v_res_69_; 
v_res_69_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___redArg(v_rbLi2LiKernelCompatibility_68_);
lean_dec(v_rbLi2LiKernelCompatibility_68_);
return v_res_69_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim(lean_object* v_motive_70_, uint8_t v_t_71_, lean_object* v_h_72_, lean_object* v_rbLi2LiKernelCompatibility_73_){
_start:
{
lean_inc(v_rbLi2LiKernelCompatibility_73_);
return v_rbLi2LiKernelCompatibility_73_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim___boxed(lean_object* v_motive_74_, lean_object* v_t_75_, lean_object* v_h_76_, lean_object* v_rbLi2LiKernelCompatibility_77_){
_start:
{
uint8_t v_t_boxed_78_; lean_object* v_res_79_; 
v_t_boxed_78_ = lean_unbox(v_t_75_);
v_res_79_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi2LiKernelCompatibility_elim(v_motive_74_, v_t_boxed_78_, v_h_76_, v_rbLi2LiKernelCompatibility_77_);
lean_dec(v_rbLi2LiKernelCompatibility_77_);
return v_res_79_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___redArg(lean_object* v_rbLi3FiniteLiInputCompatibility_80_){
_start:
{
lean_inc(v_rbLi3FiniteLiInputCompatibility_80_);
return v_rbLi3FiniteLiInputCompatibility_80_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___redArg___boxed(lean_object* v_rbLi3FiniteLiInputCompatibility_81_){
_start:
{
lean_object* v_res_82_; 
v_res_82_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___redArg(v_rbLi3FiniteLiInputCompatibility_81_);
lean_dec(v_rbLi3FiniteLiInputCompatibility_81_);
return v_res_82_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim(lean_object* v_motive_83_, uint8_t v_t_84_, lean_object* v_h_85_, lean_object* v_rbLi3FiniteLiInputCompatibility_86_){
_start:
{
lean_inc(v_rbLi3FiniteLiInputCompatibility_86_);
return v_rbLi3FiniteLiInputCompatibility_86_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim___boxed(lean_object* v_motive_87_, lean_object* v_t_88_, lean_object* v_h_89_, lean_object* v_rbLi3FiniteLiInputCompatibility_90_){
_start:
{
uint8_t v_t_boxed_91_; lean_object* v_res_92_; 
v_t_boxed_91_ = lean_unbox(v_t_88_);
v_res_92_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbLi3FiniteLiInputCompatibility_elim(v_motive_87_, v_t_boxed_91_, v_h_89_, v_rbLi3FiniteLiInputCompatibility_90_);
lean_dec(v_rbLi3FiniteLiInputCompatibility_90_);
return v_res_92_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___redArg(lean_object* v_rbAbel1AbelRegularizationObject_93_){
_start:
{
lean_inc(v_rbAbel1AbelRegularizationObject_93_);
return v_rbAbel1AbelRegularizationObject_93_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___redArg___boxed(lean_object* v_rbAbel1AbelRegularizationObject_94_){
_start:
{
lean_object* v_res_95_; 
v_res_95_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___redArg(v_rbAbel1AbelRegularizationObject_94_);
lean_dec(v_rbAbel1AbelRegularizationObject_94_);
return v_res_95_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim(lean_object* v_motive_96_, uint8_t v_t_97_, lean_object* v_h_98_, lean_object* v_rbAbel1AbelRegularizationObject_99_){
_start:
{
lean_inc(v_rbAbel1AbelRegularizationObject_99_);
return v_rbAbel1AbelRegularizationObject_99_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim___boxed(lean_object* v_motive_100_, lean_object* v_t_101_, lean_object* v_h_102_, lean_object* v_rbAbel1AbelRegularizationObject_103_){
_start:
{
uint8_t v_t_boxed_104_; lean_object* v_res_105_; 
v_t_boxed_104_ = lean_unbox(v_t_101_);
v_res_105_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel1AbelRegularizationObject_elim(v_motive_100_, v_t_boxed_104_, v_h_102_, v_rbAbel1AbelRegularizationObject_103_);
lean_dec(v_rbAbel1AbelRegularizationObject_103_);
return v_res_105_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___redArg(lean_object* v_rbAbel2SameScaleBoundaryCoordinate_106_){
_start:
{
lean_inc(v_rbAbel2SameScaleBoundaryCoordinate_106_);
return v_rbAbel2SameScaleBoundaryCoordinate_106_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___redArg___boxed(lean_object* v_rbAbel2SameScaleBoundaryCoordinate_107_){
_start:
{
lean_object* v_res_108_; 
v_res_108_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___redArg(v_rbAbel2SameScaleBoundaryCoordinate_107_);
lean_dec(v_rbAbel2SameScaleBoundaryCoordinate_107_);
return v_res_108_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim(lean_object* v_motive_109_, uint8_t v_t_110_, lean_object* v_h_111_, lean_object* v_rbAbel2SameScaleBoundaryCoordinate_112_){
_start:
{
lean_inc(v_rbAbel2SameScaleBoundaryCoordinate_112_);
return v_rbAbel2SameScaleBoundaryCoordinate_112_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim___boxed(lean_object* v_motive_113_, lean_object* v_t_114_, lean_object* v_h_115_, lean_object* v_rbAbel2SameScaleBoundaryCoordinate_116_){
_start:
{
uint8_t v_t_boxed_117_; lean_object* v_res_118_; 
v_t_boxed_117_ = lean_unbox(v_t_114_);
v_res_118_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbAbel2SameScaleBoundaryCoordinate_elim(v_motive_113_, v_t_boxed_117_, v_h_115_, v_rbAbel2SameScaleBoundaryCoordinate_116_);
lean_dec(v_rbAbel2SameScaleBoundaryCoordinate_116_);
return v_res_118_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___redArg(lean_object* v_rbEF1PrimePacketRealization_119_){
_start:
{
lean_inc(v_rbEF1PrimePacketRealization_119_);
return v_rbEF1PrimePacketRealization_119_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___redArg___boxed(lean_object* v_rbEF1PrimePacketRealization_120_){
_start:
{
lean_object* v_res_121_; 
v_res_121_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___redArg(v_rbEF1PrimePacketRealization_120_);
lean_dec(v_rbEF1PrimePacketRealization_120_);
return v_res_121_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim(lean_object* v_motive_122_, uint8_t v_t_123_, lean_object* v_h_124_, lean_object* v_rbEF1PrimePacketRealization_125_){
_start:
{
lean_inc(v_rbEF1PrimePacketRealization_125_);
return v_rbEF1PrimePacketRealization_125_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim___boxed(lean_object* v_motive_126_, lean_object* v_t_127_, lean_object* v_h_128_, lean_object* v_rbEF1PrimePacketRealization_129_){
_start:
{
uint8_t v_t_boxed_130_; lean_object* v_res_131_; 
v_t_boxed_130_ = lean_unbox(v_t_127_);
v_res_131_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF1PrimePacketRealization_elim(v_motive_126_, v_t_boxed_130_, v_h_128_, v_rbEF1PrimePacketRealization_129_);
lean_dec(v_rbEF1PrimePacketRealization_129_);
return v_res_131_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___redArg(lean_object* v_rbEF2ZeroPacketRealization_132_){
_start:
{
lean_inc(v_rbEF2ZeroPacketRealization_132_);
return v_rbEF2ZeroPacketRealization_132_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___redArg___boxed(lean_object* v_rbEF2ZeroPacketRealization_133_){
_start:
{
lean_object* v_res_134_; 
v_res_134_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___redArg(v_rbEF2ZeroPacketRealization_133_);
lean_dec(v_rbEF2ZeroPacketRealization_133_);
return v_res_134_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim(lean_object* v_motive_135_, uint8_t v_t_136_, lean_object* v_h_137_, lean_object* v_rbEF2ZeroPacketRealization_138_){
_start:
{
lean_inc(v_rbEF2ZeroPacketRealization_138_);
return v_rbEF2ZeroPacketRealization_138_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim___boxed(lean_object* v_motive_139_, lean_object* v_t_140_, lean_object* v_h_141_, lean_object* v_rbEF2ZeroPacketRealization_142_){
_start:
{
uint8_t v_t_boxed_143_; lean_object* v_res_144_; 
v_t_boxed_143_ = lean_unbox(v_t_140_);
v_res_144_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF2ZeroPacketRealization_elim(v_motive_139_, v_t_boxed_143_, v_h_141_, v_rbEF2ZeroPacketRealization_142_);
lean_dec(v_rbEF2ZeroPacketRealization_142_);
return v_res_144_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___redArg(lean_object* v_rbEF3EndpointBoundaryTerm_145_){
_start:
{
lean_inc(v_rbEF3EndpointBoundaryTerm_145_);
return v_rbEF3EndpointBoundaryTerm_145_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___redArg___boxed(lean_object* v_rbEF3EndpointBoundaryTerm_146_){
_start:
{
lean_object* v_res_147_; 
v_res_147_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___redArg(v_rbEF3EndpointBoundaryTerm_146_);
lean_dec(v_rbEF3EndpointBoundaryTerm_146_);
return v_res_147_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim(lean_object* v_motive_148_, uint8_t v_t_149_, lean_object* v_h_150_, lean_object* v_rbEF3EndpointBoundaryTerm_151_){
_start:
{
lean_inc(v_rbEF3EndpointBoundaryTerm_151_);
return v_rbEF3EndpointBoundaryTerm_151_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim___boxed(lean_object* v_motive_152_, lean_object* v_t_153_, lean_object* v_h_154_, lean_object* v_rbEF3EndpointBoundaryTerm_155_){
_start:
{
uint8_t v_t_boxed_156_; lean_object* v_res_157_; 
v_t_boxed_156_ = lean_unbox(v_t_153_);
v_res_157_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbEF3EndpointBoundaryTerm_elim(v_motive_152_, v_t_boxed_156_, v_h_154_, v_rbEF3EndpointBoundaryTerm_155_);
lean_dec(v_rbEF3EndpointBoundaryTerm_155_);
return v_res_157_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___redArg(lean_object* v_rbScale1AdmissibleScaleTopology_158_){
_start:
{
lean_inc(v_rbScale1AdmissibleScaleTopology_158_);
return v_rbScale1AdmissibleScaleTopology_158_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___redArg___boxed(lean_object* v_rbScale1AdmissibleScaleTopology_159_){
_start:
{
lean_object* v_res_160_; 
v_res_160_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___redArg(v_rbScale1AdmissibleScaleTopology_159_);
lean_dec(v_rbScale1AdmissibleScaleTopology_159_);
return v_res_160_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim(lean_object* v_motive_161_, uint8_t v_t_162_, lean_object* v_h_163_, lean_object* v_rbScale1AdmissibleScaleTopology_164_){
_start:
{
lean_inc(v_rbScale1AdmissibleScaleTopology_164_);
return v_rbScale1AdmissibleScaleTopology_164_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim___boxed(lean_object* v_motive_165_, lean_object* v_t_166_, lean_object* v_h_167_, lean_object* v_rbScale1AdmissibleScaleTopology_168_){
_start:
{
uint8_t v_t_boxed_169_; lean_object* v_res_170_; 
v_t_boxed_169_ = lean_unbox(v_t_166_);
v_res_170_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale1AdmissibleScaleTopology_elim(v_motive_165_, v_t_boxed_169_, v_h_167_, v_rbScale1AdmissibleScaleTopology_168_);
lean_dec(v_rbScale1AdmissibleScaleTopology_168_);
return v_res_170_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___redArg(lean_object* v_rbScale2UniformLittleOhTracking_171_){
_start:
{
lean_inc(v_rbScale2UniformLittleOhTracking_171_);
return v_rbScale2UniformLittleOhTracking_171_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___redArg___boxed(lean_object* v_rbScale2UniformLittleOhTracking_172_){
_start:
{
lean_object* v_res_173_; 
v_res_173_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___redArg(v_rbScale2UniformLittleOhTracking_172_);
lean_dec(v_rbScale2UniformLittleOhTracking_172_);
return v_res_173_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim(lean_object* v_motive_174_, uint8_t v_t_175_, lean_object* v_h_176_, lean_object* v_rbScale2UniformLittleOhTracking_177_){
_start:
{
lean_inc(v_rbScale2UniformLittleOhTracking_177_);
return v_rbScale2UniformLittleOhTracking_177_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim___boxed(lean_object* v_motive_178_, lean_object* v_t_179_, lean_object* v_h_180_, lean_object* v_rbScale2UniformLittleOhTracking_181_){
_start:
{
uint8_t v_t_boxed_182_; lean_object* v_res_183_; 
v_t_boxed_182_ = lean_unbox(v_t_179_);
v_res_183_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbScale2UniformLittleOhTracking_elim(v_motive_178_, v_t_boxed_182_, v_h_180_, v_rbScale2UniformLittleOhTracking_181_);
lean_dec(v_rbScale2UniformLittleOhTracking_181_);
return v_res_183_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___redArg(lean_object* v_rbTerm1TerminalPacketClassification_184_){
_start:
{
lean_inc(v_rbTerm1TerminalPacketClassification_184_);
return v_rbTerm1TerminalPacketClassification_184_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___redArg___boxed(lean_object* v_rbTerm1TerminalPacketClassification_185_){
_start:
{
lean_object* v_res_186_; 
v_res_186_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___redArg(v_rbTerm1TerminalPacketClassification_185_);
lean_dec(v_rbTerm1TerminalPacketClassification_185_);
return v_res_186_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim(lean_object* v_motive_187_, uint8_t v_t_188_, lean_object* v_h_189_, lean_object* v_rbTerm1TerminalPacketClassification_190_){
_start:
{
lean_inc(v_rbTerm1TerminalPacketClassification_190_);
return v_rbTerm1TerminalPacketClassification_190_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim___boxed(lean_object* v_motive_191_, lean_object* v_t_192_, lean_object* v_h_193_, lean_object* v_rbTerm1TerminalPacketClassification_194_){
_start:
{
uint8_t v_t_boxed_195_; lean_object* v_res_196_; 
v_t_boxed_195_ = lean_unbox(v_t_192_);
v_res_196_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm1TerminalPacketClassification_elim(v_motive_191_, v_t_boxed_195_, v_h_193_, v_rbTerm1TerminalPacketClassification_194_);
lean_dec(v_rbTerm1TerminalPacketClassification_194_);
return v_res_196_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___redArg(lean_object* v_rbTerm2TerminalNonAbsorption_197_){
_start:
{
lean_inc(v_rbTerm2TerminalNonAbsorption_197_);
return v_rbTerm2TerminalNonAbsorption_197_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___redArg___boxed(lean_object* v_rbTerm2TerminalNonAbsorption_198_){
_start:
{
lean_object* v_res_199_; 
v_res_199_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___redArg(v_rbTerm2TerminalNonAbsorption_198_);
lean_dec(v_rbTerm2TerminalNonAbsorption_198_);
return v_res_199_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim(lean_object* v_motive_200_, uint8_t v_t_201_, lean_object* v_h_202_, lean_object* v_rbTerm2TerminalNonAbsorption_203_){
_start:
{
lean_inc(v_rbTerm2TerminalNonAbsorption_203_);
return v_rbTerm2TerminalNonAbsorption_203_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim___boxed(lean_object* v_motive_204_, lean_object* v_t_205_, lean_object* v_h_206_, lean_object* v_rbTerm2TerminalNonAbsorption_207_){
_start:
{
uint8_t v_t_boxed_208_; lean_object* v_res_209_; 
v_t_boxed_208_ = lean_unbox(v_t_205_);
v_res_209_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbTerm2TerminalNonAbsorption_elim(v_motive_204_, v_t_boxed_208_, v_h_206_, v_rbTerm2TerminalNonAbsorption_207_);
lean_dec(v_rbTerm2TerminalNonAbsorption_207_);
return v_res_209_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___redArg(lean_object* v_rbOQ1ObstructionQuotientLedger_210_){
_start:
{
lean_inc(v_rbOQ1ObstructionQuotientLedger_210_);
return v_rbOQ1ObstructionQuotientLedger_210_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___redArg___boxed(lean_object* v_rbOQ1ObstructionQuotientLedger_211_){
_start:
{
lean_object* v_res_212_; 
v_res_212_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___redArg(v_rbOQ1ObstructionQuotientLedger_211_);
lean_dec(v_rbOQ1ObstructionQuotientLedger_211_);
return v_res_212_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim(lean_object* v_motive_213_, uint8_t v_t_214_, lean_object* v_h_215_, lean_object* v_rbOQ1ObstructionQuotientLedger_216_){
_start:
{
lean_inc(v_rbOQ1ObstructionQuotientLedger_216_);
return v_rbOQ1ObstructionQuotientLedger_216_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim___boxed(lean_object* v_motive_217_, lean_object* v_t_218_, lean_object* v_h_219_, lean_object* v_rbOQ1ObstructionQuotientLedger_220_){
_start:
{
uint8_t v_t_boxed_221_; lean_object* v_res_222_; 
v_t_boxed_221_ = lean_unbox(v_t_218_);
v_res_222_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ1ObstructionQuotientLedger_elim(v_motive_217_, v_t_boxed_221_, v_h_219_, v_rbOQ1ObstructionQuotientLedger_220_);
lean_dec(v_rbOQ1ObstructionQuotientLedger_220_);
return v_res_222_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___redArg(lean_object* v_rbOQ2NonInternalCancellationLedger_223_){
_start:
{
lean_inc(v_rbOQ2NonInternalCancellationLedger_223_);
return v_rbOQ2NonInternalCancellationLedger_223_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___redArg___boxed(lean_object* v_rbOQ2NonInternalCancellationLedger_224_){
_start:
{
lean_object* v_res_225_; 
v_res_225_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___redArg(v_rbOQ2NonInternalCancellationLedger_224_);
lean_dec(v_rbOQ2NonInternalCancellationLedger_224_);
return v_res_225_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim(lean_object* v_motive_226_, uint8_t v_t_227_, lean_object* v_h_228_, lean_object* v_rbOQ2NonInternalCancellationLedger_229_){
_start:
{
lean_inc(v_rbOQ2NonInternalCancellationLedger_229_);
return v_rbOQ2NonInternalCancellationLedger_229_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim___boxed(lean_object* v_motive_230_, lean_object* v_t_231_, lean_object* v_h_232_, lean_object* v_rbOQ2NonInternalCancellationLedger_233_){
_start:
{
uint8_t v_t_boxed_234_; lean_object* v_res_235_; 
v_t_boxed_234_ = lean_unbox(v_t_231_);
v_res_235_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbOQ2NonInternalCancellationLedger_elim(v_motive_230_, v_t_boxed_234_, v_h_232_, v_rbOQ2NonInternalCancellationLedger_233_);
lean_dec(v_rbOQ2NonInternalCancellationLedger_233_);
return v_res_235_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___redArg(lean_object* v_rbConclusion1LiTargetToStandardConclusion_236_){
_start:
{
lean_inc(v_rbConclusion1LiTargetToStandardConclusion_236_);
return v_rbConclusion1LiTargetToStandardConclusion_236_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___redArg___boxed(lean_object* v_rbConclusion1LiTargetToStandardConclusion_237_){
_start:
{
lean_object* v_res_238_; 
v_res_238_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___redArg(v_rbConclusion1LiTargetToStandardConclusion_237_);
lean_dec(v_rbConclusion1LiTargetToStandardConclusion_237_);
return v_res_238_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim(lean_object* v_motive_239_, uint8_t v_t_240_, lean_object* v_h_241_, lean_object* v_rbConclusion1LiTargetToStandardConclusion_242_){
_start:
{
lean_inc(v_rbConclusion1LiTargetToStandardConclusion_242_);
return v_rbConclusion1LiTargetToStandardConclusion_242_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim___boxed(lean_object* v_motive_243_, lean_object* v_t_244_, lean_object* v_h_245_, lean_object* v_rbConclusion1LiTargetToStandardConclusion_246_){
_start:
{
uint8_t v_t_boxed_247_; lean_object* v_res_248_; 
v_t_boxed_247_ = lean_unbox(v_t_244_);
v_res_248_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_rbConclusion1LiTargetToStandardConclusion_elim(v_motive_243_, v_t_boxed_247_, v_h_245_, v_rbConclusion1LiTargetToStandardConclusion_246_);
lean_dec(v_rbConclusion1LiTargetToStandardConclusion_246_);
return v_res_248_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32(void){
_start:
{
lean_object* v___x_297_; lean_object* v___x_298_; 
v___x_297_ = lean_unsigned_to_nat(2u);
v___x_298_ = lean_nat_to_int(v___x_297_);
return v___x_298_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33(void){
_start:
{
lean_object* v___x_299_; lean_object* v___x_300_; 
v___x_299_ = lean_unsigned_to_nat(1u);
v___x_300_ = lean_nat_to_int(v___x_299_);
return v___x_300_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr(uint8_t v_x_301_, lean_object* v_prec_302_){
_start:
{
lean_object* v___y_304_; lean_object* v___y_311_; lean_object* v___y_318_; lean_object* v___y_325_; lean_object* v___y_332_; lean_object* v___y_339_; lean_object* v___y_346_; lean_object* v___y_353_; lean_object* v___y_360_; lean_object* v___y_367_; lean_object* v___y_374_; lean_object* v___y_381_; lean_object* v___y_388_; lean_object* v___y_395_; lean_object* v___y_402_; lean_object* v___y_409_; 
switch(v_x_301_)
{
case 0:
{
lean_object* v___x_415_; uint8_t v___x_416_; 
v___x_415_ = lean_unsigned_to_nat(1024u);
v___x_416_ = lean_nat_dec_le(v___x_415_, v_prec_302_);
if (v___x_416_ == 0)
{
lean_object* v___x_417_; 
v___x_417_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_304_ = v___x_417_;
goto v___jp_303_;
}
else
{
lean_object* v___x_418_; 
v___x_418_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_304_ = v___x_418_;
goto v___jp_303_;
}
}
case 1:
{
lean_object* v___x_419_; uint8_t v___x_420_; 
v___x_419_ = lean_unsigned_to_nat(1024u);
v___x_420_ = lean_nat_dec_le(v___x_419_, v_prec_302_);
if (v___x_420_ == 0)
{
lean_object* v___x_421_; 
v___x_421_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_311_ = v___x_421_;
goto v___jp_310_;
}
else
{
lean_object* v___x_422_; 
v___x_422_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_311_ = v___x_422_;
goto v___jp_310_;
}
}
case 2:
{
lean_object* v___x_423_; uint8_t v___x_424_; 
v___x_423_ = lean_unsigned_to_nat(1024u);
v___x_424_ = lean_nat_dec_le(v___x_423_, v_prec_302_);
if (v___x_424_ == 0)
{
lean_object* v___x_425_; 
v___x_425_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_318_ = v___x_425_;
goto v___jp_317_;
}
else
{
lean_object* v___x_426_; 
v___x_426_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_318_ = v___x_426_;
goto v___jp_317_;
}
}
case 3:
{
lean_object* v___x_427_; uint8_t v___x_428_; 
v___x_427_ = lean_unsigned_to_nat(1024u);
v___x_428_ = lean_nat_dec_le(v___x_427_, v_prec_302_);
if (v___x_428_ == 0)
{
lean_object* v___x_429_; 
v___x_429_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_325_ = v___x_429_;
goto v___jp_324_;
}
else
{
lean_object* v___x_430_; 
v___x_430_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_325_ = v___x_430_;
goto v___jp_324_;
}
}
case 4:
{
lean_object* v___x_431_; uint8_t v___x_432_; 
v___x_431_ = lean_unsigned_to_nat(1024u);
v___x_432_ = lean_nat_dec_le(v___x_431_, v_prec_302_);
if (v___x_432_ == 0)
{
lean_object* v___x_433_; 
v___x_433_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_332_ = v___x_433_;
goto v___jp_331_;
}
else
{
lean_object* v___x_434_; 
v___x_434_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_332_ = v___x_434_;
goto v___jp_331_;
}
}
case 5:
{
lean_object* v___x_435_; uint8_t v___x_436_; 
v___x_435_ = lean_unsigned_to_nat(1024u);
v___x_436_ = lean_nat_dec_le(v___x_435_, v_prec_302_);
if (v___x_436_ == 0)
{
lean_object* v___x_437_; 
v___x_437_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_339_ = v___x_437_;
goto v___jp_338_;
}
else
{
lean_object* v___x_438_; 
v___x_438_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_339_ = v___x_438_;
goto v___jp_338_;
}
}
case 6:
{
lean_object* v___x_439_; uint8_t v___x_440_; 
v___x_439_ = lean_unsigned_to_nat(1024u);
v___x_440_ = lean_nat_dec_le(v___x_439_, v_prec_302_);
if (v___x_440_ == 0)
{
lean_object* v___x_441_; 
v___x_441_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_346_ = v___x_441_;
goto v___jp_345_;
}
else
{
lean_object* v___x_442_; 
v___x_442_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_346_ = v___x_442_;
goto v___jp_345_;
}
}
case 7:
{
lean_object* v___x_443_; uint8_t v___x_444_; 
v___x_443_ = lean_unsigned_to_nat(1024u);
v___x_444_ = lean_nat_dec_le(v___x_443_, v_prec_302_);
if (v___x_444_ == 0)
{
lean_object* v___x_445_; 
v___x_445_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_353_ = v___x_445_;
goto v___jp_352_;
}
else
{
lean_object* v___x_446_; 
v___x_446_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_353_ = v___x_446_;
goto v___jp_352_;
}
}
case 8:
{
lean_object* v___x_447_; uint8_t v___x_448_; 
v___x_447_ = lean_unsigned_to_nat(1024u);
v___x_448_ = lean_nat_dec_le(v___x_447_, v_prec_302_);
if (v___x_448_ == 0)
{
lean_object* v___x_449_; 
v___x_449_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_360_ = v___x_449_;
goto v___jp_359_;
}
else
{
lean_object* v___x_450_; 
v___x_450_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_360_ = v___x_450_;
goto v___jp_359_;
}
}
case 9:
{
lean_object* v___x_451_; uint8_t v___x_452_; 
v___x_451_ = lean_unsigned_to_nat(1024u);
v___x_452_ = lean_nat_dec_le(v___x_451_, v_prec_302_);
if (v___x_452_ == 0)
{
lean_object* v___x_453_; 
v___x_453_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_367_ = v___x_453_;
goto v___jp_366_;
}
else
{
lean_object* v___x_454_; 
v___x_454_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_367_ = v___x_454_;
goto v___jp_366_;
}
}
case 10:
{
lean_object* v___x_455_; uint8_t v___x_456_; 
v___x_455_ = lean_unsigned_to_nat(1024u);
v___x_456_ = lean_nat_dec_le(v___x_455_, v_prec_302_);
if (v___x_456_ == 0)
{
lean_object* v___x_457_; 
v___x_457_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_374_ = v___x_457_;
goto v___jp_373_;
}
else
{
lean_object* v___x_458_; 
v___x_458_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_374_ = v___x_458_;
goto v___jp_373_;
}
}
case 11:
{
lean_object* v___x_459_; uint8_t v___x_460_; 
v___x_459_ = lean_unsigned_to_nat(1024u);
v___x_460_ = lean_nat_dec_le(v___x_459_, v_prec_302_);
if (v___x_460_ == 0)
{
lean_object* v___x_461_; 
v___x_461_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_381_ = v___x_461_;
goto v___jp_380_;
}
else
{
lean_object* v___x_462_; 
v___x_462_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_381_ = v___x_462_;
goto v___jp_380_;
}
}
case 12:
{
lean_object* v___x_463_; uint8_t v___x_464_; 
v___x_463_ = lean_unsigned_to_nat(1024u);
v___x_464_ = lean_nat_dec_le(v___x_463_, v_prec_302_);
if (v___x_464_ == 0)
{
lean_object* v___x_465_; 
v___x_465_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_388_ = v___x_465_;
goto v___jp_387_;
}
else
{
lean_object* v___x_466_; 
v___x_466_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_388_ = v___x_466_;
goto v___jp_387_;
}
}
case 13:
{
lean_object* v___x_467_; uint8_t v___x_468_; 
v___x_467_ = lean_unsigned_to_nat(1024u);
v___x_468_ = lean_nat_dec_le(v___x_467_, v_prec_302_);
if (v___x_468_ == 0)
{
lean_object* v___x_469_; 
v___x_469_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_395_ = v___x_469_;
goto v___jp_394_;
}
else
{
lean_object* v___x_470_; 
v___x_470_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_395_ = v___x_470_;
goto v___jp_394_;
}
}
case 14:
{
lean_object* v___x_471_; uint8_t v___x_472_; 
v___x_471_ = lean_unsigned_to_nat(1024u);
v___x_472_ = lean_nat_dec_le(v___x_471_, v_prec_302_);
if (v___x_472_ == 0)
{
lean_object* v___x_473_; 
v___x_473_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_402_ = v___x_473_;
goto v___jp_401_;
}
else
{
lean_object* v___x_474_; 
v___x_474_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_402_ = v___x_474_;
goto v___jp_401_;
}
}
default: 
{
lean_object* v___x_475_; uint8_t v___x_476_; 
v___x_475_ = lean_unsigned_to_nat(1024u);
v___x_476_ = lean_nat_dec_le(v___x_475_, v_prec_302_);
if (v___x_476_ == 0)
{
lean_object* v___x_477_; 
v___x_477_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__32);
v___y_409_ = v___x_477_;
goto v___jp_408_;
}
else
{
lean_object* v___x_478_; 
v___x_478_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33, &lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__33);
v___y_409_ = v___x_478_;
goto v___jp_408_;
}
}
}
v___jp_303_:
{
lean_object* v___x_305_; lean_object* v___x_306_; uint8_t v___x_307_; lean_object* v___x_308_; lean_object* v___x_309_; 
v___x_305_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__1));
lean_inc(v___y_304_);
v___x_306_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_306_, 0, v___y_304_);
lean_ctor_set(v___x_306_, 1, v___x_305_);
v___x_307_ = 0;
v___x_308_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_308_, 0, v___x_306_);
lean_ctor_set_uint8(v___x_308_, sizeof(void*)*1, v___x_307_);
v___x_309_ = l_Repr_addAppParen(v___x_308_, v_prec_302_);
return v___x_309_;
}
v___jp_310_:
{
lean_object* v___x_312_; lean_object* v___x_313_; uint8_t v___x_314_; lean_object* v___x_315_; lean_object* v___x_316_; 
v___x_312_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__3));
lean_inc(v___y_311_);
v___x_313_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_313_, 0, v___y_311_);
lean_ctor_set(v___x_313_, 1, v___x_312_);
v___x_314_ = 0;
v___x_315_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_315_, 0, v___x_313_);
lean_ctor_set_uint8(v___x_315_, sizeof(void*)*1, v___x_314_);
v___x_316_ = l_Repr_addAppParen(v___x_315_, v_prec_302_);
return v___x_316_;
}
v___jp_317_:
{
lean_object* v___x_319_; lean_object* v___x_320_; uint8_t v___x_321_; lean_object* v___x_322_; lean_object* v___x_323_; 
v___x_319_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__5));
lean_inc(v___y_318_);
v___x_320_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_320_, 0, v___y_318_);
lean_ctor_set(v___x_320_, 1, v___x_319_);
v___x_321_ = 0;
v___x_322_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_322_, 0, v___x_320_);
lean_ctor_set_uint8(v___x_322_, sizeof(void*)*1, v___x_321_);
v___x_323_ = l_Repr_addAppParen(v___x_322_, v_prec_302_);
return v___x_323_;
}
v___jp_324_:
{
lean_object* v___x_326_; lean_object* v___x_327_; uint8_t v___x_328_; lean_object* v___x_329_; lean_object* v___x_330_; 
v___x_326_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__7));
lean_inc(v___y_325_);
v___x_327_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_327_, 0, v___y_325_);
lean_ctor_set(v___x_327_, 1, v___x_326_);
v___x_328_ = 0;
v___x_329_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_329_, 0, v___x_327_);
lean_ctor_set_uint8(v___x_329_, sizeof(void*)*1, v___x_328_);
v___x_330_ = l_Repr_addAppParen(v___x_329_, v_prec_302_);
return v___x_330_;
}
v___jp_331_:
{
lean_object* v___x_333_; lean_object* v___x_334_; uint8_t v___x_335_; lean_object* v___x_336_; lean_object* v___x_337_; 
v___x_333_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__9));
lean_inc(v___y_332_);
v___x_334_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_334_, 0, v___y_332_);
lean_ctor_set(v___x_334_, 1, v___x_333_);
v___x_335_ = 0;
v___x_336_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_336_, 0, v___x_334_);
lean_ctor_set_uint8(v___x_336_, sizeof(void*)*1, v___x_335_);
v___x_337_ = l_Repr_addAppParen(v___x_336_, v_prec_302_);
return v___x_337_;
}
v___jp_338_:
{
lean_object* v___x_340_; lean_object* v___x_341_; uint8_t v___x_342_; lean_object* v___x_343_; lean_object* v___x_344_; 
v___x_340_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__11));
lean_inc(v___y_339_);
v___x_341_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_341_, 0, v___y_339_);
lean_ctor_set(v___x_341_, 1, v___x_340_);
v___x_342_ = 0;
v___x_343_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_343_, 0, v___x_341_);
lean_ctor_set_uint8(v___x_343_, sizeof(void*)*1, v___x_342_);
v___x_344_ = l_Repr_addAppParen(v___x_343_, v_prec_302_);
return v___x_344_;
}
v___jp_345_:
{
lean_object* v___x_347_; lean_object* v___x_348_; uint8_t v___x_349_; lean_object* v___x_350_; lean_object* v___x_351_; 
v___x_347_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__13));
lean_inc(v___y_346_);
v___x_348_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_348_, 0, v___y_346_);
lean_ctor_set(v___x_348_, 1, v___x_347_);
v___x_349_ = 0;
v___x_350_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_350_, 0, v___x_348_);
lean_ctor_set_uint8(v___x_350_, sizeof(void*)*1, v___x_349_);
v___x_351_ = l_Repr_addAppParen(v___x_350_, v_prec_302_);
return v___x_351_;
}
v___jp_352_:
{
lean_object* v___x_354_; lean_object* v___x_355_; uint8_t v___x_356_; lean_object* v___x_357_; lean_object* v___x_358_; 
v___x_354_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__15));
lean_inc(v___y_353_);
v___x_355_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_355_, 0, v___y_353_);
lean_ctor_set(v___x_355_, 1, v___x_354_);
v___x_356_ = 0;
v___x_357_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_357_, 0, v___x_355_);
lean_ctor_set_uint8(v___x_357_, sizeof(void*)*1, v___x_356_);
v___x_358_ = l_Repr_addAppParen(v___x_357_, v_prec_302_);
return v___x_358_;
}
v___jp_359_:
{
lean_object* v___x_361_; lean_object* v___x_362_; uint8_t v___x_363_; lean_object* v___x_364_; lean_object* v___x_365_; 
v___x_361_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__17));
lean_inc(v___y_360_);
v___x_362_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_362_, 0, v___y_360_);
lean_ctor_set(v___x_362_, 1, v___x_361_);
v___x_363_ = 0;
v___x_364_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_364_, 0, v___x_362_);
lean_ctor_set_uint8(v___x_364_, sizeof(void*)*1, v___x_363_);
v___x_365_ = l_Repr_addAppParen(v___x_364_, v_prec_302_);
return v___x_365_;
}
v___jp_366_:
{
lean_object* v___x_368_; lean_object* v___x_369_; uint8_t v___x_370_; lean_object* v___x_371_; lean_object* v___x_372_; 
v___x_368_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__19));
lean_inc(v___y_367_);
v___x_369_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_369_, 0, v___y_367_);
lean_ctor_set(v___x_369_, 1, v___x_368_);
v___x_370_ = 0;
v___x_371_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_371_, 0, v___x_369_);
lean_ctor_set_uint8(v___x_371_, sizeof(void*)*1, v___x_370_);
v___x_372_ = l_Repr_addAppParen(v___x_371_, v_prec_302_);
return v___x_372_;
}
v___jp_373_:
{
lean_object* v___x_375_; lean_object* v___x_376_; uint8_t v___x_377_; lean_object* v___x_378_; lean_object* v___x_379_; 
v___x_375_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__21));
lean_inc(v___y_374_);
v___x_376_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_376_, 0, v___y_374_);
lean_ctor_set(v___x_376_, 1, v___x_375_);
v___x_377_ = 0;
v___x_378_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_378_, 0, v___x_376_);
lean_ctor_set_uint8(v___x_378_, sizeof(void*)*1, v___x_377_);
v___x_379_ = l_Repr_addAppParen(v___x_378_, v_prec_302_);
return v___x_379_;
}
v___jp_380_:
{
lean_object* v___x_382_; lean_object* v___x_383_; uint8_t v___x_384_; lean_object* v___x_385_; lean_object* v___x_386_; 
v___x_382_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__23));
lean_inc(v___y_381_);
v___x_383_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_383_, 0, v___y_381_);
lean_ctor_set(v___x_383_, 1, v___x_382_);
v___x_384_ = 0;
v___x_385_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_385_, 0, v___x_383_);
lean_ctor_set_uint8(v___x_385_, sizeof(void*)*1, v___x_384_);
v___x_386_ = l_Repr_addAppParen(v___x_385_, v_prec_302_);
return v___x_386_;
}
v___jp_387_:
{
lean_object* v___x_389_; lean_object* v___x_390_; uint8_t v___x_391_; lean_object* v___x_392_; lean_object* v___x_393_; 
v___x_389_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__25));
lean_inc(v___y_388_);
v___x_390_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_390_, 0, v___y_388_);
lean_ctor_set(v___x_390_, 1, v___x_389_);
v___x_391_ = 0;
v___x_392_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_392_, 0, v___x_390_);
lean_ctor_set_uint8(v___x_392_, sizeof(void*)*1, v___x_391_);
v___x_393_ = l_Repr_addAppParen(v___x_392_, v_prec_302_);
return v___x_393_;
}
v___jp_394_:
{
lean_object* v___x_396_; lean_object* v___x_397_; uint8_t v___x_398_; lean_object* v___x_399_; lean_object* v___x_400_; 
v___x_396_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__27));
lean_inc(v___y_395_);
v___x_397_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_397_, 0, v___y_395_);
lean_ctor_set(v___x_397_, 1, v___x_396_);
v___x_398_ = 0;
v___x_399_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_399_, 0, v___x_397_);
lean_ctor_set_uint8(v___x_399_, sizeof(void*)*1, v___x_398_);
v___x_400_ = l_Repr_addAppParen(v___x_399_, v_prec_302_);
return v___x_400_;
}
v___jp_401_:
{
lean_object* v___x_403_; lean_object* v___x_404_; uint8_t v___x_405_; lean_object* v___x_406_; lean_object* v___x_407_; 
v___x_403_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__29));
lean_inc(v___y_402_);
v___x_404_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_404_, 0, v___y_402_);
lean_ctor_set(v___x_404_, 1, v___x_403_);
v___x_405_ = 0;
v___x_406_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_406_, 0, v___x_404_);
lean_ctor_set_uint8(v___x_406_, sizeof(void*)*1, v___x_405_);
v___x_407_ = l_Repr_addAppParen(v___x_406_, v_prec_302_);
return v___x_407_;
}
v___jp_408_:
{
lean_object* v___x_410_; lean_object* v___x_411_; uint8_t v___x_412_; lean_object* v___x_413_; lean_object* v___x_414_; 
v___x_410_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___closed__31));
lean_inc(v___y_409_);
v___x_411_ = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(v___x_411_, 0, v___y_409_);
lean_ctor_set(v___x_411_, 1, v___x_410_);
v___x_412_ = 0;
v___x_413_ = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(v___x_413_, 0, v___x_411_);
lean_ctor_set_uint8(v___x_413_, sizeof(void*)*1, v___x_412_);
v___x_414_ = l_Repr_addAppParen(v___x_413_, v_prec_302_);
return v___x_414_;
}
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr___boxed(lean_object* v_x_479_, lean_object* v_prec_480_){
_start:
{
uint8_t v_x_905__boxed_481_; lean_object* v_res_482_; 
v_x_905__boxed_481_ = lean_unbox(v_x_479_);
v_res_482_ = lp_R1961DLeanPacket_R1955DLeanScaffold_instReprRefinedBridgeObligationLabel_repr(v_x_905__boxed_481_, v_prec_480_);
lean_dec(v_prec_480_);
return v_res_482_;
}
}
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ofNat(lean_object* v_n_485_){
_start:
{
lean_object* v___x_486_; uint8_t v___x_487_; 
v___x_486_ = lean_unsigned_to_nat(7u);
v___x_487_ = lean_nat_dec_le(v_n_485_, v___x_486_);
if (v___x_487_ == 0)
{
lean_object* v___x_488_; uint8_t v___x_489_; 
v___x_488_ = lean_unsigned_to_nat(11u);
v___x_489_ = lean_nat_dec_le(v_n_485_, v___x_488_);
if (v___x_489_ == 0)
{
lean_object* v___x_490_; uint8_t v___x_491_; 
v___x_490_ = lean_unsigned_to_nat(13u);
v___x_491_ = lean_nat_dec_le(v_n_485_, v___x_490_);
if (v___x_491_ == 0)
{
lean_object* v___x_492_; uint8_t v___x_493_; 
v___x_492_ = lean_unsigned_to_nat(14u);
v___x_493_ = lean_nat_dec_le(v_n_485_, v___x_492_);
if (v___x_493_ == 0)
{
uint8_t v___x_494_; 
v___x_494_ = 15;
return v___x_494_;
}
else
{
uint8_t v___x_495_; 
v___x_495_ = 14;
return v___x_495_;
}
}
else
{
lean_object* v___x_496_; uint8_t v___x_497_; 
v___x_496_ = lean_unsigned_to_nat(12u);
v___x_497_ = lean_nat_dec_le(v_n_485_, v___x_496_);
if (v___x_497_ == 0)
{
uint8_t v___x_498_; 
v___x_498_ = 13;
return v___x_498_;
}
else
{
uint8_t v___x_499_; 
v___x_499_ = 12;
return v___x_499_;
}
}
}
else
{
lean_object* v___x_500_; uint8_t v___x_501_; 
v___x_500_ = lean_unsigned_to_nat(9u);
v___x_501_ = lean_nat_dec_le(v_n_485_, v___x_500_);
if (v___x_501_ == 0)
{
lean_object* v___x_502_; uint8_t v___x_503_; 
v___x_502_ = lean_unsigned_to_nat(10u);
v___x_503_ = lean_nat_dec_le(v_n_485_, v___x_502_);
if (v___x_503_ == 0)
{
uint8_t v___x_504_; 
v___x_504_ = 11;
return v___x_504_;
}
else
{
uint8_t v___x_505_; 
v___x_505_ = 10;
return v___x_505_;
}
}
else
{
lean_object* v___x_506_; uint8_t v___x_507_; 
v___x_506_ = lean_unsigned_to_nat(8u);
v___x_507_ = lean_nat_dec_le(v_n_485_, v___x_506_);
if (v___x_507_ == 0)
{
uint8_t v___x_508_; 
v___x_508_ = 9;
return v___x_508_;
}
else
{
uint8_t v___x_509_; 
v___x_509_ = 8;
return v___x_509_;
}
}
}
}
else
{
lean_object* v___x_510_; uint8_t v___x_511_; 
v___x_510_ = lean_unsigned_to_nat(3u);
v___x_511_ = lean_nat_dec_le(v_n_485_, v___x_510_);
if (v___x_511_ == 0)
{
lean_object* v___x_512_; uint8_t v___x_513_; 
v___x_512_ = lean_unsigned_to_nat(5u);
v___x_513_ = lean_nat_dec_le(v_n_485_, v___x_512_);
if (v___x_513_ == 0)
{
lean_object* v___x_514_; uint8_t v___x_515_; 
v___x_514_ = lean_unsigned_to_nat(6u);
v___x_515_ = lean_nat_dec_le(v_n_485_, v___x_514_);
if (v___x_515_ == 0)
{
uint8_t v___x_516_; 
v___x_516_ = 7;
return v___x_516_;
}
else
{
uint8_t v___x_517_; 
v___x_517_ = 6;
return v___x_517_;
}
}
else
{
lean_object* v___x_518_; uint8_t v___x_519_; 
v___x_518_ = lean_unsigned_to_nat(4u);
v___x_519_ = lean_nat_dec_le(v_n_485_, v___x_518_);
if (v___x_519_ == 0)
{
uint8_t v___x_520_; 
v___x_520_ = 5;
return v___x_520_;
}
else
{
uint8_t v___x_521_; 
v___x_521_ = 4;
return v___x_521_;
}
}
}
else
{
lean_object* v___x_522_; uint8_t v___x_523_; 
v___x_522_ = lean_unsigned_to_nat(1u);
v___x_523_ = lean_nat_dec_le(v_n_485_, v___x_522_);
if (v___x_523_ == 0)
{
lean_object* v___x_524_; uint8_t v___x_525_; 
v___x_524_ = lean_unsigned_to_nat(2u);
v___x_525_ = lean_nat_dec_le(v_n_485_, v___x_524_);
if (v___x_525_ == 0)
{
uint8_t v___x_526_; 
v___x_526_ = 3;
return v___x_526_;
}
else
{
uint8_t v___x_527_; 
v___x_527_ = 2;
return v___x_527_;
}
}
else
{
lean_object* v___x_528_; uint8_t v___x_529_; 
v___x_528_ = lean_unsigned_to_nat(0u);
v___x_529_ = lean_nat_dec_le(v_n_485_, v___x_528_);
if (v___x_529_ == 0)
{
uint8_t v___x_530_; 
v___x_530_ = 1;
return v___x_530_;
}
else
{
uint8_t v___x_531_; 
v___x_531_ = 0;
return v___x_531_;
}
}
}
}
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ofNat___boxed(lean_object* v_n_532_){
_start:
{
uint8_t v_res_533_; lean_object* v_r_534_; 
v_res_533_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ofNat(v_n_532_);
lean_dec(v_n_532_);
v_r_534_ = lean_box(v_res_533_);
return v_r_534_;
}
}
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1955DLeanScaffold_instDecidableEqRefinedBridgeObligationLabel(uint8_t v_x_535_, uint8_t v_y_536_){
_start:
{
lean_object* v___x_537_; lean_object* v___x_538_; uint8_t v___x_539_; 
v___x_537_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx(v_x_535_);
v___x_538_ = lp_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligationLabel_ctorIdx(v_y_536_);
v___x_539_ = lean_nat_dec_eq(v___x_537_, v___x_538_);
lean_dec(v___x_538_);
lean_dec(v___x_537_);
return v___x_539_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1955DLeanScaffold_instDecidableEqRefinedBridgeObligationLabel___boxed(lean_object* v_x_540_, lean_object* v_y_541_){
_start:
{
uint8_t v_x_13__boxed_542_; uint8_t v_y_14__boxed_543_; uint8_t v_res_544_; lean_object* v_r_545_; 
v_x_13__boxed_542_ = lean_unbox(v_x_540_);
v_y_14__boxed_543_ = lean_unbox(v_y_541_);
v_res_544_ = lp_R1961DLeanPacket_R1955DLeanScaffold_instDecidableEqRefinedBridgeObligationLabel(v_x_13__boxed_542_, v_y_14__boxed_543_);
v_r_545_ = lean_box(v_res_544_);
return v_r_545_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_List_mapTR_loop___at___00R1955DLeanScaffold_refinedBridgeObligationLabels_spec__0(lean_object* v_a_738_, lean_object* v_a_739_){
_start:
{
if (lean_obj_tag(v_a_738_) == 0)
{
lean_object* v___x_740_; 
v___x_740_ = l_List_reverse___redArg(v_a_739_);
return v___x_740_;
}
else
{
lean_object* v_head_741_; lean_object* v_tail_742_; lean_object* v___x_744_; uint8_t v_isShared_745_; uint8_t v_isSharedCheck_752_; 
v_head_741_ = lean_ctor_get(v_a_738_, 0);
v_tail_742_ = lean_ctor_get(v_a_738_, 1);
v_isSharedCheck_752_ = !lean_is_exclusive(v_a_738_);
if (v_isSharedCheck_752_ == 0)
{
v___x_744_ = v_a_738_;
v_isShared_745_ = v_isSharedCheck_752_;
goto v_resetjp_743_;
}
else
{
lean_inc(v_tail_742_);
lean_inc(v_head_741_);
lean_dec(v_a_738_);
v___x_744_ = lean_box(0);
v_isShared_745_ = v_isSharedCheck_752_;
goto v_resetjp_743_;
}
v_resetjp_743_:
{
uint8_t v_label_746_; lean_object* v___x_747_; lean_object* v___x_749_; 
v_label_746_ = lean_ctor_get_uint8(v_head_741_, sizeof(void*)*3);
lean_dec(v_head_741_);
v___x_747_ = lean_box(v_label_746_);
if (v_isShared_745_ == 0)
{
lean_ctor_set(v___x_744_, 1, v_a_739_);
lean_ctor_set(v___x_744_, 0, v___x_747_);
v___x_749_ = v___x_744_;
goto v_reusejp_748_;
}
else
{
lean_object* v_reuseFailAlloc_751_; 
v_reuseFailAlloc_751_ = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(v_reuseFailAlloc_751_, 0, v___x_747_);
lean_ctor_set(v_reuseFailAlloc_751_, 1, v_a_739_);
v___x_749_ = v_reuseFailAlloc_751_;
goto v_reusejp_748_;
}
v_reusejp_748_:
{
v_a_738_ = v_tail_742_;
v_a_739_ = v___x_749_;
goto _start;
}
}
}
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels___closed__0(void){
_start:
{
lean_object* v___x_753_; lean_object* v___x_754_; lean_object* v___x_755_; 
v___x_753_ = lean_box(0);
v___x_754_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings));
v___x_755_ = lp_R1961DLeanPacket_List_mapTR_loop___at___00R1955DLeanScaffold_refinedBridgeObligationLabels_spec__0(v___x_754_, v___x_753_);
return v___x_755_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels(void){
_start:
{
lean_object* v___x_756_; 
v___x_756_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels___closed__0, &lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels___closed__0_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels___closed__0);
return v___x_756_;
}
}
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_List_mapTR_loop___at___00R1955DLeanScaffold_refinedBridgeProjectionLabels_spec__0(lean_object* v_a_757_, lean_object* v_a_758_){
_start:
{
if (lean_obj_tag(v_a_757_) == 0)
{
lean_object* v___x_759_; 
v___x_759_ = l_List_reverse___redArg(v_a_758_);
return v___x_759_;
}
else
{
lean_object* v_head_760_; lean_object* v_tail_761_; lean_object* v___x_763_; uint8_t v_isShared_764_; uint8_t v_isSharedCheck_771_; 
v_head_760_ = lean_ctor_get(v_a_757_, 0);
v_tail_761_ = lean_ctor_get(v_a_757_, 1);
v_isSharedCheck_771_ = !lean_is_exclusive(v_a_757_);
if (v_isSharedCheck_771_ == 0)
{
v___x_763_ = v_a_757_;
v_isShared_764_ = v_isSharedCheck_771_;
goto v_resetjp_762_;
}
else
{
lean_inc(v_tail_761_);
lean_inc(v_head_760_);
lean_dec(v_a_757_);
v___x_763_ = lean_box(0);
v_isShared_764_ = v_isSharedCheck_771_;
goto v_resetjp_762_;
}
v_resetjp_762_:
{
uint8_t v_r1954BridgeLabel_765_; lean_object* v___x_766_; lean_object* v___x_768_; 
v_r1954BridgeLabel_765_ = lean_ctor_get_uint8(v_head_760_, sizeof(void*)*3 + 2);
lean_dec(v_head_760_);
v___x_766_ = lean_box(v_r1954BridgeLabel_765_);
if (v_isShared_764_ == 0)
{
lean_ctor_set(v___x_763_, 1, v_a_758_);
lean_ctor_set(v___x_763_, 0, v___x_766_);
v___x_768_ = v___x_763_;
goto v_reusejp_767_;
}
else
{
lean_object* v_reuseFailAlloc_770_; 
v_reuseFailAlloc_770_ = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(v_reuseFailAlloc_770_, 0, v___x_766_);
lean_ctor_set(v_reuseFailAlloc_770_, 1, v_a_758_);
v___x_768_ = v_reuseFailAlloc_770_;
goto v_reusejp_767_;
}
v_reusejp_767_:
{
v_a_757_ = v_tail_761_;
v_a_758_ = v___x_768_;
goto _start;
}
}
}
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels___closed__0(void){
_start:
{
lean_object* v___x_772_; lean_object* v___x_773_; lean_object* v___x_774_; 
v___x_772_ = lean_box(0);
v___x_773_ = ((lean_object*)(lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationBindings));
v___x_774_ = lp_R1961DLeanPacket_List_mapTR_loop___at___00R1955DLeanScaffold_refinedBridgeProjectionLabels_spec__0(v___x_773_, v___x_772_);
return v___x_774_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels(void){
_start:
{
lean_object* v___x_775_; 
v___x_775_ = lean_obj_once(&lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels___closed__0, &lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels___closed__0_once, _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels___closed__0);
return v___x_775_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1955DLeanScaffold_ManuscriptScaffolds(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeObligations(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1955DLeanScaffold_RefinedBridgeObligations(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1955DLeanScaffold_ManuscriptScaffolds(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeObligations(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels = _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels();
lean_mark_persistent(lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeObligationLabels);
lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels = _init_lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels();
lean_mark_persistent(lp_R1961DLeanPacket_R1955DLeanScaffold_refinedBridgeProjectionLabels);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
