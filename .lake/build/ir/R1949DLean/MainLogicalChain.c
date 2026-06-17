// Lean compiler output
// Module: R1949DLean.MainLogicalChain
// Imports: public import Init public meta import Init public import R1949DLean.FiniteToAbelChain public import R1949DLean.StructuralSupportChain public import R1949DLean.TerminalRigidityChain public import R1949DLean.DependencyCertificates
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
extern lean_object* lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1949DLean_mainDependencyCertificate;
static lean_object* _init_lp_R1961DLeanPacket_R1949DLean_mainDependencyCertificate(void){
_start:
{
lean_object* v___x_1_; 
v___x_1_ = lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate;
return v___x_1_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_FiniteToAbelChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_StructuralSupportChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_TerminalRigidityChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_DependencyCertificates(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1949DLean_MainLogicalChain(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_FiniteToAbelChain(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_StructuralSupportChain(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_TerminalRigidityChain(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_DependencyCertificates(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1949DLean_mainDependencyCertificate = _init_lp_R1961DLeanPacket_R1949DLean_mainDependencyCertificate();
lean_mark_persistent(lp_R1961DLeanPacket_R1949DLean_mainDependencyCertificate);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
