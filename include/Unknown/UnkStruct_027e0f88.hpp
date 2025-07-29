#pragma once

#include "System/SysNew.hpp"
#include "global.h"
#include "types.h"

class UnkStruct_027e0f88_04 : public SysObject {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk16 mUnk_04;
    /* 06 */ unk16 mUnk_06;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk8 mUnk_0c;
    /* 0d */ unk8 mUnk_0d;
    /* 0e */ unk8 mUnk_0e;
    /* 0f */ unk8 mUnk_0f;
    /* 10 */

    UnkStruct_027e0f88_04();
    UnkStruct_027e0f88_04(unk32 param_1, unk16 param_2, unk32 param_3, unk16 param_4, u8 param_5);

    void func_ov000_020a1b54(unk32 param_1, unk32 param_2);
};

class UnkStruct_027e0f88 : public SysObject {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ UnkStruct_027e0f88_04 *mUnk_04[2];
    /* 0c */ unk16 mUnk_0c;
    /* 0e */ unk16 mUnk_0e;
    /* 10 */ unk16 mUnk_10;
    /* 12 */ unk16 mUnk_12;
    /* 14 */

    UnkStruct_027e0f88();
    UnkStruct_027e0f88(u32 *param_1);

    void func_ov000_020a1a3c();

    static void func_ov008_02113678(u32 *param_1);
    void func_ov008_021136c0();
    void func_ov000_020a1a0c(unk32 param_1, unk16 param_2);
};

extern UnkStruct_027e0f88 *data_027e0f88;
