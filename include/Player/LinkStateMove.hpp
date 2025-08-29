#pragma once

#include "global.h"
#include "types.h"

#include "Player/LinkStateBase.hpp"

class LinkStateMove : public LinkStateBase {
public:
    static unk32 data_ov000_020e56f0;

    /* 00 (base) */
    /* 0c */ s32 mUnk_0c;
    /* 10 */ unk16 mUnk_10;
    /* 12 */ unk16 mUnk_12;
    /* 14 */ bool mUnk_14;
    /* 15 */ bool mUnk_15;
    /* 16 */ bool mUnk_16;
    /* 17 */ bool mUnk_17;
    /* 18 */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~LinkStateMove() override;
    /* 0c */ virtual LinkStateId GetId() override;
    /* 10 */ virtual void LoadBhio() override;
    /* 14 */ virtual void OnStateEnter() override;
    /* 18 */ virtual void OnStateLeave(s32 param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 24 */ virtual bool vfunc_24(s32 param1) override;
    /* 3c */ virtual bool vfunc_3c() override;
    /* 44 */

    bool func_ov00_020a8f2c();
    bool func_ov00_020a8f4c();

    LinkStateMove(PlayerLinkBase *link);

    void func_ov005_021113d0();
};
