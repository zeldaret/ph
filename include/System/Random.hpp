#pragma once

#include "global.h"
#include "types.h"

struct Random {
    /* 00 */ u64 mRandomValue;
    /* 08 */ u64 mFactor;
    /* 10 */ u64 mAddend;
    /* 18 */

    /**
     * Generate a random number from 0 (inclusive) to `max` (exclusive)
     */
    inline u32 Next(u32 min, u32 max) {
        mRandomValue = mAddend + mFactor * mRandomValue;
        u64 result   = (mRandomValue >> 32) * (max - min);
        return (result >> 32) + min;
    }

    /**
     * Generate a random number from 0 (inclusive) to `max` (exclusive)
     */
    inline u32 Next(u32 max) {
        mRandomValue = mAddend + mFactor * mRandomValue;
        if (max == 0) {
            return mRandomValue >> 32;
        }
        return ((mRandomValue >> 32) * max) >> 32;
    }
};

extern Random gRandom;
