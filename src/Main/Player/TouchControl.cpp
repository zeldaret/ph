#include "Player/TouchControl.hpp"
#include "global.h"

extern "C" bool func_0202b8f8(Vec3p *, s32, s32, s32, unk8);

ARM bool TouchControl::func_0202b864(Vec3p *param1, s32 size, unk8 param3) {
    if (gTouchControl.mFlags & TouchFlag_TouchedNow) {
        return func_0202b8f8(param1, size, gTouchControl.mTouchX, gTouchControl.mTouchY, param3);
    }

    return false;
}

ARM bool TouchControl::func_0202b894(Vec3p *param1, s32 size, unk8 param3) {
    if (gTouchControl.mTouch) {
        return func_0202b8f8(param1, size, gTouchControl.mTouchX, gTouchControl.mTouchY, param3);
    }

    if (gTouchControl.mFlags & TouchFlag_UntouchedNow) {
        return func_0202b8f8(param1, size, gTouchControl.mTouchPrevX, gTouchControl.mTouchPrevY, param3);
    }

    return false;
}
