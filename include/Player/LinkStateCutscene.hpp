#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Item/Item.hpp"
#include "Player/LinkStateBase.hpp"
#include "Unknown/UnkStruct_02037750.hpp"

class UnkStruct_ov004_0210abb8 : public UnkStruct_02037750 {
public:
    /* 00 (base) */
    /* 20 */ unk32 mUnk_20;
    /* 24 */

    /* 00 */ virtual ~UnkStruct_ov004_0210abb8() override;
    /* 08 */ virtual void vfunc_08(unk32 param1) override;
    /* 24 */ virtual bool vfunc_24(unk32 param1) override;
    /* 2c */ virtual unk32 vfunc_2c(s32 param1) override;
    /* 34 */
};

class LinkStateCutscene : public LinkStateBase {
public:
    /* 00 (base) */
    /* 0c */ unk8 mUnk_08[0x24]; // non-documented struct
    /* 30 */ void *mUnk_30;
    /* 34 */ s16 mUnk_34;
    /* 36 */ unk8 mUnk_36[2];
    /* 38 */ s32 mUnk_38;
    /* 3c */ s16 mUnk_3c;
    /* 3e */ unk16 mUnk_3e;
    /* 40 */ Vec3p mUnk_40;
    /* 4c */ Vec3p mUnk_4c;
    /* 58 */ unk32 mUnk_58;
    /* 5c */ unk32 mUnk_5c;
    /* 60 */ unk32 mUnk_60;
    /* 64 */ unk32 mUnk_64;
    /* 68 */ unk32 mUnk_68;
    /* 6c */ unk16 mUnk_6c;
    /* 6e */ unk8 mUnk_6e[2];
    /* 70 */ unk32 mUnk_70;
    /* 74 */ ItemId mLastItemId;
    /* 78 */ s16 mAngle;
    /* 7a */ unk16 mUnk_7a;
    /* 7c */ unk16 mUnk_7c;
    /* 7e */ unk16 mUnk_7e;
    /* 80 */ unk16 mUnk_80;
    /* 82 */ unk8 mUnk_82[2];
    /* 84 */ void *mUnk_84;
    /* 88 */ unk32 mUnk_88[4];
    /* 98 */ unk32 mUnk_98;
    /* 9c */ void *mUnk_9c;
    /* a0 */ unk32 mUnk_a0;
    /* a4 */ bool mUnk_a4;
    /* a5 */ s8 mUnk_a5;
    /* a6 */ bool mUnk_a6;
    /* a7 */ unk8 mUnk_a7[5];
    /* ac */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~LinkStateCutscene() override;
    /* 0c */ virtual LinkStateId GetId() override;
    /* 10 */ virtual void CreateDebugHierarchy() override;
    /* 14 */ virtual void OnStateEnter() override;
    /* 18 */ virtual void OnStateLeave(s32 param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 24 */ virtual bool vfunc_24(s32 param1) override;
    /* 28 */ virtual bool vfunc_28() override;
    /* 30 */ virtual void vfunc_30(unk32 param1) override;
    /* 38 */ virtual bool vfunc_38() override;
    /* 40 */ virtual bool vfunc_40() override;
    /* 44 */

    bool func_ov000_020b1e98(s32 param1);
    bool func_ov000_020b1eb8();
    bool func_ov000_020b1eec();
    void StopVerticalVelocity();
    void func_ov000_020b2568();
    void func_ov000_020b2598();
    void func_ov000_020b2ba4();
    void func_ov000_020b2ce4(unk32 param1, s16 param2);
    void func_ov000_020b2cf0();
    void func_ov000_020b2d60();
    bool func_ov000_020b2d8c();
    void func_ov000_020b2e84();
    void func_ov000_020b2f48(unk32 param1, unk32 param2);
    void func_ov000_020b2f70(unk32 param1, void *param2, unk32 *param3);
    void ChangeToMoveState();
    bool func_ov000_020b2fac();
    void func_ov000_020b3024(Vec3p *param1, unk32 param2);
    void func_ov000_020b305c(Vec3p *param1, Vec3p *param2);
    void func_ov000_020b309c(Vec3p *param1);
    void func_ov000_020b30e4(u32 param1, unk32 param2, unk32 param3);
    void func_ov000_020b3278(s32 param1, s32 *param2);
    void func_ov000_020b35d8(s32 param1, s32 param2);
    void func_ov000_020b38dc(u32 param1, u32 param2);

    LinkStateCutscene(PlayerLinkBase *link);

    void func_ov005_021089c0();
    void func_ov005_021089f4();
    void func_ov005_02108d08();
    void func_ov005_02108e08();
    void func_ov005_02108e8c();
    void func_ov005_02108f38();
    void func_ov005_02108f98(unk32 param1, unk32 param2, unk32 param3);
    void func_ov005_021092bc();
    void func_ov005_0210952c();
    void func_ov005_02109588();
    void func_ov005_0210960c();
    void func_ov005_02109650();
    bool PlayItemCutscene(unk32 itemId);
    bool func_ov005_02109768();
    void func_ov005_021097b0(s32 param1);
    void func_ov005_021099dc();
    bool func_ov005_02109cd0(s32 *param1, s32 param2, unk32 param3);
    void func_ov005_02109e84();
    void func_ov005_02109f2c();
    void func_ov005_02109f88();
    void func_ov005_0210a018();
    void func_ov005_0210a06c();
    bool func_ov005_0210a0c0(unk16 param1);
};
