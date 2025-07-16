#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"
#include "Unknown/UnkStruct_02035064.hpp"

class ActorEventIcon : public Actor {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 158 */ u32 mUnk_158;
    /* 15c */ u32 mUnk_15c;
    /* 160 */ UnkStruct_02035064 mUnk_160;
    /* 1e8 */

    /* 00 */ virtual ~ActorEventIcon() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* 1c */ virtual void vfunc_1c(u16 *param1) override;
    /* b4 */

    static ActorEventIcon *Create();
    ActorEventIcon();
    void func_ov000_02090648(u32 param1);
    bool func_ov000_02090774(u32 param1);
};
