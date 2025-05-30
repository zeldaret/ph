#pragma once

#include "Actor/Actor.hpp"

class ActorActionObject : public Actor {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 158 */

    /* 00 */ virtual ~ActorActionObject() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* b4 */

    static ActorActionObject *Create();
    ActorActionObject();
};
