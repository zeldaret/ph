#pragma once

#include "global.h"
#include "types.h"

extern "C" void Fill16(int value, unsigned short *dst, int size);

class UnkStruct_020ee698_0c {
public:
    /* 00 */ u16 mUnk_00[15];
    /* 2c */ unk32 mUnk_2c;
    /* 30 */

    UnkStruct_020ee698_0c() {
        this->mUnk_2c = 4;
        Fill16(0, this->mUnk_00, sizeof(this->mUnk_00));
    }
};

class UnkStruct_020ee698 {
public:
    /* 00 */ unk8 mUnk_00;
    /* 01 */ unk8 mUnk_01;
    /* 02 */ unk16 mUnk_02;
    /* 04 */ u16 mUnk_04;
    /* 04 */ unk16 mUnk_06;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ UnkStruct_020ee698_0c mUnk_0c;
    /* 30 */

    UnkStruct_020ee698();
};

extern UnkStruct_020ee698 data_ov000_020ee698;
