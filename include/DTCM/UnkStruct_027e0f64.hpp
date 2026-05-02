#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

#include "Player/Bhio.hpp"

struct UnkStruct_027e0f64_04 {
    /* 000 */ PAD(0x000, 0x01c);
    /* 01c */ Mat4x3p mUnk_01c;
    /* 04c */ PAD(0x04c, 0x1b4);
    /* 1b4 */ unk32 mUnk_1b4;
    /* 1b8 */ PAD(0x1b8, 0x260);
    /* 260 */ Vec3p mUnk_260;
    /* 26c */ Vec3p mUnk_26c;
    /* 278 */

    bool func_01ffe468(Vec3p *param2, s32 *param3, s32 *param4, bool param5);
};

class UnkStruct_027e0f64 {
public:
    /* 0 */ Bhio *mUnk_0;
    /* 4 */ UnkStruct_027e0f64_04 *mUnk_4;
    /* 8 */ UnkStruct_027e0f64_04 *mUnk_8;
    /* c */

    void func_ov000_0208ae94();
    void func_ov000_0208b13c();
    UnkStruct_027e0f64_04 *func_ov000_0208b180();
};

extern UnkStruct_027e0f64 *data_027e0f64;
