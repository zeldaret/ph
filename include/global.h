#ifndef PH_GLOBAL_H
#define PH_GLOBAL_H

#define GET_FLAG(arr, pos) (((1 << ((pos) & 0x1f)) & (arr)[((u32) (pos)) >> 5]) != 0)
#define SET_FLAG(arr, pos) ((arr)[((u32) (pos)) >> 5] |= 1 << ((pos) & 0x1f))
#define RESET_FLAG(arr, pos) ((arr)[((u32) (pos)) >> 5] &= ~(1 << ((pos) & 0x1f)))

#define ARRAY_LEN_U(arr) (u32)((sizeof(arr) / sizeof(*arr)))
#define ARRAY_LEN(arr) (s32)(sizeof(arr) / sizeof(*arr))

// Prevent the IDE from reporting errors that the compiler/linker won't report
#ifdef __INTELLISENSE__
#endif

#define ARM _Pragma("thumb off")
#define THUMB _Pragma("thumb on")

// `override` was added in C++11 before the DS, so we only use the keyword to indicate overriden functions
#define override

// Puts variables in the DTCM module by using #pragma section dtcm begin|end
#pragma define_section dtcm ".dtcm" \
                            ".dtcm"

// Define .sbss variables by using #pragma section sbss begin|end
#pragma define_section sbss ".data" \
                            ".sbss"

#endif
