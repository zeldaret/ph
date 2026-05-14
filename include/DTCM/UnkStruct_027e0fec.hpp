#pragma once

#include "global.h"
#include "types.h"

struct UnkStruct_027e0fec_22c8_04 {
    /* 00 */ PAD(0x00, 0x08);
    /* 08 */ unk32 mUnk_08;
    /* 0c */

    void func_02019570(unk32 param1, unk32 param2);
};

struct UnkStruct_027e0fec_22c8 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ UnkStruct_027e0fec_22c8_04 *mUnk_04;
    /* 08 */

    UnkStruct_027e0fec_22c8_04 *func_ov000_020c4588();
};

struct UnkStruct_027e0fec {
    /* 0000 */ PAD(0x0000, 0x22c8);
    /* 22c8 */ UnkStruct_027e0fec_22c8 mUnk_22c8;
    /* 22cc */
};

extern UnkStruct_027e0fec *data_027e0fec;
