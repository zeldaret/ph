#pragma once

#include "global.h"
#include "types.h"

#include "nds/math.h"

#include "System/SysNew.hpp"

class Entrance : public SysObject {
public:
    /* 00 */ Vec3p mPos;
    /* 0c */ unk16 mAngle;
    /* 0e */ u8 mId;
    /* 0f */ u8 mUnk_0f;
    /* 10 */ u8 mUnk_10;
    /* 10 */ u8 mUnk_11;
    /* 14 */
};
