#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"

class GameModePlay : public GameMode {
public:
    /* 000 (base) */
    /* 008 */

    /* 00 */ virtual ~GameModePlay() override;
    /* 1c */ virtual void vfunc_1c();
    /* 20 */ virtual void vfunc_20();
    /* 24 */

    GameModePlay(unk32 param1);
};
