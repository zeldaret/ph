#include "nds/math.h"

THUMB asm void Mat4x3p_InitXRotation(Mat4x3p *m, q20 sin, q20 cos) {
    str r1, [r0, #0x14]
    neg r1, r1
    str r1, [r0, #0x1c]
    mov r1, #0x1
    lsl r1, r1, #0xc
    stmia r0!, {r1}
    mov r3, #0x0
    mov r1, #0x0
    stmia r0!, {r1,r3}
    stmia r0!, {r1-r2}
    str r1, [r0, #0x4]
    add r0, #0xc
    stmia r0!, {r2-r3}
    stmia r0!, {r1,r3}
    bx lr
}
