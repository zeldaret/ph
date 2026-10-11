#include "Game/Game.hpp"

#include <nds/system.h>

#include "GameStart/GameStart.hpp"
#include "Render/FadeController.hpp"
#include "System/OverlayManager.hpp"

extern "C" void func_0200d938(void *);

ARM Game::Game() :
    mModeId(1),
    mPrevModeId(1),
    mMode(NULL),
    mUnk_00c(Game::func_0202cf44, this, 0),
    mFadeControl() {
    mUnk_0f0 = 0;
    mUnk_0f2 = 1;
    mUnk_0f4 = 0;
    mUnk_0f8 = 0;
    mUnk_0fc = 0;
    mUnk_0fe = 0;
    mUnk_100 = false;
    mUnk_101 = 0;
    mUnk_102 = false;
    mUnk_103 = 0;
}

ARM void Game::func_ov016_0211fd68() {
    mFadeControl.Register();
    mFadeControl.mUnk_20 = false;
    gFadeController.func_0202d77c(&mFadeControl);
    if (HW_RESET_PARAMETER_BUF == 2) {
        gOverlayManager.LoadGameMode(1);
        GameStart::func_ov008_02112e88();
        gOverlayManager.UnloadGameMode();
        mPrevModeId = 4;
        mModeId     = 3;
    }
    func_0200d938(mUnk_00c.pad_0x00);
}
