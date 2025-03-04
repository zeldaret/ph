#pragma once

#include "global.h"
#include "types.h"

#include "Item/Item.hpp"
#include "Player/EquipBombchu.hpp"
#include "Player/LinkStateBase.hpp"
#include "Player/LinkStateMove.hpp"

class LinkStateItem : public LinkStateBase {
public:
    /* 00 (base) */
    /* 0c */ void *mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ ItemFlag mEquipId;
    /* 18 */ ItemFlag mNextEquip;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk16 mUnk_20;
    /* 22 */ unk8 mUnk_22[2];
    /* 24 */ s8 mUnk_24;
    /* 25 */ u8 mUnk_25[7];
    /* 2c */ unk16 mUnk_2c;
    /* 2e */ unk8 mUnk_2e[2];
    /* 30 */ void *mUnk_30;
    /* 34 */ unk32 mUnk_34;
    /* 38 */ Vec3p mUnk_38;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ void *mUnk_48;
    /* 4c */ unk32 mUnk_4c;
    /* 50 */ unk32 mUnk_50[2];
    /* 58 */ unk32 mUnk_58;
    /* 5c */ s32 mUnk_5c;
    /* 60 */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~LinkStateItem() override;
    /* 0c */ virtual LinkStateId GetId() override;
    /* 14 */ virtual void OnStateEnter() override;
    /* 18 */ virtual void OnStateLeave(s32 param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 20 */ virtual bool vfunc_20(s32 param1) override;
    /* 24 */ virtual bool vfunc_24(s32 param1) override;
    /* 28 */ virtual bool vfunc_28() override;
    /* 44 */

    s32 IsHammerEquipped(); // returns 0 if hammer is equipped, otherwise -1
    static EquipBombchu *GetEquipBombchu();
    static LinkStateMove *GetLinkStateMove();
    bool func_ov00_020abf70();

    LinkStateItem(PlayerLinkBase *link);

    void func_ov005_02105850();
    void func_ov005_02105c28();
    void func_ov005_02105d94();
    void func_ov005_02105dac();
    void func_ov005_02106644();
    void func_ov005_02106700(Vec3p *param1, unk8 *param2);
    void func_ov005_02106740(s32 *param1, s32 param2);
    bool func_ov005_02106894(s32 param1, s32 param2);
    void func_ov005_02106980(unk32 param, s32 param2, s32 *param3);
    bool func_ov005_02106a50();
    bool func_ov005_02106bbc(Vec3p *param1, unk32 param2, u32 param3);

    bool func_ov054_02198efc(s32 param1, unk32 param2, u32 param3);
    bool func_ov054_021992c8(unk32 param1, unk32 param2, u32 param3);
    void StopUsingScoop();

    void func_ov054_02198eec();
    void func_ov055_02198f78();
    void StopUsingBomb(s32 param1);
    void func_ov055_02199020();
    void func_ov055_021993b8();
    void func_ov055_02199654();

    void func_ov056_021990c0();
    void func_ov056_0219911c();
    bool func_ov056_021992f8();

    void func_ov057_02199e64();
    void func_ov057_02199edc();
    void func_ov057_0219a208();
    void StopUsingRope();
    bool func_ov057_0219a364();

    void func_ov058_0219a454();
    void func_ov058_0219a47c();

    void func_ov059_02198ffc();
    void func_ov059_0219907c();
    void func_ov059_021990a4();
    void StopUsingHammer();
};
