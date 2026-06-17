// Lean compiler output
// Module: R1954DLeanBridge
// Imports: public import Init public meta import Init public import R1954DLeanBridge.VersionBridge public import R1954DLeanBridge.StandardTargets public import R1954DLeanBridge.ManuscriptObjects public import R1954DLeanBridge.BridgeObligations public import R1954DLeanBridge.BridgeTheorems public import R1954DLeanBridge.ToyBridge
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
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_VersionBridge(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_StandardTargets(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_ManuscriptObjects(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeObligations(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeTheorems(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge_ToyBridge(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1954DLeanBridge(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_VersionBridge(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_StandardTargets(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_ManuscriptObjects(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeObligations(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_BridgeTheorems(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1954DLeanBridge_ToyBridge(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
