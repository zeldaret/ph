#pragma once

#include "types.h"

#include "Player/EquipItem.hpp"

class EquipShield : public EquipItem {
public:
    /* 00 (base) */
    /* 09 */ unk8 mUnk_09[5];
    /* 0e */ unk16 mUnk_0e;
    /* 10 */ void *mUnk_10;
    /* 14 */ void *mUnk_14;
    /* 18 */ unk8 mUnk_18[4];
    /* 1c */ void *mUnk_1c;
    /* 20 */ void *mUnk_20;
    /* 24 */ void *mUnk_24;
    /* 28 */ void *mUnk_28;
    /* 2c */

public:
    EquipShield();

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~EquipShield() override;
    /* 0c */ virtual ItemFlag GetId() const override;
    /* 10 */ virtual void vfunc_10() override;
    /* 14 */ virtual bool IsUsable(unk32 param1) const override;
    /* 18 */ virtual void vfunc_18() override;
    /* 1c */ virtual void vfunc_1c();
    /* 30 */ virtual void vfunc_30() override;
    /* 38 */ virtual void vfunc_38(unk32 param1) override;
    /* 3c */ virtual bool GetHitbox(Cylinder *hitbox) const;
    /* 50 */

    void func_ov000_020c070c(u32 param1, Vec3p *param2, unk32 param3);
};
