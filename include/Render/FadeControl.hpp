#pragma once

#include "global.h"
#include "types.h"

struct FadeControl {
    /* 00 */ unk32 mState;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ s32 mCurrentBright;
    /* 0c */ s32 mBrightA;
    /* 10 */ s32 mBrightB;
    /* 14 */ unk16 mCurrentFadeLength;
    /* 16 */ unk16 mUnk_16;
    /* 18 */ u16 mUnk_18;
    /* 1a */ u16 mFadeLength;
    /* 1c */ unk32 mFadeTimer;
    /* 20 */ bool mUnk_20;
    /* 20 */ bool mUnk_21;
    /* 20 */ bool mUnk_22;
    /* 23 */ unk8 mUnk_23;
    /* 24 */

    void Register();
    void Unregister();
    FadeControl();
    void func_0202aba8(s32 fadeLength, unk32 param2, unk32 newState);
    bool func_0202abdc(s32 fadeLength, unk32 param2);
    bool func_0202abf4(s32 fadeLength, unk32 param2);
    bool func_0202ac0c(s32 currentFadeLength, u16 param2, s32 fadeLength, unk32 param4);
    void UpdateFade(s32 speed);
};
