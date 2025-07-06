#pragma once

#include "Save/AdventureFlags.hpp"
#include "global.h"
#include "nds/math.h"
#include "types.h"

struct UnkStruct_027e0d38_Unk28 {
    /* 000 */ unk32 *mUnk_00;
    /* 004 */ unk32 mUnk_04;
    /* 008 */ unk32 mUnk_08;
    /* 00C */ unk32 mUnk_0c;
    /* 010 */ unk32 mUnk_10;
    /* 014 */ unk32 mUnk_14;
    /* 018 */ unk32 mUnk_18;
    /* 01C */ UnkStruct_027e0d38_UnkC mUnk_1c;
    /* 020 */ unk32 mUnk_20;
    /* 024 */ unk32 mUnk_24;
    /* 028 */ unk32 mUnk_28;
    /* 02C */ unk8 mUnk_2c;
    /* 02D */ unk8 mUnk_2d;
    /* 02E */ u8 mUnk_2e;
    /* 02F */ unk8 mUnk_2f;
    /* 030 */ unk32 mUnk_30;
    /* 034 */ bool mUnk_34;
    /* 035 */ unk8 mUnk_35;
    /* 036 */ unk16 mUnk_36;
    /* 038 */ Vec3p mUnk_38;
    /* 044 */ UnkStruct_027e0d38_UnkC mUnk_44;
    /* 048 */ unk8 mUnk_48[0x50 - 0x48];
    /* 050 */ unk8 mUnk_50;
    /* 051 */ unk8 mUnk_51;
    /* 052 */ unk8 mUnk_52;
    /* 053 */ unk8 mUnk_53;
    /* 054 */ unk8 mUnk_54;
    /* 055 */ unk8 mUnk_55;
    /* 056 */ u8 mUnk_56;
    /* 057 */ unk8 mUnk_57;
    /* 058 */ unk32 mUnk_58;
    /* 05c */ UnkStruct_02082348_04 mUnk_5c;
    /* 070 */ FlagsUnk2 mUnk_70;
    /* 088 */ unk8 pad1[0x9A - 0x88];
    /* 09a */ u8 mUnk_9a;
    /* 09b */ u8 mUnk_9b;
    /* 09c */ unk32 mUnk_9c;
    /* 0a0 */ Vec3p mUnk_a0;
    /* 0ac */ unk32 mUnk_ac;
    /* 110 */
};

struct UnkStruct_027e0d38 {
    /* 00 */ unk8 mUnk_00;
    /* 01 */ unk8 mUnk_01[3]; // padding?
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ UnkStruct_027e0d38_UnkC mUnk_0c;
    /* 10 */ unk32 mUnk_10; // `UnkStruct_02082348_04`?
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk16 mUnk_1c;
    /* 1e */ unk8 mUnk_1e;
    /* 1f */ unk8 mUnk_1f;
    /* 20 */ unk8 mUnk_20;
    /* 21 */ unk8 mUnk_21;
    /* 22 */ unk8 mUnk_22[2]; // padding?
    /* 24 */ void *mUnk_24;
    /* 28 */ UnkStruct_027e0d38_Unk28 *mUnk_28;
    /* 2c */

    s32 func_ov000_02078b40();
    unk8 func_ov000_02078b64();
    bool func_ov000_02078b88();
    void func_ov004_02100bcc();
    unk32 func_ov005_02100b7c(unk32 param_1);
};

extern UnkStruct_027e0d38 *data_027e0d38;
