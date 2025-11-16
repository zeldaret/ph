#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

class Exit : public SysObject {
public:
    /* 00 */ unk32 mDestCourse;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk16 mUnk_10;
    /* 12 */ u8 mDestMap;
    /* 13 */ u8 mDestEntrance;
    /* 14 */ u8 mUnk_14;
    /* 15 */ u8 mUnk_15;
    /* 16 */ unk8 mUnk_16;
    /* 17 */ unk8 mUnk_17;
    /* 18 */
};
