#include "nds/math.h"

extern q4 gAngToRadTable[129];
extern q4 FX_AtanIdxTable_[129];

THUMB asm void Mat4p_InitZRotation(Mat4p *m, q20 sinVal, q20 cosVal) {
    str r2, [ r0, #0 ] str r2, [ r0, #20 ] str r1, [ r0, #4 ] neg r1, r1 str r1,
        [r0, #16]

        mov r3,
# 1 mov r1, #0 lsl r3, r3, #12 mov r2,
# 0

        add r0,
# 8 stmia r0 !, {r1, r2 } add r0, #8 stmia r0 !, {r1, r2 } stmia r0 !, {r1, r2, r3 } stmia r0 !, {r1, r2 } stmia r0 !,
    { r1, r2, r3 }

    bx lr
}

void ARM Mat4p_Multiply(const Mat4p *a, const Mat4p *b, Mat4p *ab) {
    Mat4p tmp, *p;
    q20 x, y, z, w, xx, yy, zz, ww;

    if (ab == b) {
        p = &tmp;
    } else {
        p = ab;
    }

    x = a->xColumn.x;
    y = a->xColumn.y;
    z = a->xColumn.z;
    w = a->xColumn.w;

    p->xColumn.x =
        Q52_TO_Q20((q52) x * b->xColumn.x + (q52) y * b->yColumn.x + (q52) z * b->zColumn.x + (q52) w * b->wColumn.x);
    p->xColumn.y =
        Q52_TO_Q20((q52) x * b->xColumn.y + (q52) y * b->yColumn.y + (q52) z * b->zColumn.y + (q52) w * b->wColumn.y);
    p->xColumn.w =
        Q52_TO_Q20((q52) x * b->xColumn.w + (q52) y * b->yColumn.w + (q52) z * b->zColumn.w + (q52) w * b->wColumn.w);

    xx = b->xColumn.z;
    yy = b->yColumn.z;
    zz = b->zColumn.z;
    ww = b->wColumn.z;

    p->xColumn.z = Q52_TO_Q20((q52) x * xx + (q52) y * yy + (q52) z * zz + (q52) w * ww);

    x = a->yColumn.x;
    y = a->yColumn.y;
    z = a->yColumn.z;
    w = a->yColumn.w;

    p->yColumn.z = Q52_TO_Q20((q52) x * xx + (q52) y * yy + (q52) z * zz + (q52) w * ww);
    p->yColumn.y =
        Q52_TO_Q20((q52) x * b->xColumn.y + (q52) y * b->yColumn.y + (q52) z * b->zColumn.y + (q52) w * b->wColumn.y);
    p->yColumn.w =
        Q52_TO_Q20((q52) x * b->xColumn.w + (q52) y * b->yColumn.w + (q52) z * b->zColumn.w + (q52) w * b->wColumn.w);

    xx = b->xColumn.x;
    yy = b->yColumn.x;
    zz = b->zColumn.x;
    ww = b->wColumn.x;

    p->yColumn.x = Q52_TO_Q20((q52) x * xx + (q52) y * yy + (q52) z * zz + (q52) w * ww);

    x = a->zColumn.x;
    y = a->zColumn.y;
    z = a->zColumn.z;
    w = a->zColumn.w;

    p->zColumn.x = Q52_TO_Q20((q52) x * xx + (q52) y * yy + (q52) z * zz + (q52) w * ww);
    p->zColumn.y =
        Q52_TO_Q20((q52) x * b->xColumn.y + (q52) y * b->yColumn.y + (q52) z * b->zColumn.y + (q52) w * b->wColumn.y);
    p->zColumn.w =
        Q52_TO_Q20((q52) x * b->xColumn.w + (q52) y * b->yColumn.w + (q52) z * b->zColumn.w + (q52) w * b->wColumn.w);

    xx = b->xColumn.z;
    yy = b->yColumn.z;
    zz = b->zColumn.z;
    ww = b->wColumn.z;

    p->zColumn.z = Q52_TO_Q20((q52) x * xx + (q52) y * yy + (q52) z * zz + (q52) w * ww);

    x = a->wColumn.x;
    y = a->wColumn.y;
    z = a->wColumn.z;
    w = a->wColumn.w;

    p->wColumn.z = Q52_TO_Q20((q52) x * xx + (q52) y * yy + (q52) z * zz + (q52) w * ww);
    p->wColumn.y =
        Q52_TO_Q20((q52) x * b->xColumn.y + (q52) y * b->yColumn.y + (q52) z * b->zColumn.y + (q52) w * b->wColumn.y);
    p->wColumn.x =
        Q52_TO_Q20((q52) x * b->xColumn.x + (q52) y * b->yColumn.x + (q52) z * b->zColumn.x + (q52) w * b->wColumn.x);
    p->wColumn.w =
        Q52_TO_Q20((q52) x * b->xColumn.w + (q52) y * b->yColumn.w + (q52) z * b->zColumn.w + (q52) w * b->wColumn.w);

    if (p == &tmp) {
        *ab = tmp;
    }
}

q20 CoDivide64By32(q20 numer, q20 denom) {
    StartDivision64By32(numer, denom);
    return GetDivisionResult();
}

s64 CoDivide64(q20 numer, q20 denom) {
    StartDivision64By32(numer, denom);

    while ((*(volatile u16 *) REG_DIV_CNT & 0x8000))
        ;
    return (*(s64 *) REG_DIV_RESULT);
}

q20 CoReciprocal(q20 denom) {
    StartReciprocal(denom);
    return GetDivisionResult();
}

s64 CoReciprocal64(q20 denom) {
    StartReciprocal(denom);

    while ((*(volatile u16 *) REG_DIV_CNT & 0x8000))
        ;
    return (*(s64 *) REG_DIV_RESULT);
}

q20 CoSqrt(q20 x) {
    if (x > 0) {
        *(volatile u16 *) REG_SQRT_CNT = 1;
        *((u64 *) REG_SQRT_PARAM)      = (u64) x << 32;
        return AwaitSqrtResult();
    } else {
        return 0;
    }
}

q20 CoInvSqrt(q20 x) {
    if (x > 0) {
        s64 inv_x;
        s64 sqrt_x;
        s64 tmp;

        StartReciprocal(x);
        StartSqrt(x);

        inv_x = GetDivisionResult64();
        while (*(volatile u16 *) REG_SQRT_CNT & 0x8000)
            ;
        sqrt_x = (u32) (*((u32 *) REG_SQRT_RESULT));
        tmp    = inv_x * sqrt_x;
        return (q20) ((tmp + 0x20000000000) >> 42);
    } else {
        return 0;
    }
}

s64 GetDivisionResult64() {
    while (*(volatile u16 *) REG_DIV_CNT & 0x8000)
        ;

    return *(s64 *) REG_DIV_RESULT;
}

q20 GetDivisionResult() {
    while (*(volatile u16 *) REG_DIV_CNT & 0x8000)
        ;

    return ((*(s64 *) REG_DIV_RESULT + 0x80000) >> 20);
}

void StartReciprocal(q20 denom) {

    *(volatile u16 *) REG_DIV_CNT = 1;
    *(u64 *) REG_DIV_NUMER        = (u64) 0x1000 << 32;
    *(u64 *) REG_DIV_DENOM        = (u32) denom;
}

void StartSqrt(q20 x) {
    if (x > 0) {
        *(volatile u16 *) REG_SQRT_CNT   = 1;
        *(volatile u64 *) REG_SQRT_PARAM = (u64) x << 32;
    } else {
        *(volatile u16 *) REG_SQRT_CNT   = 1;
        *(volatile u64 *) REG_SQRT_PARAM = 0;
    }
}

void StartSqrt_Fast(q20 x) {
    if (x > 0) {
        *(volatile u64 *) REG_SQRT_PARAM = (u64) x << 32;
    } else {
        *(volatile u64 *) REG_SQRT_PARAM = 0;
    }
}

q20 AwaitSqrtResult() {
    while (*(volatile u16 *) REG_SQRT_CNT & 0x8000)
        ;
    return *(volatile u32 *) REG_SQRT_RESULT + 0x200 >> 10;
}

void StartDivision64By32(q20 numer, q20 denom) {

    *(volatile u16 *) REG_DIV_CNT = 1;
    *(u64 *) REG_DIV_NUMER        = (u64) numer << 32;
    *(u64 *) REG_DIV_DENOM        = (u32) denom;
}

s32 CoDivide32(s32 a, s32 b) {
    *(volatile u16 *) REG_DIV_CNT = 0;
    *(u32 *) REG_DIV_NUMER        = (u32) a;
    *(u64 *) REG_DIV_DENOM        = (u32) b;

    while (*(volatile u16 *) REG_DIV_CNT & 0x8000)
        ;

    return (*(s32 *) REG_DIV_RESULT);
}

s32 CoRemainder(s32 a, s32 b) {
    *(volatile u16 *) REG_DIV_CNT = 0;
    *(u32 *) REG_DIV_NUMER        = (u32) a;
    *(u64 *) REG_DIV_DENOM        = (u32) b;

    while (*(volatile u16 *) REG_DIV_CNT & 0x8000)
        ;
    return (*(s32 *) REG_DIVREM_RESULT);
}

void Vec3p_Add(const Vec3p *a, const Vec3p *b, Vec3p *ab) {

    ab->x = a->x + b->x;
    ab->y = a->y + b->y;
    ab->z = a->z + b->z;
}

void Vec3p_Sub(const Vec3p *a, const Vec3p *b, Vec3p *ab) {

    ab->x = a->x - b->x;
    ab->y = a->y - b->y;
    ab->z = a->z - b->z;
}

q20 Vec3p_Dot(const Vec3p *a, const Vec3p *b) {
    return Q52_TO_Q20(ROUND_Q52((q52) a->x * b->x + (q52) a->y * b->y + (q52) a->z * b->z));
}

void Vec3p_Cross(const Vec3p *a, const Vec3p *b, Vec3p *axb) {
    q20 x, y, z;

    x = Q52_TO_Q20(ROUND_Q52((q52) a->y * b->z - (q52) a->z * b->y));
    y = Q52_TO_Q20(ROUND_Q52((q52) a->z * b->x - (q52) a->x * b->z));
    z = Q52_TO_Q20(ROUND_Q52((q52) a->x * b->y - (q52) a->y * b->x));

    axb->x = x;
    axb->y = y;
    axb->z = z;
}

q20 Vec3p_Length(const Vec3p *pSrc) {
    q52 t;
    q20 rval;

    t = (q52) pSrc->x * pSrc->x;
    t += (q52) pSrc->y * pSrc->y;
    t += (q52) pSrc->z * pSrc->z;

    t <<= 2;

    *(volatile u16 *) REG_SQRT_CNT   = 1;
    *(volatile u64 *) REG_SQRT_PARAM = t;

    while (*(volatile u16 *) REG_SQRT_CNT & 0x8000)
        ;

    rval = (*((q20 *) REG_SQRT_RESULT) + 1) >> 1;
    return rval;
}

void Vec3p_Normalize(const Vec3p *pSrc, Vec3p *pDst) {
    q52 t;
    s32 sqrt;

    t = (q52) pSrc->x * pSrc->x;
    t += (q52) pSrc->y * pSrc->y;
    t += (q52) pSrc->z * pSrc->z;

    *(volatile u16 *) REG_DIV_CNT  = 2;
    *(u64 *) REG_DIV_NUMER         = 1LL << 56;
    *(u64 *) REG_DIV_DENOM         = (u64) t;
    *(volatile u16 *) REG_SQRT_CNT = 1;
    *((u64 *) REG_SQRT_PARAM)      = t << 2;

    while (*(volatile u16 *) REG_SQRT_CNT & 0x8000)
        ;
    sqrt = (*((s32 *) REG_SQRT_RESULT));

    while ((*(volatile u16 *) REG_DIV_CNT & 0x8000))
        ;
    t = (*(s64 *) REG_DIV_RESULT);
    t = t * sqrt;

    pDst->x = (q20) ((t * pSrc->x + (1LL << 44)) >> 45);
    pDst->y = (q20) ((t * pSrc->y + (1LL << 44)) >> 45);
    pDst->z = (q20) ((t * pSrc->z + (1LL << 44)) >> 45);
}

void Vec3p_Axpy(q20 a, const Vec3p *v1, const Vec3p *v2, Vec3p *pDest) {

    pDest->x = v2->x + Q52_TO_Q20((q52) a * v1->x);
    pDest->y = v2->y + Q52_TO_Q20((q52) a * v1->y);
    pDest->z = v2->z + Q52_TO_Q20((q52) a * v1->z);
}

q20 Vec3p_Distance(const Vec3p *v1, const Vec3p *v2) {
    q52 tmp;
    q20 diff;

    diff = v1->x - v2->x;
    tmp  = (q52) diff * diff;

    diff = v1->y - v2->y;
    tmp += (q52) diff * diff;

    diff = v1->z - v2->z;
    tmp += (q52) diff * diff;

    tmp <<= 2;

    *(volatile u16 *) REG_SQRT_CNT   = 1;
    *(volatile u64 *) REG_SQRT_PARAM = tmp;

    while (*(volatile u16 *) REG_SQRT_CNT & 0x8000)
        ;

    return (*(volatile q20 *) REG_SQRT_RESULT + 1) >> 1;
}

q4 FX_Atan2(q20 y, q20 x) {
    q20 a, b, c;
    s32 sign;

    if (y > 0) {
        if (x > 0) {
            if (x > y) {
                a    = y;
                b    = x;
                c    = 0;
                sign = 1;
            } else if (x < y) {
                a    = x;
                b    = y;
                c    = 6434;
                sign = 0;
            } else {
                return 3217;
            }
        } else if (x < 0) {
            x = -x;
            if (x < y) {
                a    = x;
                b    = y;
                c    = 6434;
                sign = 1;
            } else if (x > y) {
                a    = y;
                b    = x;
                c    = 12868;
                sign = 0;
            } else {
                return 9651;
            }
        } else {
            return 6434;
        }
    } else if (y < 0) {
        y = -y;
        if (x < 0) {
            x = -x;
            if (x > y) {
                a    = y;
                b    = x;
                c    = -12868;
                sign = 1;
            } else if (x < y) {
                a    = x;
                b    = y;
                c    = -6434;
                sign = 0;
            } else {
                return -9651;
            }
        } else if (x > 0) {
            if (x < y) {
                a    = x;
                b    = y;
                c    = -6434;
                sign = 1;
            } else if (x > y) {
                a    = y;
                b    = x;
                c    = 0;
                sign = 0;
            } else {
                return -3217;
            }
        } else {
            return -6434;
        }
    } else {
        if (x >= 0) {
            return 0;
        } else {
            return 12868;
        }
    }

    if (b == 0) {
        return 0;
    }
    if (sign) {
        return (c + gAngToRadTable[(q20) CoDivide64By32(a, b) >> 5]);
    } else {
        return (c - gAngToRadTable[(q20) CoDivide64By32(a, b) >> 5]);
    }
}

u16 FX_Atan2Idx(q20 y, q20 x) {
    q20 a, b;
    int c, sgn;

    if (y > 0) {
        if (x > 0) {
            if (x > y) {
                a   = y;
                b   = x;
                c   = 0;
                sgn = 1;
            } else if (x < y) {
                a   = x;
                b   = y;
                c   = 16384;
                sgn = 0;
            } else {
                return 8192;
            }
        } else if (x < 0) {
            x = -x;
            if (x < y) {
                a   = x;
                b   = y;
                c   = 16384;
                sgn = 1;
            } else if (x > y) {
                a   = y;
                b   = x;
                c   = 32768;
                sgn = 0;
            } else {
                return 24576;
            }
        } else {
            return 16384;
        }
    } else if (y < 0) {
        y = -y;
        if (x < 0) {
            x = -x;
            if (x > y) {
                a   = y;
                b   = x;
                c   = -32768;
                sgn = 1;
            } else if (x < y) {
                a   = x;
                b   = y;
                c   = -16384;
                sgn = 0;
            } else {
                return -24576;
            }
        } else if (x > 0) {
            if (x < y) {
                a   = x;
                b   = y;
                c   = -16384;
                sgn = 1;
            } else if (x > y) {
                a   = y;
                b   = x;
                c   = 0;
                sgn = 0;
            } else {
                return -8192;
            }
        } else {
            return -16384;
        }
    } else {
        if (x >= 0) {
            return 0;
        } else {
            return 32768;
        }
    }

    if (b == 0) {
        return 0;
    }
    if (sgn) {
        return (c + FX_AtanIdxTable_[CoDivide64By32(a, b) >> 5]);
    } else {
        return (c - FX_AtanIdxTable_[CoDivide64By32(a, b) >> 5]);
    }
}