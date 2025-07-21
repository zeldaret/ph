#ifndef PH_TYPES_H
#define PH_TYPES_H

#include <stddef.h>

typedef unsigned long long u64;
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

typedef long long s64;
typedef int s32;
typedef short s16;
typedef char s8;

typedef s8 unk8;
typedef s16 unk16;
typedef s32 unk32;
typedef s64 unk64;

#ifndef __cplusplus
typedef s32 bool;
#endif

#define CEIL_DIV(a, b) (((a) + (b) - 1) / (b))
#define UNK_PTR unk32 *

#endif
