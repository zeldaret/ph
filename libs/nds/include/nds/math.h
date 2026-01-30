#ifndef _NDS_MATH_H
#define _NDS_MATH_H

#include "global.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define ABS(x) ((x) < 0 ? -(x) : (x))

// Q20.12 fixed point number
typedef s32 q20;
// Q4.12 fixed point number
typedef s16 q4;

#define INT_TO_Q20(n) ((s32) ((n) << 12))
#define FLOAT_TO_Q21(n) ((s32) (((n) * 8192 + 1) / 4))
#define FLOAT_TO_Q20(n) ((s32) (((n) * 8192 + 1) / 2))
#define FLOAT_TO_Q19(n) ((s32) (((n) * 8192 + 1)))
#define ROUND_Q20(n) (((s32) (n) + 0x800) >> 12)
#define MUL_Q20(a, b) (q20)((((s64) (a)) * ((s64) (b)) + 0x800) >> 12)
#define DIV_Q20(a, b) (((a) << 12) / (b))

#define DEG_TO_ANG(n) ((n) * 0x10000 / 360)
#define SIN(n) (FX_SinCosTable_[2 * ((n) >> 4)])
#define COS(n) (FX_SinCosTable_[2 * ((n) >> 4) + 1])

u32 func_01ff9f3c(s32 a, s32 b);
s32 FX_Atan2Idx(s32 x, s32 y);
q20 FX_Mul(q20 a, q20 b);

u32 CoDivide64By32(u32 a, u32 b);
u32 func_01ff98f0(u32 a, u32 b);
u32 CoReciprocal(u32 x);
u64 func_01ff992c(u32 x);
u32 CoSqrt(u32 x);
u32 CoInvSqrt(u32 x);
u32 AwaitDivisionResult();
u32 GetDivisionResult();
void StartReciprocal(u32 x);
void StartSqrt(u32 x);
void func_01ff9ac4(u32 x);
u32 AwaitSqrtResult();
void StartDivision64By32(u32 a, u32 b);
u32 CoDivide32(u32 a, u32 b);
u32 CoRemainder(u32 a, u32 b);

bool Approach(unk32 *src, unk32 dest, unk32 step);
bool Approach_thunk(unk32 *src, unk32 dest, unk32 step);
extern q4 FX_SinCosTable_[];

typedef struct {
    /* 0 */ s16 x;
    /* 1 */ s16 y;
    /* 2 */
} Vec2s;

typedef struct {
    /* 0 */ q20 x;
    /* 4 */ q20 y;
    /* 8 */
} Vec2p;

typedef struct {
    /* 0 */ q20 x;
    /* 4 */ q20 y;
    /* 8 */ q20 z;
    /* c */
} Vec3p;

typedef struct {
    /* 00 */ q20 x;
    /* 04 */ q20 y;
    /* 08 */ q20 z;
    /* 0c */ q20 w;
    /* 10 */
} Vec4p;

typedef struct {
    /* 00 */ Vec2p xColumn;
    /* 08 */ Vec2p yColumn;
    /* 10 */
} Mat2p;

typedef struct {
    /* 00 */ Vec3p xColumn;
    /* 0c */ Vec3p yColumn;
    /* 18 */ Vec3p zColumn;
    /* 24 */
} Mat3p;

typedef struct {
    /* 00 */ Vec3p xColumn;
    /* 0c */ Vec3p yColumn;
    /* 18 */ Vec3p zColumn;
    /* 24 */ Vec3p wColumn;
    /* 30 */
} Mat4x3p;

typedef struct {
    /* 00 */ Vec4p xColumn;
    /* 10 */ Vec4p yColumn;
    /* 20 */ Vec4p zColumn;
    /* 30 */ Vec4p wColumn;
    /* 40 */
} Mat4p;

extern const Vec3p gVec3p_ZERO;

