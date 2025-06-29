#pragma once

#include "global.h"
#include "types.h"

struct Registers {
    /* 00 */ unk32 mUnk_00; // CPSR
    /* 04 */ unk32 mUnk_04[12];
    /* 08 */ unk32 mUnk_08;
    /* 0C */ unk32 mUnk_0C; // SP
    /* 10 */ unk32 mUnk_10; // LR
    /* 14 */ unk32 mUnk_14; // PC
    /* 18 */ unk32 mUnk_18;
    /* 1C */ unk32 mUnk_1C;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2C */ unk32 mUnk_2C;
    /* 30 */ unk32 mUnk_30;
    /* 34 */ unk32 mUnk_34;
    /* 38 */ unk32 mUnk_38; // CP15
    /* 3C */ unk32 mUnk_3C; // SPSR
};

struct UnkStruct_02063220_08 {
    unk32 mUnk_00;

    void func_0202fd9c(unk32);
};

class UnkStruct_02063220 {
public:
    /* 00 */ char *path;
    /* 04 */ u8 mUnk_04;
    /* 05 */ u8 mUnk_05;
    /* 06 */ unk16 mUnk_06;
    /* 08 */ UnkStruct_02063220_08 mUnk_08;

    void DisplayAssertError(char *file, u16 line, char *msg, ...);
    void DisplayException(Registers *param1);
    static bool func_0202f3f0(unk32 param1);
    static unk32 func_0202f400(unk32 param1);
    void func_0202f4b4(void);
    void func_0202f500(void);
    void func_0202f754(unk32);
};

extern UnkStruct_02063220 data_02063220;
