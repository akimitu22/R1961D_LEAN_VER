// Lean compiler output
// Module: R1949DLean
// Imports: public import Init public meta import Init public import R1949DLean.Basic public import R1949DLean.AbelBookkeeping public import R1949DLean.StructuralLayers public import R1949DLean.TerminalClasses public import R1949DLean.AssumptionPackages public import R1949DLean.DependencyCertificates public import R1949DLean.FiniteToAbelChain public import R1949DLean.StructuralSupportChain public import R1949DLean.TerminalRigidityChain public import R1949DLean.MainLogicalChain public import R1949DLean.ProofObligationMap public import R1949DLean.ToyModel
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
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_Basic(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_AbelBookkeeping(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_StructuralLayers(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_TerminalClasses(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_AssumptionPackages(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_DependencyCertificates(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_FiniteToAbelChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_StructuralSupportChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_TerminalRigidityChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_MainLogicalChain(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_ProofObligationMap(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_ToyModel(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1949DLean(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_AbelBookkeeping(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_StructuralLayers(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_TerminalClasses(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_AssumptionPackages(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_DependencyCertificates(builtin);
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
res = initialize_R1961DLeanPacket_R1949DLean_MainLogicalChain(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_ProofObligationMap(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_ToyModel(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
