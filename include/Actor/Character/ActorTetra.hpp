#pragma once

#include "global.h"
#include "types.h"

#include "Actor/ActorType.hpp"
#include "Actor/Character/ActorCharacter.hpp"

struct func_ov031_02181610_param1 {
    /* 000 */ unk32 mUnk_00;
    /* 004 */ PAD(0x4, 0x2c);
    /* 02c */ unk32 mUnk_2c;
    /* 030 */ unk32 mUnk_30;
    /* 034 */ PAD(0x34, 0x38);
    /* 038 */ unk32 mUnk_38;
};

struct ActorTetra_4cc {
    /* 000 */ PAD(0x000, 0x9c0);
    /* 9c0 */
};

struct ActorTetra_4b0 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 *mUnk_08;
    /* 0c */ ActorTetra_4cc *mUnk_0c;
    /* 10 */ ActorTetra_4cc *mUnk_10;
    /* 14 */ unk32 mUnk_14; // always sizeof(ActorTetra_4cc)?
    /* 18 */ unk32 mUnk_18;
    /* 1c */ // PAD(0x1c, 0x38);

    inline ActorTetra_4b0(ActorTetra_4cc *unk_0c, ActorTetra_4cc *unk_10, unk32 size) :
        mUnk_00(0),
        mUnk_04(0),
        mUnk_0c(unk_0c),
        mUnk_10(unk_10),
        mUnk_14(size) {}

    void func_ov031_02181610(func_ov031_02181610_param1 *param1, unk32 param2, unk32 param3, unk32 param4, u16 param5);
    void func_ov031_02181798();
};

class ActorTetra : public ActorGenericCharacter {
public:
    static ActorType gType;

    /* 0000 (base) */
    /* 049c */ PAD(0x49c, 0x4b0);
    /* 04b0 */ ActorTetra_4b0 mUnk_4b0;
    /* 04cc */ ActorTetra_4cc mUnk_4cc;
    /* 0e8c */ ActorTetra_4cc mUnk_e8c;
    /* 184c */

    /* 00 */ // virtual ~ActorTetra() override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* c4 */ virtual void vfunc_c4() override;
    /* f4 */ virtual bool vfunc_f4() override;
    /* f8 */ virtual void vfunc_f8() override {}
    /* fc */

    static ActorTetra *Create();
    inline ActorTetra() :
        mUnk_4b0(&mUnk_4cc, &mUnk_e8c, sizeof(mUnk_4cc)) {}
};

struct func_ov031_02181610_stack {
    /* 0x00 */ ActorTetra_4b0 *sp0;                           /* inferred */
    /* 0x04 */ s32 sp4;                             /* inferred */
    /* 0x08 */ u32 sp8;                             /* inferred */
    /* 0x0c */ char padC[0x24];
};                                                  /* size = 0x30 */
