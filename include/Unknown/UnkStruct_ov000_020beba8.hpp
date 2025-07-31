#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

#include <nds/math.h>

struct UnkStruct_ov000_020beba8_08 {
    /* 00 */ u16 mUnk_00;
    /* 04 */ Vec3p mUnk_04;
    /* 10 */
};

class UnkStruct_ov000_020beba8 : public SysObject {
public:
    /* 0 (vtable) */
    /* 4 */ unk32 mUnk_4;
    /* 8 */ unk32 mUnk_8;
    /* c */

    /* 00 */ virtual ~UnkStruct_ov000_020beba8();
    /* 08 */ virtual bool vfunc_08(UnkStruct_ov000_020beba8_08 *param1);
    /* 0c */ virtual void vfunc_0c(unk16 *param1);
    /* 10 */ virtual bool vfunc_10(s32 *param1);
    /* 14 */ virtual bool vfunc_14(u16 *param1, s32 param2);
    /* 18 */ virtual void vfunc_18(s32 *param1);
    /* 1c */

    UnkStruct_ov000_020beba8(unk32 param1);

    bool func_ov014_02124034(UnkStruct_ov000_020beba8_08 *param1);
};
