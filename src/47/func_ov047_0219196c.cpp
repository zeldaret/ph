#include "global.h"
#include "types.h"

#include "System/Random.hpp"

ARM void func_ov047_0219196c(s32 param1) {
    *(s16 *) (param1 + 0x334) = gRandom.Next(0, 61) + 0x3c;
}
