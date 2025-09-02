#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"

class ActorBomb_Unk1 : public UnkStruct_ov000_020beba8 {
public:
    /* 00 (base) */
    /* 0c */ unk32 mUnk_0c;
    /* 10 */

    /* 00 */ virtual ~ActorBomb_Unk1() override;
    /* 08 */ virtual void vfunc_0c(unk16 *param1) override;
    /* 0c */ virtual bool vfunc_10(s32 *param1) override;
    /* 18 */
};

class ActorBomb_Unk2 {
    /* 0 */ unk32 mUnk_0;
    /* 4 */ unk32 mUnk_4;
    /* 8 */ unk32 mUnk_8;
    /* c */

    ActorBomb_Unk2();
    ~ActorBomb_Unk2();
};

class ActorBomb : public Actor {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 158 */ unk8 mUnk_158[0x7c];
    /* 1c4 */ unk32 mUnk_1c4;
    /* 1c8 */ void *mUnk_1c8;
    /* 1cc */ unk8 mUnk_1cc[0x24];
    /* 230 */ unk32 mUnk_230;
    /* 234 */ unk32 mUnk_234;
    /* 238 */ unk8 mUnk_238[0x4];
    /* 23c */ unk32 mUnk_23c;
    /* 240 */ unk32 mUnk_240;
    /* 244 */ unk32 mUnk_244;
    /* 248 */ unk8 mUnk_248[0xc];
    /* 254 */ unk32 mUnk_254;
    /* 258 */ unk32 mUnk_258;
    /* 25c */ unk32 mUnk_25c;
    /* 260 */ unk32 mUnk_260;
    /* 264 */ unk8 mUnk_264[0x8];
    /* 26c */

    /* 00 */ virtual ~ActorBomb() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* 54 */ virtual void vfunc_54() override;
    /* 5c */ virtual bool Drop(Vec3p *vel) override;
    /* b4 */

    static ActorBomb *Create();
    ActorBomb();
    bool func_ov014_02122bb8(s32 param1);
    bool func_ov014_02122e48(unk32 *param1);
    bool func_ov014_02122e7c();
    bool func_ov014_02122e98();
    bool func_ov014_02122eb8();
    bool func_ov014_02122ed4();
};
