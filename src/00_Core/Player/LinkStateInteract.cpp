#include "Player/LinkStateInteract.hpp"
#include "Map/MapManager.hpp"
#include "Player/PlayerControl.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"

static char *sShipTypes[] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

THUMB void LinkStateInteract::vfunc_00() {}

ARM LinkStateId LinkStateInteract::GetId() {
    return LinkStateId_Interact;
}

ARM s32 LinkStateInteract::GetGrabActorId() {
    switch (mSubState) {
        case 7:
        case 8:
        case 9:
            return mGrabRef.id;
        default:
            return -1;
    }
}

static unk32 data_ov000_020e5928                    = 0x2;
static LinkStateBase_UnkStruct1 data_ov000_020e592c = {0x1d, {0x1666, 0x0, 0x5000}};
static LinkStateBase_UnkStruct1 data_ov000_020e593c = {0x1e, {0x1999, 0x2000, 0xa000}};
static LinkStateBase_UnkStruct1 data_ov000_020e594c = {0x1e, {0xffffe800, 0xa000, 0x0}};
static LinkStateBase_UnkStruct1 data_ov000_020e595c = {0x22, {0x1000, 0x0, 0xf000}};

THUMB void LinkStateInteract::LoadBhio() {
    u32 dVar1;
    Bhio *piVar2;
    Bhio *piVar3;
    int iVar4;

    const char *fieldName;

    // Lift playback speed
    this->GetBhio0()->GetField2(true, 'LGRB', "持ち上げ再生速度", &data_ov000_020e593c.mUnk_04.x, 8, 0, 0x3000);

    // Lift start frame
    this->GetBhio0()->GetField2(true, 'LGRB', "持ち上げ開始フレーム", &data_ov000_020e593c.mUnk_04.y, 8, 0,
                                data_ov000_020e593c.mUnk_04.z / 2);

    // Lift end frame
    this->GetBhio0()->GetField2(true, 'LGRB', "持ち上げ終了フレーム", &data_ov000_020e593c.mUnk_04.z, 8,
                                data_ov000_020e593c.mUnk_04.z / 2, data_ov000_020e593c.mUnk_04.z);

    iVar4 = this->PlayerControlData_vfunc_14(data_ov000_020e595c.mUnk_00);

    // Throw playback speed
    this->GetBhio0()->GetField2(true, 'LGRB', "投げ再生速度", &data_ov000_020e595c.mUnk_04.x, 8, 0, 0x3000);

    // Throw start frame
    this->GetBhio0()->GetField2(true, 'LGRB', "投げ開始フレーム", &data_ov000_020e595c.mUnk_04.y, 8, 0, iVar4 / 2);

    // Throw end frame
    this->GetBhio0()->GetField2(true, 'LGRB', "投げ終了フレーム", &data_ov000_020e595c.mUnk_04.z, 8, iVar4 / 2, iVar4);

    this->GetBhio0();

    // Stop time
    this->GetBhio0()->GetField2(false, 'LPSH', "停止時間", &data_ov000_020e5928, 6, 0, data_ov000_020e5928 * 2);
    this->GetBhio0();
    return;
}

ARM void LinkStateInteract::OnStateEnter() {
    if (mSubState != 6) {
        this->func_ov00_020a82ac();
        this->EquipItem_vfunc_28();
    }
    switch (mSubState) {
        case 0:
            this->ChangeLinkState(0);
            break;
        case 1:
            gPlayerControl->SetUnk_80();
            this->func_ov00_020a8a4c(&data_ov000_020e592c, 1);
            break;
        case 2:
            this->func_ov00_020a8a4c(&data_ov000_020e593c, 1);
            break;
        case 3:
        case 4:
            if (this->GetGrabActor() != NULL) {
                data_ov000_020eec9c.func_ov000_020d7b20(0x125, this->GetPlayerPos());
                s16 angle               = FX_Atan2Idx(mThrowOffset.x, mThrowOffset.z);
                *this->GetPlayerAngle() = angle;
                this->func_ov00_020a89bc(&data_ov000_020e595c, 1);
            } else {
                this->func_ov00_020a8994();
            }
            break;
        case 5:
            if (this->GetGrabActor() != NULL) {
                s16 angle               = FX_Atan2Idx(mThrowOffset.x, mThrowOffset.z);
                *this->GetPlayerAngle() = angle;
                this->func_ov00_020a8a4c(&data_ov000_020e594c, 1);
            } else {
                this->ChangeLinkState(0);
            }
            break;
        case 7:
            gPlayerControl->SetUnk_80();
            if (gActorManager->GetActor(&mGrabRef) != NULL) {
                *this->Get_PlayerLinkBase_Unk44() = 0;
            } else {
                this->ChangeLinkState(0);
            }
            mUnk_24.func_020350b4(1, 0, 0, 0, 0);
            mUnk_24.func_020351b8(0, 0, 0, 0);
            mUnk_b2 = false;
            break;
        case 8:
            if (mUnk_b0) {
                *this->Get_PlayerLinkBase_Unk44() = 1;
            }
            mUnk_0c = data_ov000_020e5928;
            break;
        case 9:
            if (mUnk_b1) {
                *this->Get_PlayerLinkBase_Unk44() = -1;
            }
            mUnk_0c = data_ov000_020e5928;
            break;
        case 6:
            gPlayerControl->SetUnk_80();
            break;
        default:
            this->ChangeLinkState(0);
            break;
    }
    if (mSubState != 7) {
        mUnk_ac = mSubState;
    }
}

