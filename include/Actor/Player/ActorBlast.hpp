#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"

class ActorBlast : public Actor {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 158 */ unk8 mUnk_158[0x4];
    /* 15c */ s32 mUnk_15c;
    /* 160 */ s32 mUnk_160;
    /* 164 */

    /* 00 */ virtual ~ActorBlast() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* b4 */

    static ActorBlast *Create();
    ActorBlast();
};

class ActorBlast_Unk1 : public UnkStruct_ov000_020beba8 {
    /* 00 (base) */
    /* 0c */ ActorBlast *mBlast;
    /* 10 */ Vec3p mUnk_10;
    /* 1c */ unk8 mUnk_1c[0x18];
    /* 34 */ unk16 mUnk_34;
    /* 36 */ unk16 mUnk_36;
    /* 38 */ unk16 mUnk_38;
    /* 3a */ unk16 mUnk_3a;
    /* 3c */ unk16 mUnk_3c;
    /* 3e */ unk8 mUnk_3e[0x20];
    /* 5e */ unk8 mUnk_5e;
    /* 5f */ unk8 mUnk_5f;
    /* 60 */ unk8 mUnk_60;
    /* 61 */ unk8 mUnk_61;
    /* 62 */ unk8 mUnk_62[0x6];
    /* 68 */ unk8 mUnk_68;
    /* 69 */ unk8 mUnk_69;
    /* 6a */ unk8 mUnk_6a;
    /* 6b */ unk8 mUnk_6b;
    /* 6c */ unk8 mUnk_6c;
    /* 6d */ unk8 mUnk_6d;
    /* 6e */ unk8 mUnk_6e[0x2];
    /* 70 */

    /* 00 */ virtual ~ActorBlast_Unk1();
    /* 10 */ virtual void vfunc_10(s32 *param1);
    /* 18 */
};
