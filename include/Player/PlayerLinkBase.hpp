#pragma once

#include "global.h"
#include "lib/files.hpp"
#include "nds/math.h"
#include "types.h"

#include "Actor/ActorManager.hpp"
#include "Item/ItemManager.hpp"
#include "Player/Bhio.hpp"
#include "Player/PlayerBase.hpp"
#include "Player/PlayerControlData.hpp"

typedef s32 PlayerCharacter;
enum PlayerCharacter_ {
    PlayerCharacter_Link     = 0,
    PlayerCharacter_Gongoron = 1,
    PlayerCharacter_COUNT    = 2,
};

class PlayerLinkBase : public PlayerBase {
public:
    /* 00 (base) */
    /* 14 */ Vec3p mPos;
    /* 20 */ Vec3p mVel;
    /* 2c */ unk8 mTilePos[2][PlayerCharacter_COUNT];
    /* 30 */ unk32 mAltitude;
    /* 34 */ unk8 mUnk_34[4];
    /* 38 */ s32 mUnk_38;
    /* 3c */ ActorRef mGrabActor;
    /* 44 */ s32 mUnk_44;
    /* 48 */ unk16 mUnk_48;
    /* 4a */ unk16 mUnk_4a;
    /* 4c */ unk32 mUnk_4c;
    /* 50 */ unk32 mUnk_50;
    /* 54 */ s16 mUnk_54;
    /* 56 */ unk16 mUnk_56;
    /* 58 */ unk16 mUnk_58;
    /* 5a */ s16 mUnk_5a;
    /* 5c */ unk8 mUnk_5c[3];
    /* 5f */ bool mUnk_5f;
    /* 60 */ FileEntryFlag *mMotionParams;
    /* 64 */ Bhio *mBhio_0;
    /* 68 */ Bhio *mBhio_1;
    /* 6c */ Bhio *mBhio_2;
    /* 70 */

