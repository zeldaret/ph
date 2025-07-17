#include "DTCM/UnkStruct_027e05f8.hpp"

#pragma section dtcm begin
UnkStruct_027e05f8 data_027e05f8;
#pragma section dtcm end

#define REG_027fffa8 (*(volatile u16 *) 0x027fffa8)

THUMB UnkStruct_027e05f8::UnkStruct_027e05f8() :
    mUnk_0(0),
    mUnk_2(0),
    mUnk_4(0) {}

ARM void UnkStruct_027e05f8::func_02037458(u16 param1) {
    mUnk_2 = param1 & (param1 ^ mUnk_0);
    mUnk_4 = mUnk_0 & (param1 ^ mUnk_0);
    mUnk_0 = param1;
}

ARM void UnkStruct_027e05f8::func_02037480() {
    mUnk_2 = 0;
    mUnk_4 = 0;
}

ARM bool UnkStruct_027e05f8::func_02037490() {
    return ((REG_027fffa8 & 0x8000) >> 15) == 1;
}
