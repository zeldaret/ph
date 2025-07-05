#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

class GameMode : public SysObject {
public:
    /* 000 (vtable) */
    /* 004 */ unk32 mUnk_000;
    /* 008 */

    /* 00 */ virtual ~GameMode();
    /* 08 */ virtual unk32 vfunc_08(unk32 param1) = 0;
    /* 0c */ virtual void vfunc_0c(u16 *param1);
    /* 10 */ virtual void vfunc_10(u16 *param1);
    /* 14 */ virtual void vfunc_14(u16 *param1);
    /* 18 */ virtual void vfunc_18();
    /* 1c */

    inline GameMode() {}
    inline GameMode(unk32 param1) :
        mUnk_000(param1) {}

    void func_0202c0b8();
};
