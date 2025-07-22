#ifndef PH_TYPES_H
#define PH_TYPES_H

#include <stddef.h>

typedef unsigned long long u64;
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;
typedef volatile u64 vu64;
typedef volatile u32 vu32;
typedef volatile u16 vu16;
typedef volatile u8 vu8;

typedef long long s64;
typedef int s32;
typedef short s16;
typedef char s8;
typedef volatile s64 vs64;
typedef volatile s32 vs32;
typedef volatile s16 vs16;
typedef volatile s8 vs8;

typedef s8 unk8;
typedef s16 unk16;
typedef s32 unk32;
typedef s64 unk64;
typedef volatile unk8 vunk8;
typedef volatile unk16 vunk16;
typedef volatile unk32 vunk32;
typedef volatile unk64 vunk64;

#ifndef __cplusplus
typedef s32 bool;
#endif

#define CEIL_DIV(a, b) (((a) + (b) - 1) / (b))
#define UNK_PTR unk32 *

#endif
