#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"

struct UnkStruct_027e0dbc_24 {
    /* 00 */ PAD(0x00, 0x0b);
    /* 0b */ u8 mUnk_0b;
    /* 0c */
};

class UnkStruct_027e0dbc {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ UnkStruct_027e0dbc_24 *mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2c */ unk32 mUnk_2c;

    UnkStruct_027e0dbc();

    void func_02042744(unk32 *param_1);
    void func_ov000_0207b9dc();
    void func_ov000_0207b9c8();
    void func_ov000_0207b988(GameModeId modeId);
    UnkStruct_027e0dbc_24 *GetUnk_24();

    bool func_ov003_020f3d5c(unk32 param1);
    void func_ov003_020f3d74(unk32 param1);
    void func_ov003_020f3d94(u8 param1);
    unk32 func_ov003_020f3d9c();
    void func_ov003_020f3da4();
    void func_ov003_020f3db0();
};

extern UnkStruct_027e0dbc data_027e0dbc;
