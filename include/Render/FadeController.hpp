#pragma once

#include "global.h"
#include "types.h"

#include "Render/FadeControl.hpp"

#define FADE_CONTROL_COUNT 16

struct FadeControlEntry {
    /* 0 */ FadeControl *mControl;
    /* 4 */ unk32 mUnk_4;
    /* 8 */ unk32 mUnk_8;
    /* c */
};

struct FadeController {
    /* 00 */ s32 mLength;
    /* 04 */ FadeControl (*mList)[FADE_CONTROL_COUNT];
    /* 44 */ FadeControl *mCurrent;
    /* 48 */

    bool Has(FadeControl *control);
    static bool Contains(FadeControlEntry *needle, s32 length, FadeControl **haystack);
    bool AddIfAbsent(FadeControl *control, unk32 param2, unk32 param3);
    static bool Add(FadeControlEntry *entry, s32 maxLength, s32 *length, FadeControl **list, bool allowDuplicates);
    void RemoveFadeControl(FadeControl *control);
    static bool Remove(FadeControlEntry *entry, s32 *length, FadeControl **list);
    bool func_0202d77c(FadeControl *control);
    bool func_0202d7ac();
    void ProcessFade(s32 param1);
    void SetScreenBrightness(s32 param1);
};

extern FadeController gFadeController;
