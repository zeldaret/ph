#pragma once

#include "global.h"
#include "types.h"

struct TouchStateFlags {
    u16 touchX;
    u16 touchY;
    u16 touch;
    u16 flags;
};

struct TouchState {
    bool touch;
    s32 touchX;
    s32 touchY;
};

extern "C" {
void WaitForTouchUpdate(u16 param1);
bool GetTouchStateFlags(TouchStateFlags *pState);
}
