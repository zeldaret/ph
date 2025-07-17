#pragma once

#include "types.h"

/**
 * Flags value format:
 *     - 0x001F: 0000 0000 0001 1111 -> the shift value to read or write the flag's bit
 *     - 0xFFE0: 1111 1111 1110 0000 -> index of the value in the array
 *
 * `FLAG` is a macro that allows you to get the final value from the index and the slot number.
 */

#define GET_FLAG(arr, pos) (((arr)[((u32) (pos)) >> 5] & (1 << ((pos) & 0x1f))) != 0)
#define SET_FLAG(arr, pos) ((arr)[((u32) (pos)) >> 5] |= 1 << ((pos) & 0x1f))
#define UNSET_FLAG(arr, pos) ((arr)[((u32) (pos)) >> 5] &= ~(1 << ((pos) & 0x1f)))
#define FLAG(index, slot) (((index) << 5) | ((slot) & 0x1F))

typedef u32 FlagIndex;
enum FlagIndex_ {
    FlagIndex_0  = 0,
    FlagIndex_1  = 1,
    FlagIndex_2  = 2,
    FlagIndex_3  = 3,
    FlagIndex_4  = 4,
    FlagIndex_5  = 5,
    FlagIndex_6  = 6,
    FlagIndex_7  = 7,
    FlagIndex_8  = 8,
    FlagIndex_9  = 9,
    FlagIndex_10 = 10,
    FlagIndex_11 = 11,
    FlagIndex_12 = 12,
    FlagIndex_13 = 13,
    FlagIndex_14 = 14,
    FlagIndex_15 = 15,
    FlagIndex_Max,
};

typedef u32 FlagSlot;
enum FlagSlot_ {
    FlagSlot_0  = 0,
    FlagSlot_1  = 1,
    FlagSlot_2  = 2,
    FlagSlot_3  = 3,
    FlagSlot_4  = 4,
    FlagSlot_5  = 5,
    FlagSlot_6  = 6,
    FlagSlot_7  = 7,
    FlagSlot_8  = 8,
    FlagSlot_9  = 9,
    FlagSlot_10 = 10,
    FlagSlot_11 = 11,
    FlagSlot_12 = 12,
    FlagSlot_13 = 13,
    FlagSlot_14 = 14,
    FlagSlot_15 = 15,
    FlagSlot_16 = 16,
    FlagSlot_17 = 17,
    FlagSlot_18 = 18,
    FlagSlot_19 = 19,
    FlagSlot_20 = 20,
    FlagSlot_21 = 21,
    FlagSlot_22 = 22,
    FlagSlot_23 = 23,
    FlagSlot_24 = 24,
    FlagSlot_25 = 25,
    FlagSlot_26 = 26,
    FlagSlot_27 = 27,
    FlagSlot_28 = 28,
    FlagSlot_29 = 29,
    FlagSlot_30 = 30,
    FlagSlot_31 = 31,
};
