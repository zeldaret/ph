#pragma once

#include "types.h"

#include "Player/EquipItem.hpp"

// how long players should wait until the hammer is charged (aka bigger and more powerful)
#define HAMMER_CHARGE_TIMER 40

//! TODO: change "state" to "flags"? see `vfunc_2c`
typedef enum EquipHammerState {
    /* 0x00000 */ EQUIP_HAMMER_STATE_IDLE     = (0 << 16),
    /* 0x10000 */ EQUIP_HAMMER_STATE_CHARGING = (1 << 16),
    /* 0x20000 */ EQUIP_HAMMER_STATE_CHARGED  = (2 << 16),
} EquipHammerState;

class EquipHammer : public EquipItem {
private:
    /* 00 (base) */
    /* 09 */ unk8 mUnk_09[3];
    /* 0c */ Vec3p mUnk_0c; // hammer's position when it hits a surface? not updated if the hammer can't touch a surface
    /* 18 */ EquipHammerState mState;
    /* 1c */ bool mIsHeld; // holding the input from the touchscreen
    /* 1d */ bool mIsReleased; // released the input from the touchscreen
    /* 1e */ unk8 mUnk_1e[2]; // unused?
    /* 20 */ s32 mChargeTimer; // charging timer to make it bigger, set to 40 frames by default
    /* 24 */ unk32 mUnk_24; // timer that prevents the charge?
    /* 28 */ unk32 mUnk_28;
    /* 2c */

public:
    /* 04 */ virtual ~EquipHammer() override;
    /* 0c */ virtual ItemFlag GetId() const override;
    /* 10 */ virtual void vfunc_10() override;
    /* 14 */ virtual bool IsUsable(unk32 param1) const override;
    /* 18 */ virtual void vfunc_18() override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 2c */ virtual u32 vfunc_2c() override;
    /* 30 */ virtual void vfunc_30() override;
    /* 38 */ virtual void vfunc_38(unk32 param1) override;
    /* 3c */ virtual bool GetHitbox(Cylinder *hitbox) const override;
    /* 4c */ virtual s32 vfunc_4c() const override;
    /* 50 */

    EquipHammer();

    void func_ov059_02198e90();
    bool func_ov059_02198ebc();
    bool func_ov059_02198ed4();
    void func_ov059_02198f10(Vec3p *vec, unk32 param2, s32 param3);
    void func_ov059_02198fa8(unk32 param1);
    bool IsHammerCharged();

    inline s32 GetState(void) {
        return mState;
    }

    inline bool IsReleased(void) {
        return mIsReleased;
    }

    inline unk32 GetChargeTimer(void) {
        return mChargeTimer;
    }
};

class LinkStateItem;

extern LinkStateItem *GetLinkStateItem();
extern EquipHammer *GetEquipHammer();