ARM void LinkStateInteract::OnStateLeave(s32 param1) {
    LinkStateBase::OnStateLeave(param1);
    if (gPlayerControl->mUnk_80) {
        gPlayerControl->StopFollowing();
    }
    Actor *actor = this->GetGrabActor();
    if (mSubState != 1) {
        return;
    }
    if (actor == NULL) {
        return;
    }
    if (actor->mGrabbed) {
        return;
    }
    this->GetGrabActorRef()->Reset();
}

ARM bool LinkStateInteract::func_ov00_020aa818() {
    ItemManager *temp_r4 = gItemManager;
    ActorNaviBase *fairy = temp_r4->GetFairy(temp_r4->GetEquippedFairy());
    fairy->func_ov000_020ba458();
}

ARM void LinkStateInteract::func_ov00_020aa844(Actor *actor) {
    Vec3p sp20;
    Vec3p_Sub(&actor->mPos, this->GetPlayerPos(), &sp20);
    u16 temp_r6 = *this->GetPlayerAngle();
    s16 cos     = COS(*this->GetPlayerAngle());
    s16 sin     = SIN(temp_r6);
    q20 rx      = MUL_Q20(sp20.x, -cos) + MUL_Q20(sp20.z, sin);
    Cylinder sp10;
    actor->GetHitbox(&sp10);
    q20 rz = MUL_Q20(sp20.x, sin) + MUL_Q20(sp20.z, cos);
    rz -= (sp10.size + 0x666);

    this->GetPlayerVel()->x = 0;
    this->GetPlayerVel()->z = 0;

    q20 unk = FLOAT_TO_Q20(1 / 12.0);
    if (rx > 0) {
        q20 var_r6 = unk;
        if (rx <= unk) {
            var_r6 = rx;
        }
        this->GetPlayerVel()->x += MUL_Q20(var_r6, -cos);
        q20 var_r4_4 = rx;
        if (var_r4_4 > unk) {
            var_r4_4 = unk;
        }
        this->GetPlayerVel()->z += MUL_Q20(var_r4_4, sin);
    } else if (rx < 0) {
        q20 var_r6_2 = -unk;
        if (rx >= -unk) {
            var_r6_2 = rx;
        }
        this->GetPlayerVel()->x += MUL_Q20(var_r6_2, -cos);
        q20 var_r4_5 = rx;
        if (var_r4_5 < -unk) {
            var_r4_5 = -unk;
        }
        this->GetPlayerVel()->z += MUL_Q20(var_r4_5, sin);
    }
    if (rz > 0) {
        q20 var_r4_2 = unk;
        if (rz <= unk) {
            var_r4_2 = rz;
        }
        this->GetPlayerVel()->x += MUL_Q20(var_r4_2, sin);
        q20 var_r7_2 = rz;
        if (var_r7_2 > unk) {
            var_r7_2 = unk;
        }
        this->GetPlayerVel()->z += MUL_Q20(var_r7_2, cos);
    } else if (rz < 0) {
        q20 var_r4_3 = -unk;
        if (rz >= -unk) {
            var_r4_3 = rz;
        }
        this->GetPlayerVel()->x += MUL_Q20(var_r4_3, sin);
        q20 var_r7_3 = rz;
        if (var_r7_3 < -unk) {
            var_r7_3 = -unk;
        }
        this->GetPlayerVel()->z += MUL_Q20(var_r7_3, cos);
    }
}

