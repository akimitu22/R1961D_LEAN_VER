// Lean compiler output
// Module: R1949DLean.DependencyCertificates
// Imports: public import Init public meta import Init public import R1949DLean.AssumptionPackages
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
static const lean_ctor_object lp_R1961DLeanPacket_R1949DLean_finiteToAbelCertificate___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*0 + 8, .m_other = 0, .m_tag = 0}, .m_objs = {LEAN_SCALAR_PTR_LITERAL(1, 1, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1949DLean_finiteToAbelCertificate___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_finiteToAbelCertificate___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1949DLean_finiteToAbelCertificate = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_finiteToAbelCertificate___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1949DLean_layerRealizationCertificate___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*0 + 8, .m_other = 0, .m_tag = 0}, .m_objs = {LEAN_SCALAR_PTR_LITERAL(0, 0, 0, 1, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1949DLean_layerRealizationCertificate___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_layerRealizationCertificate___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1949DLean_layerRealizationCertificate = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_layerRealizationCertificate___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1949DLean_structuralSupportCertificate___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*0 + 8, .m_other = 0, .m_tag = 0}, .m_objs = {LEAN_SCALAR_PTR_LITERAL(0, 0, 1, 1, 1, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1949DLean_structuralSupportCertificate___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_structuralSupportCertificate___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1949DLean_structuralSupportCertificate = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_structuralSupportCertificate___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1949DLean_terminalRigidityCertificate___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*0 + 8, .m_other = 0, .m_tag = 0}, .m_objs = {LEAN_SCALAR_PTR_LITERAL(0, 0, 0, 0, 0, 1, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1949DLean_terminalRigidityCertificate___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_terminalRigidityCertificate___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1949DLean_terminalRigidityCertificate = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_terminalRigidityCertificate___closed__0_value;
static const lean_ctor_object lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*0 + 8, .m_other = 0, .m_tag = 0}, .m_objs = {LEAN_SCALAR_PTR_LITERAL(1, 1, 1, 1, 1, 1, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate = (const lean_object*)&lp_R1961DLeanPacket_R1949DLean_mainNoEscapeCertificate___closed__0_value;
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1949DLean_AssumptionPackages(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1949DLean_DependencyCertificates(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1949DLean_AssumptionPackages(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
