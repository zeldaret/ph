#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorManager.hpp"
#include "Player/LinkStateBase.hpp"
#include "Player/LinkStateRoll.hpp"
#include "Unknown/UnkStruct_02035064.hpp"

class LinkStateInteract : public LinkStateBase {
public:
    /* 00 (base) */
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ ActorRef mGrabRef;
    /* 18 */ Vec3p mThrowOffset;
    /* 24 */ UnkStruct_02035064 mUnk_24;
    /* ac */ unk32 mUnk_ac;
    /* b0 */ bool mUnk_b0;
    /* b1 */ bool mUnk_b1;
    /* b2 */ bool mUnk_b2;
    /* b3 */ unk8 mUnk_b3;
    /* b4 */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~LinkStateInteract() override;
    /* 0c */ virtual LinkStateId GetId() override;
    /* 10 */ virtual void LoadBhio() override;
    /* 14 */ virtual void OnStateEnter() override;
    /* 18 */ virtual void OnStateLeave(s32 param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 20 */ virtual bool vfunc_20(s32 param1) override;
    /* 24 */ virtual bool vfunc_24(s32 param1) override;
    /* 2c */ virtual void vfunc_2c(u16 *param1) override;
    /* 34 */ virtual bool vfunc_34(Vec3p *param1) override;
    /* 44 */

    s32 GetGrabActorId();
    bool func_ov00_020aa818();
    void func_ov00_020aa844(Actor *param1);
    static LinkStateRoll *GetLinkStateRoll();
    void SetGrabActorVelocity(Vec3p *velocity);
    void SetBombVelocity(Vec3p *velocity);
    void func_ov00_020ab6c8();
    unk32 func_ov00_020ab770(Vec3p *param1);
    unk32 func_ov00_020ab7bc(Vec3p *param1, Actor *actor);
    void SetNormalizedThrowOffset(Vec3p *target);
    void SetThrowOffset(Vec3p *target);
    void func_ov00_020ab934(Vec3p *target);
    void func_ov00_020ab97c(Vec3p *target);
    void func_ov00_020ab9b8(s32 param1, bool param2);
    bool Grab(ActorRef *ref);
    void func_ov00_020abba0(ActorRef *ref);
    void func_ov00_020abbdc(ActorRef *ref); // duplicate of func_ov00_020abba0
    void func_ov00_020abc18(ActorRef *ref);
    bool func_ov00_020abc40();
    bool func_ov00_020abc78(ActorRef *ref);

    LinkStateInteract(PlayerLinkBase *link);

    void func_ov005_0210a690();
    bool func_ov005_0210a714();
    void func_ov005_0210a774();
    void func_ov005_0210a7d4();
    void func_ov005_0210ab1c();
    void func_ov005_0210ad88();
    void func_ov005_0210b2a4();
    void func_ov005_0210b4f4(Vec3p *vec, Actor *actor);
};