extern "C" unk32 GetCardinal(s16 angle);
extern "C" u16 func_0202bba8(unk32);
extern "C" void func_ov023_02171410(LinkStateRoll *, Actor *, Vec3p *);
ARM bool LinkStateInteract::vfunc_20(s32 param1) {
    if (this->HasFlags_PlayerLinkBase_Unk48(2) || !this->func_ov00_020a8b80()) {
        return false;
    }
    Actor *temp_r0 = this->GetGrabActor();
    if ((temp_r0 != NULL) && (param1 == 0)) {
        bool var_r6 = false;
        if ((u32) (gItemManager->mEquippedItem - 9) <= 1) {
            mThrowOffset = gVec3p_ZERO;
            s32 temp_r3  = *this->GetPlayerAngle();
            s16 temp_ip  = SIN(temp_r3);
            s16 temp_r2  = COS(temp_r3);
            mThrowOffset.x += MUL_Q20(temp_ip, 0x4cd);
            mThrowOffset.z += MUL_Q20(temp_r2, 0x4cd);
            var_r6 = true;
        }
        bool var_r5 = temp_r0->vfunc_2c() != -1;
        if (!var_r5 && (var_r6 || gPlayerControl->func_ov00_020b05e8(&mThrowOffset))) {
            PlayerControl *pPlayerControl   = gPlayerControl;
            pPlayerControl->mUsingEquipItem = false;
            pPlayerControl->mUnk_7b         = false;

            mSubState = 5;
            return true;
        }
        if (var_r6 || gPlayerControl->func_ov00_020b049c(&mThrowOffset, var_r5)) {
            PlayerControl *pPlayerControl   = gPlayerControl;
            pPlayerControl->mUsingEquipItem = false;
            pPlayerControl->mUnk_7b         = false;

            mSubState = 3;
            return true;
        }
        return false;
    }
    ActorRef sp14   = gPlayerControl->mFollowRef;
    Actor *var_r6_2 = gActorManager->GetActor(&sp14);
    if (var_r6_2 == NULL) {
        if (gPlayerControl->func_ov00_020b0ad0(this->func_ov00_020a8d40()->mUnk_0ec)) {
            var_r6_2 = this->func_ov00_020a8d40()->mUnk_0ec;
            sp14     = var_r6_2->mRef;
        } else {
            return false;
        }
    } else if (gPlayerControl->mUnk_80) {
        return false;
    }
    if (!gPlayerControl->func_ov00_020afe88(var_r6_2->mUnk_12c, temp_r0 != NULL)) {
        gPlayerControl->StopFollowing();
        return false;
    }
    Vec3p sp5C;
    if ((var_r6_2->mUnk_12c == 2) && (this->GetGrabActor() == NULL)) {
        Vec3p_Axpy(0x6000, &var_r6_2->mVel, &var_r6_2->mPos, &sp5C);
        UnkStruct sp68;
        Vec3p sp28;
        sp28 = var_r6_2->mPos;
        if (gMapManager->func_01ffbe78(&sp68, &sp5C, &sp28, (Sphere *) &var_r6_2->mUnk_08c, var_r6_2->mRef.id,
                                       (s32) var_r6_2->mUnk_09c.mUnk_0, 0, 0)) {
            sp5C = sp68.mUnk_00;
        }
    } else {
        this->func_ov00_020ab7bc(&sp5C, var_r6_2);
    }
    Vec3p sp50;
    Vec3p_Sub(&sp5C, this->GetPlayerPos(), &sp50);
    Cylinder sp40;
    var_r6_2->GetHitbox(&sp40);
    switch (var_r6_2->mUnk_12c) {
        case 1:
            if (Vec3p_Length(&sp50) < 0x800) {
                gPlayerControl->SetUnk_80();
            }
            return false;
        case 2:
            if (!PlayerBase::GetEquipSword()->UpdateInUse(1)) {
                return false;
            }
            if (this->GetGrabActor() == NULL) {
                if (this->GetCurrentCharacter() == PlayerCharacter_Gongoron) {
                    func_ov023_02171410(this->GetLinkStateRoll(), var_r6_2, &sp50);
                    return 0;
                }
                q20 temp_r0_4 = Vec3p_Length(&sp50);
                if (temp_r0_4 < (s32) (sp40.size + 0x3800)) {
                    s16 temp_r6_2 = (s16) FX_Atan2Idx(sp50.x, sp50.z);
                    if (temp_r0_4 < 0x1CCD) {
                        s16 temp_r1 = temp_r6_2 - *(s16 *) this->GetPlayerAngle();
                        if ((s32) temp_r1 > 0x4000) {
                            this->func_ov00_020a81b8(1, &sp5C);
                        } else if ((s32) temp_r1 >= -0x4000) {
                            this->func_ov00_020a81b8(0, &sp5C);
                        } else {
                            this->func_ov00_020a81b8(2, &sp5C);
                        }
                    } else {
                        if (temp_r0_4 < 0x2B33 && ABS(sp50.y) < 0x1333) {
                            this->func_ov00_020a81b8(3, &sp5C);
                        } else {
                            if (this->func_ov00_020a8d40()->mUnk_05a != 0) {
                                return false;
                            }
                            this->func_ov00_020a81b8(4, &sp5C);
                        }
                    }
                    *this->GetPlayerAngle() = temp_r6_2;
                }
            } else if (Vec3p_Length(&sp50) < 0x4000) {
                Vec3p_Sub(&var_r6_2->mPos, this->GetPlayerPos(), &mThrowOffset);
                PlayerControl *pPlayerControl   = gPlayerControl;
                pPlayerControl->mUsingEquipItem = false;
                pPlayerControl->mUnk_7b         = false;
                gPlayerControl->SetUnk_80();
                mSubState = 3;
                mGrabRef  = sp14;
                return true;
            }
            return false;
        case 3:
            if (Vec3p_Length(&sp50) < 0x400) {
                Vec3p sp34;
                Vec3p_Sub(&sp40.pos, this->GetPlayerPos(), &sp34);
                if ((sp34.x != 0) || (sp34.z != 0)) {
                    s16 temp_r0_5 = (s16) FX_Atan2Idx(sp34.x, sp34.z);
                    u16 temp_r0_6 = func_0202bba8(GetCardinal(temp_r0_5));
                    s16 var_r1_2  = temp_r0_5 - temp_r0_6;
                    if ((s32) var_r1_2 < 0) {
                        var_r1_2 = 0 - var_r1_2;
                    }
                    if ((s32) var_r1_2 > 0x18E4) {
                        return 0;
                    }
                    *this->GetPlayerAngle() = temp_r0_6;
                }
                mSubState = 7;
                mUnk_0c   = 0;
                mGrabRef  = sp14;
                return true;
            }
            return false;
        case 4:
            if ((Vec3p_Length(&sp50) < (s32) (sp40.size + 0xC00)) && !this->func_ov005_0211139c()) {
                *this->GetGrabActorRef() = var_r6_2->mRef;
                mSubState                = 1;
                this->LookAt(&var_r6_2->mPos);
                mGrabRef = sp14;
                return true;
            }
            return false;
        case 5:
            if (var_r6_2->CollidesWithLink() && this->func_ov005_021113b4()) {
                var_r6_2->SetUnk_11c(1);
                mSubState = 6;
                mGrabRef  = sp14;
                this->EquipItem_vfunc_28();
                return true;
            }
            return false;
        case 6:
            gPlayerControl->StopFollowing();
            return true;
    }
    return false;
}

