#pragma once

#include "global.h"
#include "types.h"

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

#define DEG_TO_ANG(n) ((n) * 0x10000 / 360)
#define SIN(n) (gSinCosTable[2 * ((n) >> 4)])
#define COS(n) (gSinCosTable[2 * ((n) >> 4) + 1])

extern "C" s32 Atan2(s32 x, s32 y);
extern q4 gSinCosTable[];

typedef struct {
    /* 0 */ s8 x;
    /* 1 */ s8 y;
    /* 2 */
} Vec2b;

typedef struct {
    /* 0 */ s16 x;
    /* 1 */ s16 y;
    /* 2 */
} Vec2s;

typedef struct {
    /* 0 */ q20 x;
    /* 4 */ q20 y;
    /* 8 */ q20 z;
    /* c */
} Vec3p;

extern const Vec3p gVec3p_ZERO;

extern "C" void Vec3p_Add(Vec3p *a, Vec3p *b, Vec3p *out);
extern "C" void Vec3p_Sub(Vec3p *a, Vec3p *b, Vec3p *out);
extern "C" q20 Vec3p_Dot(Vec3p *a, Vec3p *b);
extern "C" void Vec3p_Cross(Vec3p *a, Vec3p *b, Vec3p *out);
extern "C" q20 Vec3p_Length(Vec3p *a);
extern "C" void Vec3p_Normalize(Vec3p *vec, Vec3p *out);
extern "C" void Vec3p_Axpy(q20 a, Vec3p *x, Vec3p *y, Vec3p *out);
extern "C" q20 Vec3p_Distance(Vec3p *a, Vec3p *b);
extern "C" void Vec3p_Scale(Vec3p *vec, q20 scale);

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

typedef struct {
    /* 00 */ q20 x;
    /* 04 */ q20 y;
    /* 08 */ q20 z;
    /* 0c */ q20 w;
    /* 10 */
} Vec4p;

typedef struct {
    /* 00 */ Vec3p xColumn;
    /* 0c */ Vec3p yColumn;
    /* 18 */ Vec3p zColumn;
    /* 24 */
} Mat3p;

extern "C" u32 FastDivide(u32 a, u32 b);
extern "C" u32 Divide(u32 a, u32 b);
extern "C" bool Approach(unk32 *src, unk32 dest, unk32 step);
extern "C" bool Approach_thunk(unk32 *src, unk32 dest, unk32 step);
