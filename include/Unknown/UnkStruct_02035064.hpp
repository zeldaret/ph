#pragma once

#include "global.h"
#include "types.h"

#include "Unknown/UnkStruct_0202e1a0.hpp"

class UnkStruct_02035064 {
public:
    /* 00 (vtable) */
    /* 04 */ unk16 mUnk_04;
    /* 04 */ unk16 mUnk_06;
    /* 08 */ u32 *mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ u32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ u32 *mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2c */ unk32 mUnk_2c;
    /* 30 */ unk32 mUnk_30;
    /* 34 */ u32 *mUnk_34;
    /* 38 */ u32 *mUnk_38;
    /* 3c */ unk32 mUnk_3c;
    /* 40 */ unk32 mUnk_40;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ unk32 mUnk_48;
    /* 4c */ s16 mUnk_4c;
    /* 4e */ s16 mUnk_4e;
    /* 50 */ unk32 mUnk_50;
    /* 54 */ unk32 mUnk_54;
    /* 58 */ unk32 mUnk_58;
    /* 5c */ UnkStruct_0202e1a0 mUnk_5c;
    /* 74 */ u16 *mUnk_74;
    /* 78 */ s32 *mUnk_78;
    /* 7c */ u32 mUnk_7c;
    /* 80 */ u16 mUnk_80;
    /* 82 */ unk16 mUnk_82;
    /* 84 */ unk16 mUnk_84;
    /* 86 */ bool mUnk_86;
    /* 87 */ unk8 mUnk_87;
    /* 88 */

    /* 0 */ virtual s32 vfunc_00(); // func_020351a8
    /* 4 */ virtual s32 vfunc_04(); // func_020351b0
    /* 8 */

    UnkStruct_02035064();
    ~UnkStruct_02035064();

    static u8 func_02035428(u8 param1);

    void func_02034a1c(unk32, unk32, struct UnkStruct_01ffbe34 *);
    void func_02034b0c(unk32 param_2, unk32 param_3, unk32 param_4, unk32 param_5, unk32 param_6);
    void func_020350b0();
    void func_020350b4(s32 param1, unk32 param2, unk8 param3, unk16 param4, unk16 param5);
    void func_0203516c();
    void func_020351b8(bool param1, bool param2, bool param3, bool param4);
    void func_020352d8();
};
