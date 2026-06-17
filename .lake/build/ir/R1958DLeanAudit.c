// Lean compiler output
// Module: R1958DLeanAudit
// Imports: public import Init public meta import Init public import R1958DLeanAudit.VersionAudit public import R1958DLeanAudit.AuditLedgers public import R1958DLeanAudit.NoOrphanCertificates public import R1958DLeanAudit.NonClaimCertificates public import R1958DLeanAudit.ToyAudit
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
lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit_VersionAudit(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit_AuditLedgers(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit_NoOrphanCertificates(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit_NonClaimCertificates(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit_ToyAudit(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1958DLeanAudit_VersionAudit(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1958DLeanAudit_AuditLedgers(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1958DLeanAudit_NoOrphanCertificates(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1958DLeanAudit_NonClaimCertificates(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1958DLeanAudit_ToyAudit(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
