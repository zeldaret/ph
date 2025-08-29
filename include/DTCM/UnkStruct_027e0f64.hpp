#pragma once

#include "global.h"
#include "types.h"

#include "Player/Bhio.hpp"

struct UnkStruct_027e0f64_04 {
    /* 000 */ u8 pad[0x1B4 - 0x00];
    /* 1b4 */ unk32 mUnk_1b4;
};

class UnkStruct_027e0f64 {
public:
    /* 0 */ Bhio *mUnk_0;
    /* 4 */ UnkStruct_027e0f64_04 *mUnk_4;
    /* 8 */ UnkStruct_027e0f64_04 *mUnk_8;
    /* c */

    void func_ov000_0208ae94();
    void func_ov000_0208b13c();
    unk32 func_ov000_0208b180();
};

extern UnkStruct_027e0f64 *data_027e0f64;
