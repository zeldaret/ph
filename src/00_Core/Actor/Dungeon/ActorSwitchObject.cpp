#include "Actor/Dungeon/ActorSwitchObject.hpp"
#include "Actor/ActorManager.hpp"
#include "Actor/ActorSpawner.hpp"
#include "Map/MapManager.hpp"
#include "Player/PlayerBase.hpp"
#include "System/Random.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"

#include <nds/math.h>

#pragma section sbss begin
ActorType ActorSwitchObject::gType = ActorType(ActorTypeId_SwitchObject, (ActorCreateFunc) ActorSwitchObject::Create, NULL);
#pragma section sbss end

extern u32 **data_027e0fe0[];
ARM ActorSwitchObject *ActorSwitchObject::Create() {
    return new(*data_027e0fe0[0], 4) ActorSwitchObject();
}

ARM bool ActorSwitchObject::Init() {
    Actor::Init();
    this->func_ov000_0208fc7c();
    this->mUnk_130 = 0;
    return true;
}

ARM bool ActorSwitchObject::vfunc_0c() {
    return this->func_ov00_020c1bfc(0) ? this->func_ov000_0208fc10(1) : this->func_ov000_0208fc10(0);
}

ARM void ActorSwitchObject::vfunc_14(u32 param1) {
    bool bVar1;
    u32 uVar2;
    u32 uVar3;
    s32 iVar4;
    s32 iVar5;

    bVar1 = this->func_ov00_020c313c(param1);
    if (bVar1 == NULL) {
        return;
    }
    uVar2 = this->mUnk_130;
    switch (uVar2) {
        default:
            if (uVar2 == 2) {
                break;
            }
            return;
        case 0:
            uVar3 = this->func_ov000_0208fcb4();
            switch (uVar3) {
                case 1:
                    this->func_ov000_0208fc10(1);
                    return;
                case 2:
                    this->func_ov000_0208fc10(2);
                    return;
                default:
                    return;
            }
            bVar1 = this->func_ov000_0208fc10(2);
            return;
        case 1:
            iVar4 = this->func_ov000_0208fcb4();
            if (iVar4 == 1) {
                return;
            }
            bVar1 = this->func_ov000_0208fc10(0);
            return;
    }

    iVar5               = this->mActiveFrames + 1;
    this->mActiveFrames = iVar5;
    if (iVar5 < 0x1e) {
        return;
    }

    this->func_ov000_0209032c();
    bVar1 = this->func_ov000_0208fc10(0);

    return;
}

ARM void ActorSwitchObject::vfunc_18(u32 param1) {
    this->vfunc_14(param1);
}

ARM bool ActorSwitchObject::func_ov000_0208fc10(s32 param1) {
    this->mUnk_130 = param1;

    switch (param1) {
        case 0:
            this->func_ov00_020c1c20(0, 0);
            break;
        case 1:
            this->func_ov00_020c1c20(0, 1);
            if (this->mUnk_158 == 0) {
                this->mAlive = false;
            }
            break;
        case 2:
            this->func_ov000_0208fef8();
            this->mActiveFrames = 0;
            break;
    }

    return true;
}

ARM void ActorSwitchObject::func_ov000_0208fc7c() {
    this->mUnk_158 = this->mUnk_020.mUnk_00[1];
    this->mUnk_15c = this->mUnk_020.mUnk_00[2];
    this->mUnk_164 = this->mUnk_020.mUnk_0a[1];
    this->mUnk_168 = this->mUnk_164 + this->mUnk_020.mUnk_00[0];
    this->mUnk_16c = this->mUnk_020.mUnk_08[1];
    this->mUnk_160 = this->mUnk_164;
}

ARM unk32 ActorSwitchObject::func_ov000_0208fcb4() {
    switch (mUnk_15c) {
        case 1:
            if ((mUnk_160 > mUnk_164) && (mUnk_160 < mUnk_168)) {
                for (s32 i = mUnk_164; i < mUnk_160; i++) {
                    if (!gMapManager->func_ov00_02084be0(i, mUnk_16c)) {
                        mUnk_160 = (s32) mUnk_164;
                        return 0;
                    }
                }
            }
            if (gMapManager->func_ov00_02084be0(mUnk_160, mUnk_16c)) {
                for (s32 i = mUnk_160 + 1; i < mUnk_168; i++) {
                    if (gMapManager->func_ov00_02084be0(i, mUnk_16c)) {
                        mUnk_160 = mUnk_164;
                        return 0;
                    }
                }
                if (mUnk_160 < mUnk_168) {
                    mUnk_160 += 1;
                }
            }
            return mUnk_160 == mUnk_168;
        case 2:
            if (gMapManager->func_ov00_02084be0(mUnk_160, mUnk_16c) != 0) {
                bool var_r8 = false;
                for (s32 i = mUnk_160 + 1; i < mUnk_168; i++) {
                    if (gMapManager->func_ov00_02084be0(i, mUnk_16c)) {
                        mUnk_160 = mUnk_164;
                        var_r8   = true;
                    }
                }
                if (!var_r8) {
                    mUnk_160 += 1;
                }
            }
            bool var_r6_3 = true;
            for (s32 i = mUnk_164; i < mUnk_168; i++) {
                if (gMapManager->func_ov00_02084be0(i, mUnk_16c) == 0) {
                    var_r6_3 = false;
                    break;
                }
            }
            if (var_r6_3) {
                return mUnk_160 == mUnk_168 ? 1 : 2;
            }
            return 0;
        default:
            for (s32 i = 0; i < mUnk_020.mUnk_00[0]; i++) {
                if (gMapManager->func_ov00_02084be0(mUnk_164 + i, mUnk_16c) == 0) {
                    return 0;
                }
            }
            return 1;
    }
}

