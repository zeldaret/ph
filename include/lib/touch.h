#pragma once

#include "global.h"
#include "types.h"

typedef struct TouchStateFlags {
    u16 touchX;
    u16 touchY;
    u16 touch;
    u16 flags;
} TouchStateFlags;

typedef struct TouchState {
    bool touch;
    s32 touchX;
    s32 touchY;
} TouchState;

#ifdef __cplusplus
extern "C" {
#endif
void WaitForTouchUpdate(u16 param1);
bool GetTouchStateFlags(TouchStateFlags *pState);
#ifdef __cplusplus
}
#endif
