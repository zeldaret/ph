#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameMode.hpp"
#include "Render/FadeControl.hpp"
#include "System/OverlayManager.hpp"

class Game;
typedef void (*UnkCallback)(Game *);

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

extern "C" void func_ov016_0211fab8(void *, void (*)(), void *, unk32);

class Game_0c {
public:
    /* 00 */ PAD(0x00, 0xC0);

    Game_0c(UnkCallback callback, void *param2, u32 param3) {
        func_ov016_0211fab8(this, (void (*)()) callback, param2, param3);
    }
};

class FadeControl_Derived1 : public FadeControl {
public:
    FadeControl_Derived1() {}
};

class Game {
public:
    /* 000 */ GameModeId mModeId;
    /* 004 */ GameModeId mPrevModeId;
    /* 008 */ GameMode *mMode;
    /* 00c */ Game_0c mUnk_00c;
    /* 0cc */ FadeControl_Derived1 mFadeControl;
    /* 0f0 */ u16 mUnk_0f0;
    /* 0f2 */ vu16 mUnk_0f2;
    /* 0f4 */ s32 mUnk_0f4;
    /* 0f8 */ vs32 mUnk_0f8;
    /* 0fc */ u16 mUnk_0fc;
    /* 0fe */ u16 mUnk_0fe;
    /* 100 */ bool mUnk_100;
    /* 101 */ u8 mUnk_101;
    /* 102 */ bool mUnk_102;
    /* 103 */ u8 mUnk_103;
    /* 104 */

    Game();
    ~Game();

    void func_0202c678();
    void func_0202c69c();
    void EndGameMode();
    bool StartGameMode();
    static void func_0202c974(Game *game);
    void func_0202c97c();
    void Run();
    bool func_0202cec8(s32 param1, bool param2);
    void func_0202cf34();
    static void func_0202cf44(Game *game);

    void func_ov016_0211fd68();
};

extern Game gGame;
