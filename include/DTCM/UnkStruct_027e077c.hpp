#pragma once

#include "global.h"
#include "types.h"

struct UnkStruct_027e077c {
public:
    /* 0 */ unk32 mUnk_0;
    /* 4 */ unk32 mUnk_4;
    /* 8 */ unk16 mUnk_8;
    /* a */ unk8 mUnk_a;
    /* b */

    void Init(unk32 param1);
    bool func_0202e740(unk32 param1);

    void func_ov009_02116364();

    inline volatile unk32 GetUnk0() const {
        return mUnk_0;
    }

    inline unk32 GetUnk4() const {
        return mUnk_4;
    }
};

extern UnkStruct_027e077c data_027e077c;
extern volatile u8 data_02056be4[];
