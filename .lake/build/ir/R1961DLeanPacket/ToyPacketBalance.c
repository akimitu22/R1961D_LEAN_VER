// Lean compiler output
// Module: R1961DLeanPacket.ToyPacketBalance
// Imports: public import Init public meta import Init public import R1961DLeanPacket.PacketBalanceCertificates public import R1960DLeanLimit.ToyLimitPassage
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
extern lean_object* lp_R1961DLeanPacket_R1960DLeanLimit_toyNormalizedBoundaryLimitSystem;
extern lean_object* lp_R1961DLeanPacket_R1960DLeanLimit_toyBoundaryLimitSystem;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1961DLeanPacket_toyExplicitPacketBalanceSystem;
static lean_once_cell_t lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance___closed__0;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1961DLeanPacket_toyFiniteToPacketBalanceWitness;
static lean_once_cell_t lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance___closed__0;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance;
static lean_object* _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyExplicitPacketBalanceSystem(void){
_start:
{
lean_object* v___x_1_; 
v___x_1_ = lean_box(0);
return v___x_1_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance___closed__0(void){
_start:
{
lean_object* v___x_2_; lean_object* v___x_3_; lean_object* v___x_4_; 
v___x_2_ = lean_box(0);
v___x_3_ = lp_R1961DLeanPacket_R1960DLeanLimit_toyBoundaryLimitSystem;
v___x_4_ = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(v___x_4_, 0, v___x_3_);
lean_ctor_set(v___x_4_, 1, v___x_2_);
return v___x_4_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance(void){
_start:
{
lean_object* v___x_5_; 
v___x_5_ = lean_obj_once(&lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance___closed__0, &lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance___closed__0_once, _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance___closed__0);
return v___x_5_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyFiniteToPacketBalanceWitness(void){
_start:
{
lean_object* v___x_6_; 
v___x_6_ = lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance;
return v___x_6_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance___closed__0(void){
_start:
{
lean_object* v___x_7_; lean_object* v___x_8_; lean_object* v___x_9_; 
v___x_7_ = lean_box(0);
v___x_8_ = lp_R1961DLeanPacket_R1960DLeanLimit_toyNormalizedBoundaryLimitSystem;
v___x_9_ = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(v___x_9_, 0, v___x_8_);
lean_ctor_set(v___x_9_, 1, v___x_7_);
return v___x_9_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance(void){
_start:
{
lean_object* v___x_10_; 
v___x_10_ = lean_obj_once(&lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance___closed__0, &lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance___closed__0_once, _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance___closed__0);
return v___x_10_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1961DLeanPacket_PacketBalanceCertificates(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1960DLeanLimit_ToyLimitPassage(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1961DLeanPacket_ToyPacketBalance(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1961DLeanPacket_PacketBalanceCertificates(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1960DLeanLimit_ToyLimitPassage(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1961DLeanPacket_toyExplicitPacketBalanceSystem = _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyExplicitPacketBalanceSystem();
lean_mark_persistent(lp_R1961DLeanPacket_R1961DLeanPacket_toyExplicitPacketBalanceSystem);
lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance = _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance();
lean_mark_persistent(lp_R1961DLeanPacket_R1961DLeanPacket_toyBoundaryPacketBalance);
lp_R1961DLeanPacket_R1961DLeanPacket_toyFiniteToPacketBalanceWitness = _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyFiniteToPacketBalanceWitness();
lean_mark_persistent(lp_R1961DLeanPacket_R1961DLeanPacket_toyFiniteToPacketBalanceWitness);
lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance = _init_lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance();
lean_mark_persistent(lp_R1961DLeanPacket_R1961DLeanPacket_toyNormalizedBoundaryPacketBalance);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
