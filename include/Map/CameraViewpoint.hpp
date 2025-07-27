#pragma once

#include "global.h"
#include "types.h"

#include "nds/math.h"

#include "System/SysNew.hpp"

class CameraViewpoint : public SysObject {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ u8 mUnk_04;
    /* 08 */ Vec3p mPos;
    /* 14 */ unk16 mUnk_14;
    /* 16 */ unk16 mUnk_16;
    /* 18 */ u16 mUnk_18[2];
    /* 1c */

    inline CameraViewpoint() :
        mUnk_00(0),
        mUnk_04(0xff),
        mUnk_14(0),
        mUnk_16(0) {}
};
