#include "Game/Game.hpp"

#include "GameStart/GameStart.hpp"
#include "Render/FadeController.hpp"
#include "System/OverlayManager.hpp"

extern "C" void func_ov016_0211fab8(void *, void (*)(), void *, unk32);
extern "C" void func_0200d938(void *);
extern "C" void _ZN4Game13func_0202cf44Ev(Game *);
extern "C" void _ZN11FadeControlC2Ev(FadeControl *);

ARM Game::Game() {
    mModeId     = 1;
    mPrevModeId = 1;
    mMode       = NULL;
    func_ov016_0211fab8(mUnk_00c, (void (*)()) _ZN4Game13func_0202cf44Ev, this, 0);
    _ZN11FadeControlC2Ev(&mFadeControl);
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
    if (*(s32 *) 0x027ffc20 == 2) {
        gOverlayManager.LoadGameMode(1);
        GameStart::func_ov008_02112e88();
        gOverlayManager.UnloadGameMode();
        mPrevModeId = 4;
        mModeId     = 3;
    }
    func_0200d938(mUnk_00c);
}
