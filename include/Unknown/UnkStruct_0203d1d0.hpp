#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

class UnkStruct_0203d1d0_base : public SysObject {
public:
    /* 0x00 (vtable) */
    /* 0x04 */ unk32 *mUnk_04;
    /* 0x08 */

    /* 00 */ virtual ~UnkStruct_0203d1d0_base();
    /* 08 */ virtual unk32 vfunc_08(void *) = 0;
    /* 0c */ virtual void vfunc_0c();
    /* 10 */

    UnkStruct_0203d1d0_base();
    unk32 *func_0203d1b4(void);
};

class UnkStruct_0203d1d0 : public UnkStruct_0203d1d0_base {
public:
    /* 00 */ virtual ~UnkStruct_0203d1d0();
    /* 08 */ virtual unk32 vfunc_08(void *) override;

    UnkStruct_0203d1d0();
};

class UnkStruct_0203d254 : public UnkStruct_0203d1d0_base {
public:
    /* 00 */ virtual ~UnkStruct_0203d254();
    /* 08 */ virtual unk32 vfunc_08(void *) override;
    /* 0c */ virtual void vfunc_0c() override;

    UnkStruct_0203d254();
};