ARM LinkStateRoll *LinkStateInteract::GetLinkStateRoll() {
    return (LinkStateRoll *) GetLinkState(LinkStateId_Roll);
}

ARM bool LinkStateInteract::vfunc_24(s32 param1) {
    switch (param1) {
        case 4:
            if (mSubState == 6) {
                return LinkStateBase::vfunc_24(param1);
            }
            break;

        case 5:
            switch (mSubState) {
                case 3:
                case 4:
                case 8:
                case 9:
                    return false;
            }
            return LinkStateBase::vfunc_24(param1);

        case 1:
        case 2:
        case 3:
            break;

        default:
            return false;
    }

    switch (mSubState) {
        case 1:
        case 7:
            return LinkStateBase::vfunc_24(param1);

        default:
            return false;
    }
}

ARM bool LinkStateInteract::vfunc_34(Vec3p *param1) {
    if (this->Get_PlayerControlData_Unk120() == 0x1E) {
        s32 temp_r0 = this->func_ov00_020a8d50();
        s32 var_r5;
        if (temp_r0 < 0x2000) {
            var_r5 = 0;
        } else if (temp_r0 >= 0x7000) {
            var_r5 = 0x1000;
        } else {
            var_r5 = CoDivide64By32(temp_r0 - 0x2000, 0x5000);
        }
        s32 playerAngle = *this->GetPlayerAngle();
        u16 var_r1      = ((((s64) var_r5) << 14) + 0x800) >> 12;
        s32 var_r3      = ((s64) COS(var_r1)) * 0xb33;
        s32 var_r9      = ((s64) SIN(var_r1)) * 0xb33;
        s32 var_r2      = ((s64) SIN(playerAngle));
        s32 var_ip      = ((s64) COS(playerAngle));

        // WIP xyz values
        param1->x += var_r3;
        param1->y += var_r9;
        param1->z += var_ip;
    } else {
        param1->y += 0xB33;
    }
    return true;
}

