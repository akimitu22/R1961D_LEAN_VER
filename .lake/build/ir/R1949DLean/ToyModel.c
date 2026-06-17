// Lean compiler output
// Module: R1949DLean.ToyModel
// Imports: public import Init public meta import Init public import R1949DLean.ProofObligationMap
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
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1949DLean_toyGenerator;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1949DLean_toyOperation;
LEAN_EXPORT uint8_t lp_R1961DLeanPacket_R1949DLean_toyTerminal;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1949DLean_toyLayerCtx;
static const lean_ctor_object lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*3 + 0, .m_other = 3, .m_tag = 0}, .m_objs = {((lean_object*)(((size_t)(0) << 1) | 1)),((lean_object*)(((size_t)(0) << 1) | 1)),((lean_object*)(((size_t)(0) << 1) | 1))}};
static const lean_object* lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping___closed__0_value;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1949DLean_toyTheory;
static lean_object* _init_lp_R1961DLeanPacket_R1949DLean_toyGenerator(void){
_start:
{
lean_object* v___x_1_; 
v___x_1_ = lean_unsigned_to_nat(0u);
return v___x_1_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1949DLean_toyOperation(void){
_start:
{
lean_object* v___x_2_; 
v___x_2_ = lean_unsigned_to_nat(0u);
return v___x_2_;
}
}
static uint8_t _init_lp_R1961DLeanPacket_R1949DLean_toyTerminal(void){
_start:
{
uint8_t v___x_3_; 
v___x_3_ = 0;
return v___x_3_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1949DLean_toyLayerCtx(void){
_start:
{
lean_object* v___x_4_; 
v___x_4_ = lean_box(0);
return v___x_4_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1949DLean_toyTheory(void){
_start:
{
lean_object* v___x_8_; 
v___x_8_ = lean_box(0);
return v___x_8_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_ProofObligationMap(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1949DLean_ToyModel(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_ProofObligationMap(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1949DLean_toyGenerator = _init_lp_R1961DLeanPacket_R1949DLean_toyGenerator();
lean_mark_persistent(lp_R1961DLeanPacket_R1949DLean_toyGenerator);
lp_R1961DLeanPacket_R1949DLean_toyOperation = _init_lp_R1961DLeanPacket_R1949DLean_toyOperation();
lean_mark_persistent(lp_R1961DLeanPacket_R1949DLean_toyOperation);
lp_R1961DLeanPacket_R1949DLean_toyTerminal = _init_lp_R1961DLeanPacket_R1949DLean_toyTerminal();
lp_R1961DLeanPacket_R1949DLean_toyLayerCtx = _init_lp_R1961DLeanPacket_R1949DLean_toyLayerCtx();
lean_mark_persistent(lp_R1961DLeanPacket_R1949DLean_toyLayerCtx);
lp_R1961DLeanPacket_R1949DLean_toyTheory = _init_lp_R1961DLeanPacket_R1949DLean_toyTheory();
lean_mark_persistent(lp_R1961DLeanPacket_R1949DLean_toyTheory);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
