#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

#include "Render/FadeControl.hpp"

class CutsceneHandler {
public:
    /* 00 */ u32 mFlags1;
    /* 04 */ u32 mFlags2;
    /* 08 */ bool mCutsceneActive;
    /* 09 */ bool mSkipping;
    /* 0a */ bool mUnk_0a;
    /* 0b */ unk8 mUnk_0b;
    /* 0c */ unk32 mCutsceneTimer1;
    /* 10 */ unk32 mCutsceneTimer2;
    /* 14 */ unk32 mCutsceneEnd;
    /* 18 */ unk32 mFreeze;
    /* 1c */ u32 mUnk_1c;
    /* 20 */ unk8 mUnk_20;
    /* 21 */ char mUnk_21;
    /* 22 */ unk8 mUnk_22;
    /* 23 */ unk8 mUnk_23;
    /* 24 */ unk16 mUnk_24;
    /* 26 */ unk8 mUnk_26[0x2];
    /* 28 */ s32 mUnk_28;
    /* 2c */ s32 mUnk_2c;
    /* 30 */ unk32 mUnk_30;
    /* 34 */ unk32 mUnk_34;
    /* 38 */ unk32 mUnk_38;
    /* 3c */ unk32 mUnk_3c;
    /* 40 */ unk32 mUnk_40;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ unk16 mUnk_48;
    /* 4a */ unk8 mUnk_4a[0x2];
    /* 4c */ Mat4x3p mUnk_4c;
    /* 7c */ FadeControl *mFadeControl;
    /* 80 */ s32 **mUnk_80;
    /* 84 */ s32 *mUnk_84;
    /* 88 */ s32 mUnk_88;
    /* 8c */

    void SetFlags(s32 value) {
        mFlags1 &= value;
        mFlags2 &= value;
    }

    void func_ov000_020980f8();
    s32 func_ov000_020980fc(unk32 param1, unk32 param2, void **param3);
    bool func_ov000_02098114();
    bool SkipCutscene(s32 param1);
    unk32 func_ov000_020981b8(unk32 *param1);
    void func_ov000_020985c0();
    void func_ov000_020985c4();
    void func_ov000_02098618(s32 param1, unk32 param2, void **param3);
    void func_ov000_02098658();
    bool func_ov000_02098694(unk32 param1);
    bool func_ov000_020987c4(unk32 param1, unk16 param2, unk32 param3, unk32 param4, bool param5);
    bool func_ov000_02098834();
    bool func_ov000_02098860();
    unk32 func_ov000_02098890(unk32 param1, s32 param2);
    static unk32 func_ov000_02098920(unk32 param1);

    CutsceneHandler();
    ~CutsceneHandler();
    void func_ov004_0210f3e4(s32 param1);
    void func_ov004_0210f46c();
};
