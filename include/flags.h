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
