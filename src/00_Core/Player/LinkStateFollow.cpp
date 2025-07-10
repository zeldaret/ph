#include "Player/LinkStateFollow.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Item/ItemManager.hpp"
#include "Player/EquipBomb.hpp"
#include "Player/EquipHammer.hpp"
#include "Player/EquipItem.hpp"
#include "Player/EquipScoop.hpp"
#include "Player/PlayerControl.hpp"
#include "Save/AdventureFlags.hpp"

// void LinkStateFollow::vfunc_00() {}
// LinkStateId LinkStateFollow::GetId() {}
// void LinkStateFollow::MoveTowardTarget() {}
// void LinkStateFollow::OnStateLeave(s32 param1) {}
// bool LinkStateFollow::vfunc_24(s32 param1) {}
// bool LinkStateFollow::vfunc_28() {}
// LinkStateCutscene *LinkStateFollow::GetLinkStateCutscene() {}
// bool LinkStateFollow::vfunc_34(Vec3p *param1) {}
// bool LinkStateFollow::func_ov00_020a9180(Vec3p *param1) {}
// bool LinkStateFollow::func_ov00_020a9210(Vec3p *param1, Actor *param2) {}

ARM void LinkStateFollow::vfunc_00() {}

ARM int LinkStateFollow::GetId() {

    return 3;
}

ARM void LinkStateFollow::MoveTowardTarget() {

    void *iVar1;
    void *iVar2;
    Vec3p *pos;
    int dist;
    Vec3p *vel;
    Vec3p diff;

    iVar1 = LinkStateBase::func_ov00_020a8d40();

    func_ov00_020a8d40();
    // if (iVar1->field76_0xc0 != 30) {

    //    return;
    //}

    func_ov00_020a8d40();
    // dist = PlayerControlData::vfunc_78()ov00_020a9020);
    if (dist != 0) {

        pos    = GetPlayerPos();
        dist   = dist + 0x18, pos, diff;
        diff.y = 0;

    // if ((int)DWORD_overlay_d_0__020a9024 <= dist) {
    //     func_0202d95c(&diff,DWORD_overlay_d_0__020a9024);
        vel = GetPlayerVel();
    //    Vec3p_Lerp(vel,&diff,0x2000);
        return;
    //}

        return;
    }

    return;
}

ARM void LinkStateFollow::OnStateLeave(s32 param1) {}

ARM bool LinkStateFollow::vfunc_24(s32 param_2) {

    LinkStateFollow *param_1;
    bool bVar1;
    int iVar2;

    switch (param_2) {
        case 0: return;
        case 1: break;
        case 2: break;
        case 3: break;
        case 4:
            iVar2 = param_1->mSubState;
            if (iVar2 != 1 && iVar2 != 6) {
                return false;
            }
            break;
        case 5:
            if (param_1->mSubState == 5) {
                LinkStateFollow::vfunc_24(param_2);
                return bVar1;
            }
            break;
        default: return false;
    }

    iVar2 = param_1->mSubState;
    if ((iVar2 != 1 && iVar2 != 6) && iVar2 != 10) {
        return;
    }

    LinkStateFollow::vfunc_24(param_2);
    return bVar1;
}

ARM bool LinkStateFollow::vfunc_28() {

    LinkStateCutscene *pLVar1 = GetLinkStateCutscene();

    return pLVar1->mUnk_38 < 0;
}

ARM LinkStateCutscene *LinkStateFollow::GetLinkStateCutscene() {

    return (LinkStateCutscene *) GetLinkState(LinkStateId_ItemGet);
}

ARM bool LinkStateFollow::vfunc_34(Vec3p *param_1) {

    LinkStateBase *base;

    if (base->mSubState == 2) {
        param_1->y = param_1->y + 0x1200;
        return true;
    }

    return false;
}

ARM bool LinkStateFollow::func_ov00_020a9180(Vec3p *param1) {

    bool bVar1;
    int uVar2;
    int in_r3;
    Actor *followActor;
    int local_14;
    int local_10;

    // followActor = *gPlayerControl>mFollowActor;

    if (followActor != (Actor *) 0x0) {

        if (bVar1) {
            uVar2 = *(int *) &followActor->mGravity;
        } else {
            uVar2 = 0;
        }
        return (bool) uVar2;
    }

    local_10 = in_r3 & 0xffff0000;
    // bVar1 = PlayerControl::FUN_overlay_d_0__020af01c(*PTR_gPlayerControl_overlay_d_0__020a9208,&local_10);
    if (bVar1) {
        // local_14._0_2_ = (undefined2)local_10;
        // MapManager::fun_ov00_02083c7c(*(MapManager **)PTR_gMapManager_overlay_d_0__020a920c,param_2,local_14);
        return true;
    }
    return false;

    // return gAdventureFlags->func_ov00_02097b9c(this->mUnk_5c);
}

ARM bool LinkStateFollow::func_ov00_020a9210(Vec3p *param1, Actor *param2) {}
