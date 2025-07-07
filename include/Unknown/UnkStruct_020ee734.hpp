#pragma once

#include "global.h"
#include "types.h"

#include "Game/Game.hpp"

class UnkStruct_020ee734 {
public:
    /* 00 */ unk8 mUnk_00[0x90];
    /* 90 */ u32 *mUnk_90;
    /* 94 */ unk8 mUnk_94;
    /* 95 */ unk8 mUnk_95;
    /* 96 */ unk8 mUnk_96;
    /* 97 */ unk8 mUnk_97;
    /* 98 */ bool mUnk_98;
    /* 99 */ unk8 mUnk_99;
    /* 9a */ unk8 mUnk_9a;
    /* 9b */ unk8 mUnk_9b;
    /* 9c */ unk32 mUnk_9c;
    /* a0 */ unk32 mUnk_a0;
    /* a4 */ unk32 mUnk_a4;
    /* a8 */ unk8 mUnk_a8;
    /* a9 */ unk8 mUnk_a9;
    /* aa */ unk8 mUnk_aa;
    /* ab */ unk8 mUnk_ab;
    /* ac */ unk32 mUnk_ac[8];
    /* cc */

    UnkStruct_020ee734();

    void func_ov000_020d6488();
    void func_ov000_020d6620(void);
    void func_ov000_020d6438(GameModeId modeId);

    void func_ov008_021131ac(void);
};

extern UnkStruct_020ee734 data_ov000_020ee734;
