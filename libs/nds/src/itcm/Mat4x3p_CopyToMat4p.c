#include "nds/math.h"

asm void Mat4x3p_CopyToMat4p(Mat4x3p *src, Mat4p *dst) {
    stmdb sp!, {r4}
    mov r12, #0x0
    ldmia r0!, {r2-r4}
    stmia r1!, {r2-r4,r12}
    ldmia r0!, {r2-r4}
    stmia r1!, {r2-r4,r12}
    ldmia r0!, {r2-r4}
    stmia r1!, {r2-r4,r12}
    mov r12, #0x1000
    ldmia r0!, {r2-r4}
    stmia r1!, {r2-r4,r12}
    ldmia sp!, {r4}
    bx lr
}
