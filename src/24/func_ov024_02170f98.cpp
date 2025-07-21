#include "global.h"
#include "types.h"

#include "System/Random.hpp"

ARM void func_ov024_02170f98(s32 param1) {
    *(unk32 *) (param1 + 0x330)                   = 0x3c + gRandom.Next(0, 1);
    *(unk32 *) (*(s32 *) (param1 + 0x22c) + 0x10) = 0;
}
