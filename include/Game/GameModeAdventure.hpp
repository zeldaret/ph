#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameModePlay.hpp"

class GameModeAdventure : public GameModePlay {
    /* 000 (base) */
    /* 008 */ unk8 mUnk_008[0x10];
    /* 018 */

public:
    /* 00 */ virtual ~GameModeAdventure() override;
    /* 08 */ virtual unk32 vfunc_08(unk32 param1) override;
    /* 0c */ virtual void vfunc_0c(u16 *param1) override;
    /* 10 */ virtual void vfunc_10(u16 *param1) override;
    /* 14 */ virtual void vfunc_14(u16 *param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 20 */ virtual void vfunc_20() override;
    /* 24 */

    GameModeAdventure(unk32 param1);
    static GameModeAdventure *Create(unk32 param1);
};
