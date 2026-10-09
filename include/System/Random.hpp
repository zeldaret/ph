#pragma once

#include "global.h"
#include "types.h"

// NOTE: This struct is a compatibility bridge.
//
// The canonical implementation (see Spirit Tracks) uses `u16 mRandomValue[4]`
// with `GetRandomValue()` / `SetRandomValue()` accessors, plus `Setup()` and
// `UpdateRandomValue()` helpers. That version is cleaner and matches the
// original binary layout exactly.
//
// However, migrating to it right now would break several call sites that
// access `mRandomValue` directly as a u64 (e.g. UnkStruct_02037750.cpp) and
// others that rely on `Next(min, max)`. Until those are migrated, this struct
// keeps the existing u64 layout and API, and only adds `Next32()` for new code
// that needs the [0, factor) variant matching the original codegen.
//
// TODO: migrate all call sites to the ST-style Random struct and drop the
// u64 `mRandomValue` / `Next()` compatibility layer.
struct Random {
    /* 00 */ u64 mRandomValue;
    /* 08 */ u64 mFactor;
    /* 10 */ u64 mAddend;
    /* 18 */

    /**
     * Generate a random number from `min` (inclusive) to `max` (exclusive).
     */
    inline u32 Next(u32 min, u32 max) {
        mRandomValue = mAddend + mFactor * mRandomValue;
        u64 result   = (mRandomValue >> 32) * (max - min);
        return (result >> 32) + min;
    }

    /**
     * Generate a random number in [0, factor) without adding a base offset.
     *
     * Equivalent to Next(0, factor), but the caller adds the base offset.
     * This matches the codegen of func_ov014_02147fcc in
     * ActorGenericCharacter.cpp, where `+ start` happens outside the LCG.
     */
    inline u32 Next32(u32 factor) {
        mRandomValue = mAddend + mFactor * mRandomValue;
        if (factor == 0) {
            return (u32)(mRandomValue >> 32);
        }
        return (u32)(((mRandomValue >> 32) * factor) >> 32);
    }
};

extern Random gRandom;
