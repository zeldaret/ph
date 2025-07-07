#pragma once

#include "Game/GameMode.hpp"
#include "Player/TouchControl.hpp"
#include "System/SysNew.hpp"
#include "global.h"
#include "types.h"

class GameStart : public GameMode {
public:
    /* 000 (base) */
    /* 008 */ unk32 mUnk_008;
    /* 00c */ u32 mUnk_00c;
    /* 010 */

    /* 00 */ virtual ~GameStart() override;
    /* 04 */ virtual GameModeId vfunc_08(bool param1) override;
    /* 10 */ virtual void vfunc_10(u16 *param1) override;
    /* 14 */

    static GameStart *Create(GameModeId modeId);

    GameStart(GameModeId modeId);

    static void func_ov008_02112e88();
};
