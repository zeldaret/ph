#pragma once

#include "global.h"
#include "types.h"

#include "DTCM/UnkStruct_027e0fd4.hpp"
#include "Player/EquipBombchu.hpp"
#include "Player/EquipShield.hpp"
#include "Player/LinkStateCutscene.hpp"
#include "Player/LinkStateFollow.hpp"
#include "Player/PlayerLinkBase.hpp"

class PlayerLink : public PlayerLinkBase {
public:
    /* 00 (base) */
    /* 70 */ s32 mUnk_70;
    /* 74 */ unk8 mUnk_74[0x4];
    /* 78 */ unk32 mUnk_78;
    /* 7c */ unk32 mUnk_7c;
    /* 80 */ char mUnk_80;
    /* 81 */ unk8 mUnk_81[0x3];
    /* 84 */

    /* 00 */ virtual s32 GetMaxHealth() override;
    /* 04 */ virtual bool vfunc_04() override;
    /* 1c */ virtual void Init() override;
    /* 24 */ virtual void UpdatePos() override;
    /* 2c */ virtual void vfunc_2c(s32 param1, unk8 param2) override;
    /* 40 */ virtual void AddHealth(s16 amount) override;
    /* 44 */ virtual void vfunc_44() override;
    /* 48 */ virtual void vfunc_48() override;
    /* 4c */ virtual void vfunc_4c() override;
    /* 50 */ virtual ~PlayerLink() override;
    /* 68 */ virtual void vfunc_68() override;
    /* 6c */ virtual void vfunc_6c() override;
    /* 74 */ virtual void vfunc_74() override;
    /* 78 */ virtual unk32 vfunc_78() override;
    /* 7c */ virtual void vfunc_7c(PlayerCharacter character, bool param2) override;
    /* 80 */ virtual void SetUnk_5e() override;
    /* 84 */ virtual void ResetUnk_5e() override;
    /* 88 */ virtual void OnDeath(bool param1);
    /* 8c */

    static PlayerLink *Create();
    static PlayerLink *GetInstance();
    void func_ov014_0213eef0(s32 param1);
    static LinkStateCutscene *GetLinkStateCutscene();
    PlayerLink();
    void func_ov014_0213f37c();
    static LinkStateItem *GetLinkStateItem();
    static void func_ov014_0213f734(unk32 *param1, UnkStruct_027e0fd4 *param2);
    void func_ov014_0213f740();
    void func_ov014_0213f97c();

    unk32 func_ov023_02177e7c();
    unk32 func_ov023_02177e84();
    void func_ov023_02177e90();
    bool func_ov023_02178058();
    static LinkStateFollow *GetLinkStateFollow();
    void func_ov023_02178174();
    static EquipBombchu *GetEquipBombchu();
    static EquipShield *GetEquipShield();
    void GiveControlToLink();
    void func_ov023_02178630();
};
