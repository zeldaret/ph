#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"
#include "System/SysNew.hpp"

class UnkStruct_027e0d54_08 : public SysObject {
public:
    /* 00 */ u32 mUnk_00[1];
    /* 04 */
};

class UnkStruct_027e0d54 {
public:
    /* 00 */ u32 mUnk_00[2];
    /* 04 */ UnkStruct_027e0d54_08 *mUnk_08;
    /* 04 */ bool mUnk_0c;
    /* 04 */ unk8 mUnk_0d;
    /* 04 */ unk8 mUnk_0e;
    /* 04 */ u8 mUnk_0f;
    /* 10 */ unk32 mUnk_10;
    /* 10 */ u16 mUnk_14;
    /* 10 */ unk16 mUnk_16;

    UnkStruct_027e0d54();

    void func_ov008_02112f28();
    void func_ov000_0207a2e8(GameModeId modeId);
};

extern UnkStruct_027e0d54 data_027e0d54;
