#include "nds/math.h"

THUMB asm void Mat4x3p_InitScale(Mat4x3p *m, q20 x, q20 y, q20 z) {
    stmia r0!, {r1}
    mov r1, #0x0
    str r3, [r0, #0x1c]
    mov r3, #0x0
    stmia r0!, {r1,r3}
    stmia r0!, {r1-r3}
    mov r2, #0x0
    stmia r0!, {r1,r3}
    add r0, #0x4
    stmia r0!, {r1-r3}
    bx lr
}
