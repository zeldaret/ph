#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

enum GameModes {
    GameMode_Load          = 0,
    GameMode_StartupScreen = 1,
    GameMode_Adventure     = 2,
    GameMode_FileSelect    = 3,
    GameMode_WFCSetup      = 4,
    GameMode_DownloadPlay  = 5,
    GameMode_Battle        = 6,
    GameMode_Contact       = 7
};

class GameMode : public SysObject {
public:
    /* 000 (vtable) */
    /* 004 */ s32 mModeId;
    /* 008 */

    /* 00 */ virtual ~GameMode();
    /* 08 */ virtual unk32 vfunc_08(unk32 param1) = 0;
    /* 0c */ virtual void vfunc_0c(u16 *param1);
    /* 10 */ virtual void vfunc_10(u16 *param1);
    /* 14 */ virtual void vfunc_14(u16 *param1);
    /* 18 */ virtual void vfunc_18();
    /* 1c */

    inline GameMode() {}
    inline GameMode(s32 modeId) :
        mModeId(modeId) {}

    void func_0202c0b8();
};