ARM void ActorSwitchObject::func_ov000_0208fef8() {
    if (mUnk_130 == 1) {
        return;
    }
    switch (mUnk_020.mUnk_00[3]) {
        case 1:
            data_ov000_020eec9c.func_ov000_020d77e4(0xb);
            return;
        case 2:
            data_ov000_020eec9c.func_ov000_020d77e4(0xb);
            Vec3p playerPos        = {gPlayerPos.x, gPlayerPos.y, gPlayerPos.z};
            Vec3p snakeSpawnCenter = {gPlayerPos.x, gPlayerPos.y + FLOAT_TO_Q20(3.0), gPlayerPos.z};
            Vec3p snakeSpawnPos;
            ActorSpawnOptions spawnOptions;
            s32 failedSpawns = 0;
            for (u32 i = 0; i < ARRAY_LEN(mTrapActors); i++) {
                if (mTrapActors[i].id != -1) {
                    Actor *temp_r0_2 = gActorManager->GetActor(&mTrapActors[i]);
                    if ((temp_r0_2 != NULL) && (temp_r0_2->mType == ActorTypeId_Rope)) {
                        continue;
                    }
                    mTrapActors[i].Reset();
                }
                snakeSpawnPos.z = (gRandom.Next(0, 11) - 5) << 12;
                snakeSpawnPos.y = 0;
                snakeSpawnPos.x = (gRandom.Next(0, 11) - 5) << 12;
                Vec3p_Add(&snakeSpawnPos, &snakeSpawnCenter, &snakeSpawnPos);
                if (failedSpawns < 10) {
                    TilePos tilePos = gMapManager->func_ov00_02083a1c(&snakeSpawnPos);
                    // BUG: Should be Vec3p_Distance(&snakeSpawnCenter, &snakeSpawnPos)
                    if ((Vec3p_Distance(&playerPos, &snakeSpawnPos) < FLOAT_TO_Q20(2.0)) ||
                        (gMapManager->func_ov00_02083e70(&tilePos) != 0)) {
                        i -= 1;
                        failedSpawns += 1;
                        continue;
                    }
                    if (gMapManager->MapData_vfunc_78(&tilePos) != NULL) {
                        continue;
                    }
                    if (gMapManager->func_ov00_02084164(&tilePos) == 0) {
                        i -= 1;
                        failedSpawns += 1;
                        continue;
                    }
                    switch (gMapManager->MapData_vfunc_54(&tilePos)) {
                        case 0x5:
                        case 0x6:
                        case 0x14:
                        case 0x17:
                        case 0x1b:
                        case 0x1c:
                        case 0x1d:
                        case 0x1e:
                        case 0x1f:
                        case 0x2b:
                        case 0x37:
                        case 0x46:
                        case 0x47:
                        case 0x48:
                        case 0x4e:
                        case 0x4f:
                            i -= 1;
                            failedSpawns += 1;
                            continue;

                        default:
                            ActorRef ref = gActorManager->FindNearestActorOfType(ActorTypeId_PushBlock, &snakeSpawnPos);
                            if (ref.id == -1) {
                                break;
                            }
                            Actor *temp_r0_5 = gActorManager->GetActor(&ref);
                            if (temp_r0_5 == NULL) {
                                break;
                            }
                            Vec3p sp24 = {temp_r0_5->mPos.x, temp_r0_5->mPos.y, temp_r0_5->mPos.z};
                            sp24.y     = snakeSpawnPos.y;
                            if (Vec3p_Distance(&sp24, &snakeSpawnPos) < FLOAT_TO_Q20(1.5)) {
                                i -= 1;
                                failedSpawns += 1;
                                continue;
                            }
                            break;
                    }
                }
                gActorSpawner->Spawn(ActorTypeId_Rope, &snakeSpawnPos, &spawnOptions, &mTrapActors[i]);
            }
            return;
    }
}

ARM void ActorSwitchObject::func_ov000_0209032c() {
    unk32 i;
    for (i = this->mUnk_164; i < this->mUnk_168; i++) {
        gMapManager->func_ov00_02084b38(i, this->mUnk_16c, 0);
    }
}

ARM ActorSwitchObject::~ActorSwitchObject() {}
