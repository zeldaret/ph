#include "DTCM/UnkStruct_027e0d38.hpp"
#include "Game/Game.hpp"
#include "Player/LinkStateDamage.hpp"
#include "Player/LinkStateFollow.hpp"
#include "Player/LinkStateInteract.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/LinkStateMove.hpp"
#include "Player/LinkStateRoll.hpp"
#include "Player/PlayerControl.hpp"
#include "Save/AdventureFlags.hpp"
#include "Unknown/UnkStruct_02037750.hpp"

class UnkFilterActor : public FilterActorBase {
public:
    /* 00 (base) */
    /* 04 */ Actor *mActor;
    /* 08 */ q20 mUnk_08;
    /* 0c */ Vec3p mPos;
    /* 18 */ s16 mAngle;
    /* 1a */

    /* 0 */ virtual bool Filter(Actor *actor) override;
    /* 4 */
};

struct UnkStruct_ov005_021123ac {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */
};

ARM void LinkStateMove::func_ov005_021113d0() {
    mUnk_12 = 10;
}

static q4 data_ov005_02112be4          = FLOAT_TO_Q20(16 / 15.0);
static q20 data_ov005_02112be8         = FLOAT_TO_Q20(1 / 64.0);
static q20 data_ov005_02112bec         = FLOAT_TO_Q20(1 / 3.0);
static const Vec3p data_ov005_021123ac = {
    FLOAT_TO_Q20(0.0122),
    FLOAT_TO_Q20(1.0),
    FLOAT_TO_Q20(0.0),
};
static Vec3p data_ov005_02112bf0 = {
    FLOAT_TO_Q20(0.3),
    FLOAT_TO_Q20(0.25),
    FLOAT_TO_Q20(0.01),
};
static const volatile q20 data_ov005_021123b8 = FLOAT_TO_Q20(15.0);

