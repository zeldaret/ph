#include "nds/math.h"

THUMB asm void Mat3p_InitXRotation(Mat3p *m, q20 sin, q20 cos) {
    mov r3, #0x1
    lsl r3, r3, #0xc
    str r3, [r0, #0x0]
    mov r3, #0x0
    str r3, [r0, #0x4]
    str r3, [r0, #0x8]
    str r3, [r0, #0xc]
    str r2, [r0, #0x10]
    str r1, [r0, #0x14]
    str r3, [r0, #0x18]
    neg r1, r1
    str r1, [r0, #0x1c]
    str r2, [r0, #0x20]
    bx lr
}
