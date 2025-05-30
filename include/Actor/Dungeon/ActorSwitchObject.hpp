#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"

class ActorSwitchObject : public Actor {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 158 */ unk32 mUnk_158;
    /* 15c */ unk32 mUnk_15c;
    /* 160 */ unk32 mUnk_160;
    /* 164 */ unk32 mUnk_164;
    /* 168 */ unk32 mUnk_168;
    /* 16c */ u32 mUnk_16c;
    /* 170 */ ActorRef mUnk_170[5];
    /* 198 */

    /* 00 */ virtual ~ActorSwitchObject() override;
    /* 08 */ virtual bool Init() override;
    /* 0c */ virtual void vfunc_0c() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* b4 */

    static ActorSwitchObject *Create();
    bool func_ov000_0208fc10(s32 param1);
    void func_ov000_0208fc7c();
    bool func_ov000_0208fcb4();
    void func_ov000_0208fef8();
    void func_ov000_0209032c();
};