ARM void LinkStateInteract::SetGrabActorVelocity(Vec3p *velocity) {
    Actor *grabActor = this->GetGrabActor();
    if (grabActor == NULL) {
        return;
    }
    Vec3p vec = gVec3p_ZERO;
    if (velocity == NULL) {
        velocity = &vec;
    }
    grabActor->Drop(velocity);
    this->GetGrabActorRef()->Reset();
}

ARM void LinkStateInteract::SetBombVelocity(Vec3p *velocity) {
    Actor *grabActor = this->GetGrabActor();
    if (grabActor == NULL) {
        return;
    }
    if (grabActor->mType != ActorTypeId_Bomb && grabActor->mType != ActorTypeId_Cucco) {
        return;
    }
    this->SetGrabActorVelocity(velocity);
}

ARM void LinkStateInteract::func_ov00_020ab6c8() {
    Actor *grabActor = this->GetGrabActor();
    if (grabActor == NULL) {
        return;
    }
    switch (grabActor->mType) {
        case ActorTypeId_Cucco:
        case ActorTypeId_Bomb:
        case ActorTypeId_StorageDrum:
        case ActorTypeId_TARU:
        case ActorTypeId_STNE:
        case ActorTypeId_TSUB:
            grabActor->Kill();
            return;
    }
    this->SetGrabActorVelocity(NULL);
}

ARM unk32 LinkStateInteract::func_ov00_020ab770(Vec3p *param1) {
    Actor *followActor = gPlayerControl->GetFollowActor();
    if (followActor == NULL || this->func_ov00_020ab7bc(param1, followActor) == 0) {
        return 0;
    }
    return followActor->mUnk_12c;
}

extern "C" unk32 GetCardinal(s16 angle);
ARM unk32 LinkStateInteract::func_ov00_020ab7bc(Vec3p *param1, Actor *actor) {
    param1->x = actor->mPos.x;
    param1->y = actor->mPos.y;
    param1->z = actor->mPos.z;
    switch (actor->mUnk_12c) {
        case 2:
            return PlayerBase::GetEquipSword()->IsUsable(1);
        case 3:
            Vec3p sp10;
            Cylinder hitbox;
            actor->GetHitbox(&hitbox);
            Vec3p_Sub(this->GetPlayerPos(), param1, &sp10);
            s32 temp_r4   = hitbox.size + 0x666;
            u32 temp_r0_3 = GetCardinal((s16) FX_Atan2Idx(sp10.x, sp10.z));
            switch (temp_r0_3) {
                case 0:
                    param1->x += temp_r4;
                    break;
                case 1:
                    param1->x -= temp_r4;
                    break;
                case 2:
                    param1->z += temp_r4;
                    break;
                case 3:
                    param1->z -= temp_r4;
                    break;
            }
            return 1;
        default:
            return 1;
    }
}

ARM void LinkStateInteract::SetNormalizedThrowOffset(Vec3p *target) {
    Vec3p *playerPos = this->GetPlayerPos();
    Vec3p_Sub(target, playerPos, &mThrowOffset);
    Vec3p_SetLength(&mThrowOffset, FLOAT_TO_Q20(1.0), &mThrowOffset);
    mSubState = 5;
}

ARM void LinkStateInteract::SetThrowOffset(Vec3p *target) {
    Vec3p *playerPos = this->GetPlayerPos();
    Vec3p_Sub(target, playerPos, &mThrowOffset);
    mSubState = 3;
}

ARM void LinkStateInteract::func_ov00_020ab934(Vec3p *target) {
    Actor *grabActor = this->GetGrabActor();
    if (grabActor == NULL) {
        return;
    }
    Vec3p *playerPos = this->GetPlayerPos();
    Vec3p_Sub(target, playerPos, &mThrowOffset);
    mSubState = 3;
    this->ChangeLinkState(2);
}

