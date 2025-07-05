#include "Player/TouchControl.hpp"
#include "global.h"

//! TODO: Replace with header file
extern "C" void Fill16(int value, unsigned short *dst, int size);

TouchControl gTouchControl;

THUMB TouchControl::TouchControl() {
    this->mSpeed              = 1;
    this->mTimeBetweenTouches = -1;
    this->mTimeSinceTouch     = -1;
    this->mRepeatStart        = 20;
    this->mRepeatLoop         = 6;
    this->mRepeatTimer        = this->mRepeatStart;
    this->mTouch              = false;
    this->mTouchX             = -1;
    this->mTouchY             = -1;
    this->mTouchPrev          = false;
    this->mTouchPrevX         = -1;
    this->mTouchPrevY         = -1;
    this->mTouchLastX         = 128;
    this->mTouchLastY         = 96;
    this->mTouchStartX        = -1;
    this->mTouchStartY        = -1;
    this->mFlags              = TouchFlag_None;
}

ARM void TouchControl::IncreaseSpeed(s16 increase) {
    this->mFlags = TouchFlag_None;
    this->mSpeed += increase;
}

ARM void TouchControl::UpdateFlags(u16 speed) {
    this->mFlags = TouchFlag_None;

    if (this->mTouchPrev == false && this->mTouch == true) {
        this->mFlags |= TouchFlag_TouchedNow;
    }

    if (this->mTouchPrev == true && this->mTouch == false) {
        this->mFlags |= TouchFlag_UntouchedNow;
    }

    if (this->mSpeed < speed) {
        this->mSpeed = speed;
    }

    if (this->mFlags & TouchFlag_TouchedNow) {
        this->mFlags |= TouchFlag_Repeat;
        this->mRepeatTimer = this->mRepeatStart;
    } else {
        if (this->mTouch != false) {
            if (this->mRepeatTimer - this->mSpeed > 1) {
                this->mRepeatTimer -= this->mSpeed;
            } else {
                this->mFlags |= TouchFlag_Repeat;
                this->mRepeatTimer = this->mRepeatLoop;
            }
        }
    }

    if (this->mTimeSinceTouch + this->mSpeed < 0xFFFF) {
        this->mTimeSinceTouch += this->mSpeed;
    } else {
        this->mTimeSinceTouch = -1;
    }

    if (this->mFlags & TouchFlag_TouchedNow) {
        this->mTimeBetweenTouches = this->mTimeSinceTouch;
        this->mTimeSinceTouch     = 0;
        this->mTouchStartX        = this->mTouchX;
        this->mTouchStartY        = this->mTouchY;
    }

    this->mSpeed = speed;

    if (this->mTouch) {
        this->mTouchLastX = this->mTouchX;
        this->mTouchLastY = this->mTouchY;
    }
}

ARM void TouchControl::UpdateWithStateFlags(TouchStateFlags *state, u16 speed) {
    this->mTouchPrev  = this->mTouch;
    this->mTouchPrevX = this->mTouchX;
    this->mTouchPrevY = this->mTouchY;

    if (state->touch == 1) {
        if (state->flags == 0) {
            this->mTouch  = true;
            this->mTouchX = state->touchX;
            this->mTouchY = state->touchY;
        } else {
            this->mTouchX = (state->flags & 1) ? this->mTouchPrevX : state->touchX;
            this->mTouchY = (state->flags & 2) ? this->mTouchPrevY : state->touchY;

            if (this->mTouchX >= 0 && this->mTouchX < 0x100 && this->mTouchY >= 0 && this->mTouchY < 0xC0) {
                this->mTouch = true;
            } else {
                this->mTouch  = false;
                this->mTouchX = -1;
                this->mTouchY = -1;
            }
        }
    } else {
        this->mTouch  = false;
        this->mTouchX = -1;
        this->mTouchY = -1;
    }

    this->UpdateFlags(speed);
}

ARM void TouchControl::Update(TouchState *state, u16 speed) {
    this->mTouchPrev  = this->mTouch;
    this->mTouchPrevX = this->mTouchX;
    this->mTouchPrevY = this->mTouchY;
    this->mTouch      = state->touch;
    this->mTouchX     = state->touchX;
    this->mTouchY     = state->touchY;
    this->UpdateFlags(speed);
}

ARM bool TouchControl::func_ov00_0207aeac() {
    return ((*((u16 *) 0x027FFFA8) & 0x8000) >> 15) == 1;
}

ARM void TouchControl::UpdateConditionally(TouchState *state, u16 speed) {
    TouchState newState;

    if (TouchControl::func_ov00_0207aeac()) {
        newState.touch  = false;
        newState.touchX = -1;
        newState.touchY = -1;
    } else {
        newState.touch  = state->touch;
        newState.touchX = state->touchX;
        newState.touchY = state->touchY;
    }

    this->Update(&newState, speed);
}

ARM void TouchControl::func_ov00_0207af38(u16 speedIncrease, bool shouldIncrease) {
    TouchStateFlags touchState;

    if (shouldIncrease) {
        //! TODO: `IncreaseSpeed` expects an s16 variable, while `speedIncrease` is a u16.
        //! As a result, the function performs a conversion that is not present in the binary.
        this->IncreaseSpeed(speedIncrease);
        return;
    }

    if (TouchControl::func_ov00_0207aeac()) {
        Fill16(0, &touchState.touchX, 8);
    } else {
        GetTouchStateFlags(&touchState);
    }

    this->UpdateWithStateFlags(&touchState, speedIncrease);
}

ARM TouchControl::~TouchControl() {}
