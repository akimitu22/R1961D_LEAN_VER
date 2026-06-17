// Lean compiler output
// Module: R1956DLeanInterface
// Imports: public import Init public meta import Init public import R1956DLeanInterface.VersionInterface public import R1956DLeanInterface.AnalyticInterfaces public import R1956DLeanInterface.EstimateSlots public import R1956DLeanInterface.MathlibAnchors public import R1956DLeanInterface.InterfaceObligations public import R1956DLeanInterface.InterfaceAxioms public import R1956DLeanInterface.InterfaceTheorems public import R1956DLeanInterface.ToyInterface
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
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_VersionInterface(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_AnalyticInterfaces(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_EstimateSlots(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_MathlibAnchors(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_InterfaceObligations(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_InterfaceAxioms(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_InterfaceTheorems(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface_ToyInterface(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_VersionInterface(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_AnalyticInterfaces(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_EstimateSlots(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_MathlibAnchors(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_InterfaceObligations(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_InterfaceAxioms(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_InterfaceTheorems(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface_ToyInterface(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
