#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"

struct UnkStruct_027e0c54 {
public:
    /* 0 */ bool mUnk_0;
    /* 4 */ unk32 mUnk_4;
    /* 8 */

    void func_02036014(GameModeId modeId);
    void func_02036050();
    bool func_02036174();
    bool func_020361d0();
    void func_02036240(u16 *param0);
    void func_020363b0();
};

extern UnkStruct_027e0c54 data_027e0c54;
