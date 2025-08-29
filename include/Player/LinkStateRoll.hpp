#pragma once

#include "global.h"
#include "types.h"

#include "Player/LinkStateBase.hpp"

class LinkStateRoll : public LinkStateBase {
public:
    /* 00 (base) */
    /* 0c */ unk16 mUnk_0c;
    /* 0e */ unk8 mUnk_0a[2];
    /* 10 */ unk16 mUnk_10;
    /* 12 */ s16 mUnk_12;
    /* 14 */ s16 mUnk_14;
    /* 16 */ u16 mUnk_16;
    /* 18 */ unk8 mUnk_18[2];
    /* 1a */ unk16 mUnk_1a;
    /* 1c */ unk8 mUnk_1c[4];
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk8 mUnk_24[2];
    /* 26 */ unk16 mUnk_26;
    /* 28 */ unk8 mUnk_28[4];
    /* 2c */ unk32 mUnk_2c[5];
    /* 40 */ unk32 mUnk_40;
    /* 44 */ ActorRef mUnk_44[0x8];
    /* 84 */ void *mUnk_84;
    /* 88 */ unk32 mUnk_88;
    /* 8c */ unk8 mUnk_8c[0xc];
    /* 98 */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~LinkStateRoll() override;
    /* 0c */ virtual LinkStateId GetId() override;
    /* 10 */ virtual void LoadBhio() override;
    /* 14 */ virtual void OnStateEnter() override;
    /* 18 */ virtual void OnStateLeave(s32 param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 20 */ virtual bool vfunc_20(s32 param1) override;
    /* 24 */ virtual bool vfunc_24(s32 param1) override;
    /* 44 */

    void func_ov00_020aee58(s16 param1, u16 param2);
    void func_ov00_020aee84();
    bool func_ov00_020aeeac();

    LinkStateRoll(PlayerLinkBase *link);

    s32 func_ov005_02106c80(u32 param1);
    void func_ov005_02106cd0();
    void func_ov005_02107208(u32 param1);
    void func_ov005_02107214();
    void func_ov005_021073b8();
    void func_ov005_021075bc();
    void func_ov005_02107880();
    void func_ov005_02107954(unk32 param1, unk32 param2, unk32 param3);
    void func_ov005_02107b74(unk32 *param1, unk16 param2, unk16 param3);
    bool func_ov005_02107bd4();
    bool func_ov005_02107c8c();
    bool func_ov005_02107d74();
    unk32 func_ov005_02107e80(u32 param1, unk32 *param2, unk16 param3, unk8 *param4);
    void func_ov005_02107fc0();
    bool func_ov005_02108094();
    void func_ov005_02108188();
    void func_ov005_021081a8();
};
