#pragma once

#include "global.h"
#include "types.h"

class UnkStruct_020ee820_04 {
public:
    /* 00 */ unk32 mUnk_00;

    void func_020156b4();
};

class UnkStruct_020ee820 {
public:
    /* 00 */ bool mUnk_00;
    /* 01 */ unk8 mUnk_01;
    /* 02 */ unk8 mUnk_02;
    /* 03 */ unk8 mUnk_03;
    /* 04 */ UnkStruct_020ee820_04 mUnk_04;
    /* 08 */ unk32 *mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk8 mUnk_24[0x40 - 0x24];
    /* 40 */ unk32 mUnk_40[256];

    UnkStruct_020ee820();

    void func_ov000_020d69d4(unk32);
    void func_ov000_020d69e4();

    void func_ov008_021133f0();
};

extern UnkStruct_020ee820 data_ov000_020ee820;
