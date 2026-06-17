// Lean compiler output
// Module: R1954DLeanBridge.ToyBridge
// Imports: public import Init public meta import Init public import R1954DLeanBridge.BridgeTheorems
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
extern lean_object* lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_toyStandardRHBridgeContext;
static lean_once_cell_t lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext___closed__0;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext;
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_toyStandardRHBridgeContext(void){
_start:
{
lean_object* v___x_1_; 
v___x_1_ = lean_box(0);
return v___x_1_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext___closed__0(void){
_start:
{
uint8_t v___x_2_; lean_object* v___x_3_; lean_object* v___x_4_; lean_object* v___x_5_; lean_object* v___x_6_; 
v___x_2_ = 0;
v___x_3_ = lean_unsigned_to_nat(0u);
v___x_4_ = lean_box(0);
v___x_5_ = lp_R1961DLeanPacket_R1949DLean_toyAbelBookkeeping;
v___x_6_ = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(v___x_6_, 0, v___x_5_);
lean_ctor_set(v___x_6_, 1, v___x_4_);
lean_ctor_set(v___x_6_, 2, v___x_3_);
lean_ctor_set_uint8(v___x_6_, sizeof(void*)*3, v___x_2_);
return v___x_6_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext(void){
_start:
{
lean_object* v___x_7_; 
v___x_7_ = lean_obj_once(&lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext___closed__0, &lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext___closed__0_once, _init_lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext___closed__0);
return v___x_7_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeTheorems(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_ToyBridge(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeTheorems(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1954DLeanBridge_toyStandardRHBridgeContext = _init_lp_R1961DLeanPacket_R1954DLeanBridge_toyStandardRHBridgeContext();
lean_mark_persistent(lp_R1961DLeanPacket_R1954DLeanBridge_toyStandardRHBridgeContext);
lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext = _init_lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext();
lean_mark_persistent(lp_R1961DLeanPacket_R1954DLeanBridge_toyManuscriptBridgeContext);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