    /* 00 */ virtual s32 GetMaxHealth() override;
    /* 08 */ virtual ItemFlag GetEquipId() override;
    /* 0c */ virtual bool CanMove() override;
    /* 10 */ virtual void vfunc_10(Cylinder *param1) override;
    /* 14 */ virtual void vfunc_14(Cylinder *param1) override;
    /* 18 */ virtual bool vfunc_18(s32 param1) override;
    /* 1c */ virtual void Init() override;
    /* 20 */ virtual void vfunc_20() override;
    /* 24 */ virtual void UpdatePos() override;
    /* 28 */ virtual void vfunc_28(s32 param1) override;
    /* 2c */ virtual void vfunc_2c(s32 param1, unk8 param2) override;
    /* 30 */ virtual bool vfunc_30(s32 param1, Vec3p *param2, s32 param3) override;
    /* 34 */ virtual bool Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5) override;
    /* 38 */ virtual bool TeleportToEntrance(unk32 entranceId, bool param2) override;
    /* 3c */ virtual bool TeleportToLastEntrance(bool param1) override;
    /* 50 */ virtual ~PlayerLinkBase() override;
    /* 58 */ virtual bool vfunc_58();
    /* 5c */ virtual bool vfunc_5c();
    /* 60 */ virtual bool vfunc_60();
    /* 64 */ virtual void vfunc_64();
    /* 68 */ virtual void vfunc_68();
    /* 6c */ virtual void vfunc_6c();
    /* 70 */ virtual void vfunc_70(s32 param1, Vec3p *param2, unk32 param3);
    /* 74 */ virtual void vfunc_74();
    /* 78 */ virtual unk32 vfunc_78();
    /* 7c */ virtual void vfunc_7c();
    /* 80 */ virtual void SetUnk_5e();
    /* 84 */ virtual void ResetUnk_5e();
    /* 88 */

    void UnequipPotion();
    void ChangeLinkState(s32 index);
    void SetLinkSubState(s32 index, unk32 substate);
    PlayerControlData *GetPlayerControlData(s32 index);
    void GetDistanceTo(Vec3p *vec, q20 *yDist, q20 *xzDist);
    bool func_ov000_020bb68c(Vec3p *target);
    bool func_ov000_020bb6d4();
    void func_ov000_020bb810(Vec3p *target, unk32 param2);
    void func_ov000_020bb8c4(Vec3p *param1);
    void TurnTo(Vec3p *target);
    void func_ov000_020bb9b0();
    void func_ov000_020bb9c8();
    void func_ov000_020bb9e4();
    bool func_ov000_020bba00();
    bool func_ov000_020bba14();
    bool func_ov000_020bba28();
    void func_ov000_020bba48();
    bool func_ov000_020bbabc();
    bool func_ov000_020bbb18();
    bool func_ov000_020bbb64();
    bool func_ov000_020bbb78();
    void func_ov000_020bbbb8();
    bool func_ov000_020bbbd0(s32 param1, s32 param2);
    bool func_ov000_020bbc68(s32 param1);
    bool func_ov000_020bbd40();
    bool func_ov000_020bbd60();
    bool func_ov000_020bbd80(s32 param1);
    unk32 func_ov000_020bbe94();
    void func_ov000_020bc088();
    ItemManager *GetItemManager();
    void func_ov000_020bc1c8(unk32 param1, unk32 param2, unk32 param3);
    bool func_ov000_020bc210();
    void SetVelocity(Vec3p *velocity, bool setAngle);
    void func_ov000_020bc280(unk16 param1);
    unk32 func_ov000_020bc2d4(unk32 param1);
    unk32 func_ov000_020bc320(unk32 param1, unk32 param2, unk32 param3);
    void func_ov000_020bc398(unk32 param1, s32 param2);
    PlayerCharacter GetCurrentCharacter();
    s32 GetHealth(PlayerCharacter character);
    void AddHealth(s16 amount, PlayerCharacter character);
    void func_ov000_020bc4ac();
    s32 GetStateId();
    s32 func_ov000_020bc520(Vec3p *param1);
    unk32 Grab();
    void func_ov000_020bc7e0(unk32 param1);
    s32 GetGrabActorId();
    s32 func_ov000_020bc808();
    unk32 func_ov000_020bc84c();
    void func_ov000_020bc854(Vec3p *param1);
    void UpdateTilePos(Vec3p *param1, PlayerCharacter character);
    void func_ov000_020bc90c(unk32 *param1, s32 param2);
    bool func_ov000_020bc960(unk32 param1, unk32 param2, unk32 param3);
    bool GongoronCollidesWith(Cylinder *hitbox);
    bool func_ov000_020bcc78();
    void func_ov000_020bccc8();
    void func_ov000_020bcdb8();
    void func_ov000_020bcdec(Vec3p *param1, unk16 param2);
    bool PlayItemCutscene(ItemId cutsceneItemId);
    bool func_ov000_020bcec8();
    bool func_ov000_020bcefc();
    bool func_ov000_020bcf2c();
    bool func_ov000_020bcf50(Vec3p *param1, unk32 param2);
    bool func_ov000_020bcf84(Vec3p *param1, Vec3p *param2);
    bool func_ov000_020bcfb8(s32 param1);
    bool func_ov000_020bd030(unk32 param1);
    bool func_ov000_020bd070(unk32 param1);
    bool func_ov000_020bd0a8();
    bool func_ov000_020bd0bc(Vec3p *param1, s32 param2);
    bool func_ov000_020bd268();
    bool func_ov000_020bd2bc();
    bool func_ov000_020bd304();
    bool func_ov000_020bd318();
    void SetPlayerCharacter(PlayerCharacter character);
    bool func_ov000_020bd3b0(unk32 param1, unk32 param2, unk32 param3, unk16 param4);
    void SetPosition(Vec3p *position);
    void SetAngle(s16 *angle);
    bool func_ov000_020bd510(s32 param1, unk32 *param2);

    PlayerLinkBase();

    void UpdatePos(unk32 param1);
    bool func_ov005_0210eba4();
};

extern PlayerLinkBase *gPlayerLink;
