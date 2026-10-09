#include "nds/math.h"

asm void Mat4p_CopyToMat4x3p(Mat4p *src, Mat4x3p *dst) {
    ldmia r0!, {r2-r3,r12}
    add r0, r0, #0x4
    stmia r1!, {r2-r3,r12}
    ldmia r0!, {r2-r3,r12}
    add r0, r0, #0x4
    stmia r1!, {r2-r3,r12}
    ldmia r0!, {r2-r3,r12}
    add r0, r0, #0x4
    stmia r1!, {r2-r3,r12}
    ldmia r0!, {r2-r3,r12}
    add r0, r0, #0x4
    stmia r1!, {r2-r3,r12}
    bx lr
}