ARM void LinkStateInteract::func_ov00_020ab97c(Vec3p *target) {
    Actor *grabActor = this->GetGrabActor();
    if (grabActor == NULL) {
        return;
    }
    Vec3p *playerPos = this->GetPlayerPos();
    Vec3p_Sub(target, playerPos, &mThrowOffset);
    mSubState = 4;
}

extern "C" unk32 func_ov017_0215dff0(Actor *param1, Vec3p *param2);
extern "C" unk32 func_ov017_0215e338(Actor *param1, Vec3p *param2);
ARM void LinkStateInteract::func_ov00_020ab9b8(s32 param1, bool param2) {
    Actor *grabActor = this->GetGrabActor();
    if (grabActor == NULL) {
        return;
    }
    bool var_r5 = true;
    if (param2) {
        Vec3p spC = *this->GetPlayerPos();
        Vec3p_Add(this->GetPlayerPos(), &mThrowOffset, &spC);
        switch (grabActor->mType) {
            case ActorTypeId_BossKey:
                if (func_ov017_0215dff0(grabActor, &spC) != 0) {
                    var_r5 = false;
                    this->func_ov00_020aa818();
                }
                break;
            case ActorTypeId_ForceGem:
                if (func_ov017_0215e338(grabActor, &spC) != 0) {
                    this->func_ov00_020aa818();
                }
                break;
        }
    }
    if (var_r5) {
        Vec3p sp0;
        sp0.x = 0;
        sp0.y = 0;
        sp0.z = 0;

        u16 playerAngle = *this->GetPlayerAngle();
        s32 temp_r1_3   = MUL_Q20(param1, FLOAT_TO_Q20(0.16));

        sp0.x += MUL_Q20(SIN(playerAngle), temp_r1_3);
        sp0.z += MUL_Q20(COS(playerAngle), temp_r1_3);
        grabActor->Drop(&sp0);
    }
    this->GetGrabActorRef()->Reset();
    data_ov000_020eec9c.func_ov000_020d7a84(0xCC, this->GetPlayerPos());
}

ARM bool LinkStateInteract::Grab(ActorRef *ref) {
    mGrabRef = *ref;
    this->ChangeLinkSubState(LinkStateId_Interact, 6);
    return true;
}

ARM void LinkStateInteract::func_ov00_020abba0(ActorRef *ref) {
    if (this->func_ov00_020abc40()) {
        this->Grab(ref);
        return;
    }
    mGrabRef = *ref;
}

ARM void LinkStateInteract::func_ov00_020abbdc(ActorRef *ref) {
    if (this->func_ov00_020abc40()) {
        this->Grab(ref);
        return;
    }
    mGrabRef = *ref;
}

ARM void LinkStateInteract::func_ov00_020abc18(ActorRef *ref) {
    if (this->func_ov00_020abc40()) {
        this->Grab(ref);
    }
}

ARM bool LinkStateInteract::func_ov00_020abc40() {
    if (this->GetStateId() != 2 || mSubState != 6) {
        if (this->GetStateId() != 6) {
            return true;
        }
    }
    return false;
}

ARM bool LinkStateInteract::func_ov00_020abc78(ActorRef *ref) {
    s32 temp_r0;
    ActorRef *temp_r0_2;
    Actor *temp_r6;

    if (!this->func_ov00_020a8b80()) {
        return false;
    }
    if (this->GetGrabActor() != NULL) {
        return false;
    }
    temp_r0 = this->GetStateId();
    switch (temp_r0) {
        case 0:
            break;
        case 1: {
            PlayerControl *pPlayerControl   = gPlayerControl;
            pPlayerControl->mUsingEquipItem = false;
            pPlayerControl->mUnk_7b         = false;
            break;
        }
        default:
            return false;
    }
    temp_r6    = gActorManager->GetActor(ref);
    temp_r0_2  = this->GetGrabActorRef();
    *temp_r0_2 = *ref;
    this->LookAt(&temp_r6->mPos);
    mGrabRef = *ref;
    data_ov000_020eec9c.func_ov000_020d7a84(0xCB, this->GetPlayerPos());
    this->GetGrabActor()->Grab();
    this->ChangeLinkSubState(LinkStateId_Interact, 2);
    return 1;
}