void Vec3p_Add(Vec3p *a, Vec3p *b, Vec3p *out);
void Vec3p_Sub(Vec3p *a, Vec3p *b, Vec3p *out);
q20 Vec3p_Dot(Vec3p *a, Vec3p *b);
void Vec3p_Cross(Vec3p *a, Vec3p *b, Vec3p *out);
q20 Vec3p_Length(Vec3p *a);
void Vec3p_Normalize(Vec3p *vec, Vec3p *out);
void Vec3p_Axpy(q20 a, Vec3p *x, Vec3p *y, Vec3p *out);
q20 Vec3p_Distance(Vec3p *a, Vec3p *b);
bool Vec3p_TryNormalize(Vec3p *vec);
q20 Vec3p_DistanceSquared(Vec3p *a, Vec3p *b);
void Vec3p_Scale(Vec3p *vec, q20 scale);
bool Vec3p_CalculateNormal(Vec3p *vec, Vec3p *a, Vec3p *b, Vec3p *c);
void Vec3p_SetLength(Vec3p *vec, q20 len, Vec3p *out);

inline void Vec3p_Rotate(Vec3p *vec, q20 sin, q20 cos, Vec3p *out) {
    out->x += MUL_Q20(vec->z, sin);
    out->z += MUL_Q20(vec->z, cos);
    out->x += MUL_Q20(vec->x, cos);
    out->z += MUL_Q20(vec->x, -sin);
}

inline void Vec3p_CopyXZ(Vec3p *vec, Vec3p *out) {
    q20 z = vec->z;
    q20 x = vec->x;

    out->x = x;
    out->y = 0;
    out->z = z;
}

inline void Vec3p_Copy(Vec3p *vec, Vec3p *out) {
    out->x = vec->x;
    out->y = vec->y;
    out->z = vec->z;
}

void Mat2p_InitIdentity(Mat2p *m);
void Mat2p_InitRotation(Mat2p *m, q20 sin, q20 cos);
void Mat2p_Multiply(Mat2p *a, Mat2p *b, Mat2p *out);

void Mat3p_InitIdentity(Mat3p *m);
void Mat3p_CopyToMat4x3p(Mat3p *m, Mat4x3p *out);
void Mat3p_InitScale(Mat3p *m, q20 x, q20 y, q20 z);
void Mat3p_ScaleColumns(Mat3p *m, Mat3p *out, q20 x, q20 y, q20 z);
void Mat3p_InitXRotation(Mat3p *m, q20 sin, q20 cos);
void Mat3p_InitYRotation(Mat3p *m, q20 sin, q20 cos);
void Mat3p_InitZRotation(Mat3p *m, q20 sin, q20 cos);
void Mat3p_func_01ff8248(Mat3p *m, Vec3p *v, q20 scale, q20 offset);
void Mat3p_func_01ff83a0(Mat3p *a, Mat3p *b);
void Mat3p_Multiply(Mat3p *a, Mat3p *b, Mat3p *out);
void Mat3p_MultiplyVec(Vec3p *v, Mat3p *m, Vec3p *out);

void Mat4x3p_InitIdentity(Mat4x3p *m);
void Mat4x3p_CopyToMat4p(Mat4x3p *m, Mat4p *out);
void Mat4x3p_func_01ff8988(Mat4x3p *m, Mat4x3p *out, q20 x, q20 y, q20 z);
void Mat4x3p_InitScale(Mat4x3p *m, q20 x, q20 y, q20 z);
void Mat4x3p_ScaleColumns(Mat4x3p *m, Mat4x3p *out, q20 x, q20 y, q20 z);
void Mat4x3p_InitXRotation(Mat4x3p *m, q20 sin, q20 cos);
void Mat4x3p_InitYRotation(Mat4x3p *m, q20 sin, q20 cos);
void Mat4x3p_InitZRotation(Mat4x3p *m, q20 sin, q20 cos);
void Mat4x3p_func_01ff8ad8(Mat4x3p *m, Vec3p *v, q20 scale, q20 offset);
void Mat4x3p_func_01ff8af8(Mat4x3p *a, Mat4x3p *b);
void Mat4x3p_Multiply(Mat4x3p *a, Mat4x3p *b, Mat4x3p *out);
void Mat4x3p_MultiplyVec(Vec3p *v, Mat4x3p *m, Vec3p *out);

void Mat4p_InitIdentity(Mat4p *m);
void Mat4p_CopyToMat4x3p(Mat4p *m, Mat4x3p *out);
void Mat4p_InitZRotation(Mat4p *m, q20 sin, q20 cos);
void Mat4p_Multiply(Mat4p *a, Mat4p *b, Mat4p *out);

#ifdef __cplusplus
}
#endif

#endif
