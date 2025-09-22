#include "Player/TouchControl.hpp"

#define REG_027fffa8 (*(volatile u16 *) 0x027fffa8)

THUMB void TouchControl::Init() {
    this->mSpeed              = 1;
    this->mTimeBetweenTouches = 0xffff;
    this->mTimeSinceTouch     = 0xffff;
    this->mRepeatStart        = 0x14;
    this->mRepeatLoop         = 6;
    this->mRepeatTimer        = *(u16 *) &this->mRepeatStart;
    this->mTouch              = false;
    this->mTouchX             = -1;
    this->mTouchY             = -1;
    this->mTouchPrev          = false;
    this->mTouchPrevX         = -1;
    this->mTouchPrevY         = -1;
    this->mTouchLastX         = 0x80;
    this->mTouchLastY         = 0x60;
    this->mTouchStartX        = -1;
    this->mTouchStartY        = -1;
    this->mFlags              = 0;
    return;
}

ARM void TouchControl::IncreaseSpeed(s16 increase) {
    this->mFlags = 0;
    this->mSpeed += increase;
}

ARM void TouchControl::UpdateFlags(u16 speed) {}

void TouchControl::UpdateWithStateFlags(TouchStateFlags *state, u16 speed) {}

ARM void TouchControl::Update(TouchState *state, u16 speed) {
    this->mTouchPrev  = this->mTouch;
    this->mTouchPrevX = this->mTouchX;
    this->mTouchPrevY = this->mTouchY;
    this->mTouch      = state->touch;
    this->mTouchX     = state->touchX;
    this->mTouchY     = state->touchY;
    this->UpdateFlags(speed);
    return;
}

ARM bool TouchControl::func_ov00_0207aeac() {
    return ((REG_027fffa8 & 0x8000) >> 15) == 1;
}

ARM void TouchControl::UpdateConditionally(TouchState *state, u16 speed) {
    int iVar1;
    TouchState local_20;

    iVar1 = func_ov00_0207aeac();
    if (iVar1) {
        local_20.touch  = false;
        local_20.touchX = -1;
        local_20.touchY = -1;
    } else {
        local_20.touch  = state->touch;
        local_20.touchX = state->touchX;
        local_20.touchY = state->touchY;
    }
    Update(&local_20, speed);
    return;
}

// non-matching
ARM void TouchControl::func_ov00_0207af38(u16 speedIncrease, bool shouldIncrease) {
    TouchStateFlags touchState;

    if (shouldIncrease) {
        IncreaseSpeed(speedIncrease); /* TODO: IncreaseSpeed expects an s16 variable,
                                         while speedIncrease is a u16. As a result, the function
                                         performs a conversion that is not present in the binary. */
        return;
    }

    u32 result = TouchControl::func_ov00_0207aeac();
    if (result != 0) {
        Fill16(0, &touchState.touchX, 8);
    } else {

        GetTouchStateFlags(&touchState);
    }

    UpdateWithStateFlags(&touchState, speedIncrease);
}

TouchControl::~TouchControl() {}
