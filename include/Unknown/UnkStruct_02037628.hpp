#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

struct UnkStruct_02037628 {
    /* 00 */ PAD(0x00, 0x0c);
    /* 0c */ u8 mUnk_0c;
    /* 0d */ PAD(0x0d, 0x14);
    /* 14 */ u8 mUnk_14;
    /* 15 */ u8 mUnk_15;
    /* 15 */ u8 mUnk_16;
    /* 17 */

    void func_02037628();
    void func_020376c0(Vec3p *pos);
};
