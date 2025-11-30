#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Player/LinkStateBase.hpp"
#include "Render/ModelRender.hpp"

class LinkStateDamage : public LinkStateBase {
public:
    static LinkStateBase_UnkStruct1 data_ov000_020e5acc;
    static LinkStateBase_UnkStruct1 data_ov000_020e5adc;
    static unk32 data_ov000_020e5aec;
    static LinkStateBase_UnkStruct1 data_ov000_020e5af0;
    static LinkStateBase_UnkStruct1 data_ov000_020e5b00;
    static LinkStateBase_UnkStruct1 data_ov000_020e5b10;
    static LinkStateBase_UnkStruct1 data_ov000_020e5b20;
    static LinkStateBase_UnkStruct1 data_ov000_020e5b30;
    static LinkStateBase_UnkStruct1 data_ov000_020e5b40;
    static LinkStateBase_UnkStruct1 data_ov000_020e5b50;

    /* 00 (base) */
    /* 0c */ Vec3p mUnk_0c;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk8 mUnk_20[2];
    /* 22 */ unk16 mUnk_22;
    /* 24 */ unk8 mUnk_24[8];
    /* 2c */ q20 mUnk_2c; // maybe link's "y" coordinate when entering this state
    /* 30 */ bool mUnk_30;
    /* 31 */ unk8 mUnk_31;
    /* 32 */ unk16 mUnk_32;
    /* 34 */ unk32 mUnk_34[2];
    /* 3c */ ModelRender mUnk_3c;
    /* 98 */ UnkStruct_ov000_020c0c08 *mUnk_98;
    /* 9c */ void *mUnk_9c;
    /* a0 */ unk32 mUnk_a0[3];
    /* ac */ unk32 mUnk_ac;
    /* b0 */ unk8 mUnk_b0[4];
    /* b4 */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~LinkStateDamage() override;
    /* 0c */ virtual LinkStateId GetId() override;
    /* 10 */ virtual void LoadBhio() override;
    /* 14 */ virtual void OnStateEnter() override;
    /* 18 */ virtual void OnStateLeave(s32 param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 20 */ virtual bool vfunc_20(s32 param1) override;
    /* 24 */ virtual bool vfunc_24(s32 param1) override;
    /* 30 */ virtual void vfunc_30(unk32 param1) override;
    /* 40 */ virtual bool vfunc_40() override;
    /* 44 */

    void func_ov00_020ac9e4(unk32 param1);
    void SetLinkFrozenMaterial();

    void func_ov00_020acb6c(Vec3p *param1, unk32 param2);
    void Knockback(Vec3p *knockbackVec, unk32 param2);

    void func_ov00_020acfe8(bool param1);

    LinkStateDamage(PlayerLinkBase *link);
};
