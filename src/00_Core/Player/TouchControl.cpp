#include "Player/TouchControl.hpp"

void TouchControl::Init() {}

void TouchControl::IncreaseSpeed(s16 increase) {
    this->mFlags = 0;
    this->mSpeed += increase;
}

void TouchControl::UpdateFlags(u16 speed) {}
void TouchControl::UpdateWithStateFlags(TouchStateFlags *state, u16 speed) {}
void TouchControl::Update(TouchState *state, u16 speed) {}
bool TouchControl::func_ov00_0207aeac() {
    return ((*data_0207aecc & 0x8000) >> 15) == 1;
}
void TouchControl::UpdateConditionally(TouchState *state, u16 speed) {}

void TouchControl::func_ov00_0207af38(u16 speedIncrease, bool shouldIncrease) {
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
