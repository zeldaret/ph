#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"
#include "Render/FadeControl.hpp"
#include "System/OverlayManager.hpp"

typedef GameMode *(*GameModeCreateFunc)(GameModeId modeId);

struct GameModeData {
    /* 00 */ u8 mUnk_00;
    /* 01 */ u8 mUnk_01;
    /* 02 */ u8 mUnk_02;
    /* 03 */ u8 mUnk_03;
    /* 04 */ OverlayId slot1Overlay;
    /* 08 */ OverlayId slot2Overlay;
    /* 0c */ OverlayId slot3Overlay;
    /* 10 */ OverlayId slot12Overlay;
    /* 14 */ GameModeCreateFunc mModeCreateFunc;
    /* 18 */ void *mUnk_18;
    /* 1c */
};
extern const GameModeData gGameModes[];

class Game {
public:
    /* 000 */ GameModeId mModeId;
    /* 004 */ GameModeId mPrevModeId;
    /* 008 */ GameMode *mMode;
    /* 00c */ unk8 mUnk_00c[0xc0];
    /* 0cc */ FadeControl mFadeControl;
    /* 0f0 */ unk16 mUnk_0f0;
    /* 0f2 */ u16 mUnk_0f2;
    /* 0f4 */ s32 mUnk_0f4;
    /* 0f8 */ s32 mUnk_0f8;
    /* 0fc */ u16 mUnk_0fc;
    /* 0fe */ u16 mUnk_0fe;
    /* 100 */ unk8 mUnk_100;
    /* 101 */ s8 mUnk_101;
    /* 102 */ bool mUnk_102;
    /* 103 */ u8 mUnk_103;
    /* 104 */

    Game();
    ~Game();

    void EndGameMode();
    bool StartGameMode();
    void func_0202c974();
    void func_0202c97c();
    void Run();
    void func_0202cec8(s32 param1, unk32 param2);
    void func_0202cf34();
    void func_0202cf44();

    void func_ov016_0211fd68();
};

extern Game gGame;
