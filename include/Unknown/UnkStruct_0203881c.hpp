#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_02032e7c.hpp"

class UnkStruct_02038aa0;
typedef bool (*UnknownCallback)(class UnkStruct_020397f8 *);

class UnkStruct_0203881c : public UnkStruct_02032e7c {
public:
    /* 00 (base) */
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ UnknownCallback mUnk_1c;
    /* 20 */ class UnkStruct_020397f8 *mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */

    /* 0 */ virtual void vfunc_00();
    /* 0 */ virtual void vfunc_04();
    /* 8 */

    UnkStruct_0203881c();
    void func_02038858(unk32 param1);
    void func_02038888();
    void func_02038950(UnkStruct_02038aa0 *param1, s32 param2);
    void func_02038a80(s32 param1);
};
