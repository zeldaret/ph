#include "nds/math.h"

void Mat2p_InitIdentity(Mat2p *m) {}
void Mat2p_InitRotation(Mat2p *m, q20 sin, q20 cos) {}
void Mat2p_Multiply(Mat2p *a, Mat2p *b, Mat2p *out) {}

void Mat3p_InitIdentity(Mat3p *m) {}
void Mat3p_CopyToMat4x3p(Mat3p *m, Mat4x3p *out) {}
void Mat3p_InitScale(Mat3p *m, q20 x, q20 y, q20 z) {}
void Mat3p_ScaleColumns(Mat3p *m, Mat3p *out, q20 x, q20 y, q20 z) {}
void Mat3p_InitXRotation(Mat3p *m, q20 sin, q20 cos) {}
void Mat3p_InitYRotation(Mat3p *m, q20 sin, q20 cos) {}
void Mat3p_InitZRotation(Mat3p *m, q20 sin, q20 cos) {}
void Mat3p_func_01ff8248(Mat3p *m, Vec3p *v, q20 scale, q20 offset) {}
void Mat3p_func_01ff83a0(Mat3p *a, Mat3p *b) {}
void Mat3p_Multiply(Mat3p *a, Mat3p *b, Mat3p *out) {}
void Mat3p_MultiplyVec(Vec3p *v, Mat3p *m, Vec3p *out) {}

void Mat4x3p_InitIdentity(Mat4x3p *m) {}
void Mat4x3p_CopyToMat4p(Mat4x3p *m, Mat4p *out) {}
void Mat4x3p_func_01ff8988(Mat4x3p *m, Mat4x3p *out, q20 x, q20 y, q20 z) {}
void Mat4x3p_InitScale(Mat4x3p *m, q20 x, q20 y, q20 z) {}
void Mat4x3p_ScaleColumns(Mat4x3p *m, Mat4x3p *out, q20 x, q20 y, q20 z) {}
void Mat4x3p_InitXRotation(Mat4x3p *m, q20 sin, q20 cos) {}
void Mat4x3p_InitYRotation(Mat4x3p *m, q20 sin, q20 cos) {}
void Mat4x3p_InitZRotation(Mat4x3p *m, q20 sin, q20 cos) {}
void Mat4x3p_func_01ff8ad8(Mat4x3p *m, Vec3p *v, q20 scale, q20 offset) {}
void Mat4x3p_func_01ff8af8(Mat4x3p *a, Mat4x3p *b) {}
void Mat4x3p_Multiply(Mat4x3p *a, Mat4x3p *b, Mat4x3p *out) {}
void Mat4x3p_MultiplyVec(Vec3p *v, Mat4x3p *m, Vec3p *out) {}

void Mat4p_InitIdentity(Mat4p *m) {}
void Mat4p_CopyToMat4x3p(Mat4p *m, Mat4x3p *out) {}
void Mat4p_InitZRotation(Mat4p *m, q20 sin, q20 cos) {}
void Mat4p_Multiply(Mat4p *a, Mat4p *b, Mat4p *out) {}

u32 CoDivide64By32(u32 a, u32 b) {}
u32 func_01ff98f0(u32 a, u32 b) {}
u32 CoReciprocal(u32 x) {}
u64 func_01ff992c(u32 x) {}
u32 CoSqrt(u32 x) {}
u32 CoInvSqrt(u32 x) {}
u32 AwaitDivisionResult() {}
u32 GetDivisionResult() {}
void StartReciprocal(u32 x) {}
void StartSqrt(u32 x) {}
void func_01ff9ac4(u32 x) {}
u32 AwaitSqrtResult() {}
void StartDivision64By32(u32 a, u32 b) {}
u32 CoDivide32(u32 a, u32 b) {}
u32 CoRemainder(u32 a, u32 b) {}

void Vec3p_Add(Vec3p *a, Vec3p *b, Vec3p *out) {}
void Vec3p_Sub(Vec3p *a, Vec3p *b, Vec3p *out) {}
q20 Vec3p_Dot(Vec3p *a, Vec3p *b) {}
void Vec3p_Cross(Vec3p *a, Vec3p *b, Vec3p *out) {}
q20 Vec3p_Length(Vec3p *a) {}
void Vec3p_Normalize(Vec3p *vec, Vec3p *out) {}
void Vec3p_Axpy(q20 a, Vec3p *x, Vec3p *y, Vec3p *out) {}
q20 Vec3p_Distance(Vec3p *a, Vec3p *b) {}
void Vec3p_func_01fffc94(Vec3p *a, Vec3p *b);

u32 func_01ff9f3c(s32 a, s32 b) {}
s32 FX_Atan2Idx(s32 x, s32 y) {}
