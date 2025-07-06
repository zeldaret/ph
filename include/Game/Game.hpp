#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"
#include "Render/FadeControl.hpp"

class Game {
public:
    /* 000 */ s32 mModeId;
    /* 004 */ s32 mPrevModeId;
    /* 008 */ GameMode *mMode;
    /* 00c */ unk8 mUnk_00c[0xc0];
    /* 0cc */ FadeControl mFadeControl;
    /* 0f0 */ unk16 mUnk_0f0;
    /* 0f2 */ u16 mUnk_0f2;
    /* 0f4 */ s32 mUnk_0f4;
    /* 0f8 */ s32 mUnk_0f8;
    /* 0fc */ unk16 mUnk_0fc;
    /* 0fe */ unk16 mUnk_0fe;
    /* 100 */ unk8 mUnk_100;
    /* 101 */ s8 mUnk_101;
    /* 102 */ bool mUnk_102;
    /* 103 */ u8 mUnk_103;
    /* 104 */

    Game();
    ~Game();

    void EndGameMode();
    void StartGameMode();
    void func_0202c974();
    void func_0202c97c();
    void Run();
    void func_0202cec8(s32 param1, unk32 param2);
    void func_0202cf34();
    void func_0202cf44();

    void func_ov016_0211fd68();
};

extern Game gGame;
