#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

typedef unk32 GameModeId;
enum GameModeId_ {
    GameModeId_Load          = 0,
    GameModeId_StartupScreen = 1,
    GameModeId_Adventure     = 2,
    GameModeId_FileSelect    = 3,
    GameModeId_WFCSetup      = 4,
    GameModeId_DownloadPlay  = 5,
    GameModeId_Battle        = 6,
    GameModeId_Contact       = 7
};

class GameMode : public SysObject {
public:
    /* 000 (vtable) */
    /* 004 */ GameModeId mModeId;
    /* 008 */

    /* 00 */ virtual ~GameMode();
    /* 08 */ virtual GameModeId vfunc_08(bool param1) = 0;
    /* 0c */ virtual void vfunc_0c(u16 *param1);
    /* 10 */ virtual void vfunc_10(u16 *param1);
    /* 14 */ virtual void vfunc_14(bool param1);
    /* 18 */ virtual void vfunc_18();
    /* 1c */

    inline GameMode() {}
    inline GameMode(GameModeId modeId) :
        mModeId(modeId) {}

    void func_0202c0b8();
};
