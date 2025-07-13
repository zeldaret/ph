#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"

class UnkStruct_020ec7dc_00 {
public:
    /* 00 */ u16 mUnk_00[0xA];
    /* 0a */
};

class UnkStruct_020ec7dc {
public:
    /* 00 */ UnkStruct_020ec7dc_00 mUnk_00[3];
    /* 3c */ unk8 mUnk_3c[4];
    /* 40 */

    UnkStruct_020ec7dc();

    void func_ov000_0207c170();
    void func_ov000_0207c0f0(GameModeId modeId);
};

extern UnkStruct_020ec7dc data_ov000_020ec7dc;
