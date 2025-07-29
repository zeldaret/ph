#pragma once

#include "global.h"
#include "types.h"

#include "nds/math.h"

#include "Physics/AABB.hpp"
#include "System/SysNew.hpp"

struct TriggerParams {
    /* 0 */ s8 id;
    /* 1 */ unk8 zMin;
    /* 2 */ unk8 zMax;
    /* 3 */ unk8 xMin;
    /* 4 */ unk8 xMax;
    /* 5 */ bool isAABB_Unk1;
    /* 6 */ s8 mUnk_6;
    /* 7 */ s8 mUnk_7;
    /* 8 */ s8 mUnk_8;
    /* 9 */ bool isAABB_Unk2;
    /* a */ bool isSphere;
    /* b */
};

class TriggerBase : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ unk8 mUnk_04;
    /* 05 */ u8 mId;
    /* 06 */ unk8 mUnk_06[2];
    /* 08 */ u32 mUnk_08;
    /* 0c */ u32 mUnk_0c;
    /* 10 */ u32 mUnk_10;
    /* 14 */

    /* 00 */ virtual ~TriggerBase();
    /* 08 */ virtual void
        vfunc_08(/*unk32 *param_1, unk32 param_2, unk32 param_3, unk32 *param_4*/); // See MapBase::Trigger_vfunc_08
    /* 0c */ virtual bool vfunc_0c(bool param_2);
    /* 10 */ virtual unk32 vfunc_10();
    /* 14 */ virtual bool Overlaps(Vec3p *point);
    /* 18 */ virtual bool GetBoundingBox(AABB *bbox);
    /* 1c */

    TriggerBase(TriggerParams *params);
    TriggerBase(u8 id, u32 param2, u32 param3, u32 param4);
};
