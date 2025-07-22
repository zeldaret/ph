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
    /* 0f */ // unk8 mUnk_0f;
    /* 10 */ s32 mUnk_10;
    /* 14 */

    inline Entrance() :
        mId(0xff),
        mUnk_10(0) {}

    inline Entrance(const Entrance &other) :
        mPos(other.mPos),
        mAngle(other.mAngle),
        mId(other.mId),
        mUnk_10(other.mUnk_10) {}
};
