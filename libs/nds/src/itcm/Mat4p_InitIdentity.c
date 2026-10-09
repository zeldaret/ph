#include "nds/math.h"

asm void Mat4p_InitIdentity(Mat4p *m) {
    mov r2, #0x1000
    mov r3, #0x0
    stmia r0!, {r2-r3}
    mov r1, #0x0
    stmia r0!, {r1,r3}
    stmia r0!, {r1-r3}
    stmia r0!, {r1,r3}
    stmia r0!, {r1-r3}
    stmia r0!, {r1,r3}
    stmia r0!, {r1-r2}
    bx lr
}
