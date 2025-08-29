#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorTypeId.hpp"

class ActorType_UnkClass {
public:
    /* 0 */ u32 mUnk_0;
    /* 4 */ s32 mUnk_4;
    /* 8 */

    ActorType_UnkClass(u32 unk_00, u32 unk_04) :
        mUnk_0(unk_00),
        mUnk_4(unk_04) {}
};

typedef Actor *(*ActorCreateFunc)();

struct ActorType {
    /* 00 */ ActorTypeId id;
    /* 04 */ ActorCreateFunc create;
    /* 08 */ unk32 (*unk_08)();
    /* 0c */ unk32 unk_0c;
    /* 10 */ ActorType *next;
    /* 14 */

    inline ActorType() {}
    ActorType(ActorTypeId id, ActorCreateFunc create, unk32 (*unk_08)());
    ~ActorType();
    unk32 func_0203e7c8();
    void Register();
    void Unregister();
    static ActorType *Find(ActorTypeId id);
};

struct ActorTypeList {
    /* 0 */ ActorType *head;
    /* 4 */ ActorType *tail;
    /* 8 */
};
