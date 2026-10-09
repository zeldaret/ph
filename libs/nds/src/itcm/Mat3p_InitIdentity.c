#include "nds/math.h"

asm void Mat3p_InitIdentity(Mat3p *m) {
    mov r2, #0x1000
    str r2, [r0, #0x20]
    mov r3, #0x0
    stmia r0!, {r2-r3}
    mov r1, #0x0
    stmia r0!, {r1,r3}
    stmia r0!, {r2,r3}
    stmia r0!, {r1,r3}
    bx lr
}