extern LinkStateFollow *GetLinkStateFollow();
extern "C" bool Lerp(s32 *pValue, s32 dest, s32 factor, unk32 param4, u32 step);
extern unk32 data_027e0ffc;
extern "C" void func_ov000_020ceacc(unk32 *param1, unk32 param2, Vec3p *param3, unk32 param4);
ARM void LinkStateMove::vfunc_1c() {
    Actor *grabActor = this->GetGrabActor();
    Vec3p sp4C;
    s32 temp_r7 = GetLinkStateFollow()->func_ov00_020a9180(&sp4C);
    s32 temp_r0 = UnkStruct_02037750::GetLinkStateInteract()->func_ov00_020ab770(&sp4C);
    bool var_r9;
    if ((temp_r0 == 0) && (temp_r7 == 0)) {
        var_r9 = false;
    } else {
        var_r9 = true;
    }
    LinkStateDamage *damage = (LinkStateDamage *) GetLinkState(LinkStateId_Damage);
    if (damage->vfunc_20(var_r9) != 0) {
        this->ChangeLinkState(LinkStateId_Damage);
        return;
    }
    if ((gAdventureFlags->func_ov00_02097738() == 0) && (data_027e0d38->mUnk_14 != 1)) {
        LinkStateInteract *interact = (LinkStateInteract *) GetLinkState(LinkStateId_Interact);
        if (interact->vfunc_20(var_r9) != 0) {
            this->ChangeLinkState(LinkStateId_Interact);
            return;
        }
        LinkStateFollow *follow = (LinkStateFollow *) GetLinkState(LinkStateId_Follow);
        if (follow->vfunc_20(var_r9) != 0) {
            this->ChangeLinkState(LinkStateId_Follow);
            return;
        }
        LinkStateRoll *roll = (LinkStateRoll *) GetLinkState(LinkStateId_Roll);
        if (roll->vfunc_20(var_r9) != 0) {
            this->ChangeLinkState(LinkStateId_Roll);
            return;
        }
        LinkStateItem *item = (LinkStateItem *) GetLinkState(LinkStateId_Item);
        if (item->vfunc_20(var_r9) != 0) {
            this->ChangeLinkState(LinkStateId_Item);
            return;
        }
    }
    if ((temp_r0 == 2) || (temp_r7 == 8)) {
        this->UpdateSwordShieldInUse();
    } else {
        if ((temp_r0 == 3) || (temp_r0 == 4) || (temp_r0 == 5) || (temp_r7 == 3) || (temp_r7 == 4) || (temp_r7 == 5) ||
            (temp_r7 == 9) || ((temp_r7 - 0xD) <= 1U)) {
            this->EquipItem_vfunc_28();
        }
    }
    if (gGame.mModeId != GameModeId_Battle) {
        s32 temp_r7_2 = gPlayerControl->func_ov00_020b0418();
        if ((this->func_ov00_020a8f2c() == 0) && (temp_r7_2 > 0)) {
            mUnk_0c = temp_r7_2;
        }
        if (mUnk_0c > 0) {

            q4 temp_r8  = data_ov005_02112be4;
            s16 temp_r1 = *this->GetPlayerAngle() + this->Get_PlayerControlData_Unk32();
            this->TurnTo(temp_r1, temp_r1, temp_r8);
            s32 temp_r1_2 = mUnk_0c;
            if (temp_r7_2 > temp_r1_2) {
                temp_r1_2 = temp_r7_2 - temp_r1_2;
                Lerp(&mUnk_0c, temp_r7_2 + temp_r1_2, data_ov005_02112bec, MUL_Q20(data_ov005_02112be8, data_ov005_02112bec),
                     0x7FFFFFFF);
                if (mUnk_0c > FLOAT_TO_Q20(1.0)) {
                    mUnk_0c = FLOAT_TO_Q20(1.0);
                }
            } else {
                Lerp(&mUnk_0c, temp_r7_2, data_ov000_020e56f0, MUL_Q20(data_ov005_02112be8, data_ov000_020e56f0), 0x7FFFFFFF);
            }
        }
    }
    s32 var_r4;
    if (mUnk_16 != 1) {
        if (var_r9 != 0) {
            Vec3p sp40 = {0, 0, 0};
            sp40.x     = sp4C.x - this->GetPlayerPos()->x;
            sp40.z     = sp4C.z - this->GetPlayerPos()->z;
            if (Vec3p_Length(&sp40) > FLOAT_TO_Q20(0.2)) {
                var_r4 = this->func_ov005_0210f808(FLOAT_TO_Q20(1.0), &sp4C, grabActor != NULL);
            } else {
                gPlayerControl->StopFollowing();
            }
        } else {
            s32 temp_r1_3 = gPlayerControl->func_ov00_020b034c();
            var_r4        = this->func_ov005_0210f808(temp_r1_3, NULL, grabActor != NULL);
            if (gAdventureFlags->func_ov00_02097750() == 0) {
                UnkFilterActor filter;
                filter.mActor  = NULL;
                filter.mUnk_08 = FLOAT_TO_Q20(4.0);
                Vec3p pos      = *this->GetPlayerPos();
                filter.mPos    = pos;
                filter.mAngle  = *this->GetPlayerAngle();
                if (gActorManager->FilterActors(&filter, NULL) > 0) {
                    q20 temp_r1_4 = FLOAT_TO_Q20(4.0) - filter.mUnk_08;
                    Vec3p spC     = filter.mActor->mPos;
                    spC.y += filter.mActor->mYOffset;
                    q20 var_r2 = MUL_Q20(temp_r1_4, FLOAT_TO_Q20(0.25)) + FLOAT_TO_Q20(0.1);
                    if (var_r2 >= FLOAT_TO_Q20(1.0)) {
                        var_r2 = FLOAT_TO_Q20(1.0);
                    }
                    this->func_ov00_020a81fc(&spC, var_r2);
                    this->func_ov005_021113d0();
                }
            }
            if (mUnk_12 > 0) {
                this->func_ov005_021107fc();
                mUnk_12 -= 1;
            } else if ((this->Get_PlayerLinkBase_Unk5e() != 0) && (var_r4 == 0)) {
                this->func_ov00_020a8294(0, FLOAT_TO_Q20(0.2));
                this->func_ov00_020a827c(0, FLOAT_TO_Q20(0.2));
            }
            if ((grabActor != NULL) && (grabActor->mType == ActorTypeId_Cucco)) {
                if (this->func_ov00_020a8b80() != 0) {
                    mUnk_10 = 0x19;
                } else if (mUnk_10 > 0) {
                    *(unk16 *) ((u32) this->func_ov00_020a8d40() + 0xa8) = 0x4CD;
                    if (mUnk_10 == 0x19) {
                        func_ov000_020ceacc(&data_027e0ffc, 0x23D, this->GetPlayerPos(), 0);
                    }
                    mUnk_10 -= 1;
                } else {
                    LinkStateInteract *interact = UnkStruct_02037750::GetLinkStateInteract();
                    interact->SetGrabActorVelocity(this->GetPlayerVel());
                }
            }
        }
    }
    if (this->GetGrabActor() == NULL) {
        if (var_r4 <= data_ov005_02112bf0.x) {
            this->func_ov005_021112ec();
        }
        if (mUnk_15) {
            if (!mUnk_16) {
                this->func_ov00_020a8a4c(&data_ov005_021123ac, 0);
                this->func_ov00_020a8ad0(0);
                mUnk_16 = true;
            } else if (mUnk_0c > 0) {
                q20 temp_r4 = data_ov005_021123b8;
                if (this->func_ov00_020a8d6c() >= temp_r4) {
                    this->func_ov00_020a8ad0(this->func_ov00_020a8d6c() - (temp_r4 - FLOAT_TO_Q20(7.0)));
                }
            } else {
                mUnk_15 = false;
                mUnk_16 = false;
            }
        }
        ActorRef sp4;
        sp4.Reset();
        this->PlayerLinkBase_vfunc_58(0, &sp4);
        return;
    }
    this->PlayerLinkBase_vfunc_58(1, this->GetGrabActorRef());
}

ARM bool LinkStateMove::vfunc_3c() {
    if ((gPlayerControl->GetFollowActor() == NULL) && (gPlayerControl->mFollowObject == NULL) &&
        (this->Get_PlayerControlData_Unk120() != 2) && (this->Get_PlayerControlData_Unk120() != 3)) {
        return true;
    }
    return false;
}

ARM bool UnkFilterActor::Filter(Actor *actor) {
    if (!actor->mVisible) {
        return false;
    }

    s32 temp_r0 = actor->mUnk_12c;
    if ((temp_r0 != 2) && (temp_r0 != 5)) {
        return false;
    }

    Vec3p sp0;
    Vec3p_Sub(&actor->mPos, &mPos, &sp0);
    s16 angle2 = mAngle;
    s16 angle1 = (s16) Atan2(sp0.x, sp0.z);
    s32 var_r6 = (s16) (angle1 - angle2) >> 3;
    if (var_r6 < 0) {
        var_r6 = -var_r6;
    }

    q20 length  = Vec3p_Length(&sp0);
    s32 temp_r2 = length + MUL_Q20(var_r6, FLOAT_TO_Q20(4.0));
    if (temp_r2 < mUnk_08) {
        mActor  = actor;
        mUnk_08 = temp_r2;
        return true;
    }

    return false;
}
