#include "nds/math.h"

THUMB asm void Mat2p_InitRotation(Mat2p *m, q20 sin, q20 cos) {
    str r2, [r0, #0x0]
    str r1, [r0, #0x4]
    neg r1, r1
    str r1, [r0, #0x8]
    str r2, [r0, #0xc]
    bx lr
}
