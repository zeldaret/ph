#pragma once

#include "global.h"
#include "types.h"

#include "Item/Item.hpp"
#include "Physics/Cylinder.hpp"
#include "System/SysNew.hpp"

class EquipItem : public SysObject {
public:
    /* 0 (vtable) */
    /* 4 */ s16 mUnk_04;
    /* 6 */ u16 mUnk_06;
    /* 8 */ bool mInUse;
    /* 9 */

    EquipItem();

    /* 00 */ virtual void vfunc_00();
    /* 04 */ virtual ~EquipItem();
    /* 0c */ virtual ItemFlag GetId() const = 0;
    /* 10 */ virtual void vfunc_10();
    /* 14 */ virtual bool IsUsable(unk32 param1) const;
    /* 18 */ virtual void vfunc_18() = 0;
    /* 1c */ virtual void vfunc_1c();
    /* 20 */ virtual void GiveAmmo(u32 amount);
    /* 24 */ virtual bool IsInUse() const;
    /* 28 */ virtual bool UpdateInUse(unk32 param1);
    /* 2c */ virtual u32 vfunc_2c();
    /* 30 */ virtual void vfunc_30() = 0;
    /* 34 */ virtual void vfunc_34(unk16 *param1);
    /* 38 */ virtual void vfunc_38(unk32 param1) = 0;
    /* 3c */ virtual bool GetHitbox(Cylinder *hitbox) const;
    /* 40 */ virtual unk32 vfunc_40() const;
    /* 44 */ virtual unk32 vfunc_44(unk32 param1) const;
    /* 48 */ virtual unk32 vfunc_48(unk32 param1) const;
    /* 4c */ virtual s32 vfunc_4c() const;
    /* 50 */

    Vec3p *GetPlayerPos();
    void func_ov000_020be99c(Vec3p *param1);
    void func_ov000_020be9e4(Vec3p param3, s16 param4);
    s16 GetAmmo() const;
};
