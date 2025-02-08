#pragma once

#include "global.h"
#include "types.h"

#include "Item/Item.hpp"
#include "Physics/Cylinder.hpp"
#include "Player/EquipShield.hpp"
#include "Player/EquipSword.hpp"
#include "Render/FadeControl.hpp"
#include "System/SysNew.hpp"

class PlayerBase : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ FadeControl *mFadeControl;
    /* 08 */ s16 mInvincibleFrames;
    /* 0a */ s16 mHealth;
    /* 0c */ unk8 mUnk_0c[2];
    /* 0e */ s16 mEntranceId;
    /* 10 */ bool mUpdatePos;
    /* 11 */ bool mVisible;
    /* 12 */ bool mInvincible;
    /* 13 */

    /* 00 */ virtual s32 GetMaxHealth() = 0;
    /* 04 */ virtual bool vfunc_04();
    /* 08 */ virtual ItemFlag GetEquipId();
    /* 0c */ virtual bool CanMove();
    /* 10 */ virtual void vfunc_10(Cylinder *param1)                      = 0;
    /* 14 */ virtual void vfunc_14(Cylinder *param1)                      = 0;
    /* 18 */ virtual void vfunc_18()                                      = 0;
    /* 1c */ virtual void Init()                                          = 0;
    /* 20 */ virtual void vfunc_20()                                      = 0;
    /* 24 */ virtual void UpdatePos()                                     = 0;
    /* 28 */ virtual void vfunc_28(s32 param1)                            = 0;
    /* 2c */ virtual void vfunc_2c(s32 param1, unk8 param2)               = 0;
    /* 30 */ virtual bool vfunc_30(s32 param1, Vec3p *param2, s32 param3) = 0;
    /* 34 */ virtual bool Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5);
    /* 38 */ virtual bool TeleportToEntrance(unk32 entranceId, bool param2);
    /* 3c */ virtual bool TeleportToLastEntrance(bool param1);
    /* 40 */ virtual void AddHealth(s16 amount);
    /* 44 */ virtual void vfunc_44() = 0;
    /* 48 */ virtual void vfunc_48() = 0;
    /* 4c */ virtual void vfunc_4c() = 0;
    /* 50 */ virtual ~PlayerBase();
    /* 58 */

    void SetUpdatePos(bool updatePos);
    void SetVisible(bool visible);
    EquipSword *GetEquipSword();
    EquipShield *GetEquipShield();
    void LookAt(Vec3p *target);
    bool func_ov00_020a7c00(s32 param1);
    bool CollidesWith(Cylinder *cylinder);
    bool func_ov00_020a7c60(Vec3p *param1, Vec3p *param2, s32 param3);
    bool EquipCollidesWith(Cylinder *cylinder, ItemFlag equipId);
    s32 EquipItem_vfunc_2c();
    void SetHealth(s16 health);

    PlayerBase();
};

extern PlayerBase *gPlayer;
extern Vec3p *gPlayerPos;
extern Vec3p gPlayerVel;
extern s16 gPlayerAngle;
