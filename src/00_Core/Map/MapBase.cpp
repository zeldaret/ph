// TODO: Optimise functions' bodies as much as possible (without affecting asm)
// Clear these comments when done

#include "Map/MapBase.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e0e58.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "DTCM/UnkStruct_027e0f68.hpp"
#include "DTCM/UnkStruct_027e0f6c.hpp"
#include "DTCM/UnkStruct_027e0f78.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Game/Game.hpp"
#include "Map/MapManager.hpp"
#include "Map/TriggerAABB_Unk1.hpp"
#include "Map/TriggerAABB_Unk2.hpp"
#include "Map/TriggerSphere.hpp"
#include "Render/ModelRender.hpp"
#include "Unknown/UnkStruct_020ee0a0.hpp"
#include "Unknown/UnkStruct_027e0f88.hpp"
#include "cxxabi.h"
#include "stdio.h"
#include "stdlib.h"

extern "C" void Fill32(unk32, u32 *, unk32);
extern "C" void __cxa_vec_ctor(void *, unk32, unk32, void *, void *);
extern "C" void func_020196bc(ItemModel *param1, unk32 param2);
extern "C" void func_020196fc(ItemModel *param1, unk32 param2);
extern "C" unk32 *func_0201e24c(unk32 *, char *);
extern "C" unk32 *func_0201e4cc(unk32 *param_1);
extern "C" unk32 func_01ffe904(unk16 *, unk32 *, unk32 *, unk32 *);
extern "C" unk32 func_01fff084(UnkStruct_027e0f6c *, Vec3p *, unk32, unk32, unk32, unk32);
extern "C" unk32 func_01fff264(UnkStruct_027e0f6c *, AABB *, unk32, unk32, unk32, unk32);

extern void func_ov000_020a3de0(bool, unk32);
extern unk32 func_ov000_02079e3c();
extern unk32 func_ov000_02087dd8(void *);

extern bool data_027e0f8c;
extern unk32 data_ov000_020ecde4;

struct UnkStruct_020ec81c_04 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 *mUnk_08;
    /* 0c */
};

struct UnkStruct_020ec81c {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ UnkStruct_020ec81c_04 *mUnk_04; // pointer type or not? pointer type matches vfunc_b4 / literal type matches .sbss
    /* 08 */
};

// reverse and remove pragma, possibly arrays or structs (size 0x40)
#pragma section sbss begin
UnkStruct_020ec81c data_ov000_020ec81c;
unk32 data_ov000_020ec820;
unk32 data_ov000_020ec824;
unk32 data_ov000_020ec864;
unk32 data_ov000_020ec8a4;
unk32 data_ov000_020ec8e4;
unk32 data_ov000_020ec924;
#pragma section sbss end

MapBase::~MapBase() {}

MapBase_Unk_180::~MapBase_Unk_180() {}

// Non-matching
ARM void MapBase::SetBounds(unk32 map, Course *course) {
    Vec3p *pVVar5;
    Vec3p vec;

    u16 uVar3 = this->mWidth;
    u16 uVar4 = this->mHeight;
    int iVar1 = (unk32) ((u32) uVar3 << 0xc) >> 1;
    int iVar2 = (unk32) ((u32) uVar4 << 0xc) >> 1;

    pVVar5              = course->FindMapCenter(map);
    vec                 = *pVVar5;
    this->mBounds.min.x = vec.x - iVar1;
    this->mBounds.min.y = vec.y;
    this->mBounds.min.z = vec.z - iVar2;
    this->mCenter.x     = vec.x;
    this->mCenter.y     = vec.y;
    this->mCenter.z     = vec.z;
    this->mBounds.max.x = vec.x + iVar1;
    this->mBounds.max.y = vec.y;
    this->mBounds.max.z = vec.z + iVar2;
    this->mOffset.x     = -iVar1;
    this->mOffset.y     = 0;
    this->mOffset.z     = -iVar2;
}

ARM MapManager_Unk2::~MapManager_Unk2() {}

ARM void MapBase::GetMapFilePath(char *courseName, unk32 num1, char *buf) {
    sprintf(buf, "Map/%s/map%d%d.bin", courseName, num1 / 10, num1 % 10);
}

ARM void MapBase::vfunc_18() {}

ARM void MapBase::func_ov00_0207ddf8(bool param_2) {
    int iVar1;
    u32 iVar2;
    int iVar3;
    MapBase_Unk_180 *pMVar4;

    iVar3  = 0;
    pMVar4 = this->mUnk_180;
    do {
        if (param_2) {
            iVar1 = 0;
            do {
                this->mUnk_180[iVar3 + iVar1].mUnk_0 = -1;
                iVar2                                = iVar1 + 1;
                iVar1                                = iVar2;
            } while (iVar2 < 1);
        } else {
            Fill32(0, (u32 *) pMVar4, 4);
        }
        iVar3++;
        pMVar4++;
    } while (iVar3 < 2);
    return;
}

ARM void MapBase::func_ov00_0207de68(unk32 param_2) {
    if (this->mUnk_144 == NULL) {
        return;
    }
    this->mUnk_144->func_ov000_0209c08c(0, param_2);
}

ARM void MapBase::func_ov00_0207de88() {
    if (this->mUnk_144 == NULL) {
        return;
    }
    this->mUnk_144->func_ov000_0209c61c();
}

// Non-matching
ARM void MapBase::func_ov00_0207dea0(bool param_2) {
    unk32 *iVar2;
    unk32 uVar3;
    unk32 uVar4;
    unk32 uVar5;

    iVar2 = this->mUnk_144->func_ov000_0209c530();
    data_027e0f78->func_ov000_0209cc3c(0, *(unk16 *) (iVar2 + 4));
    iVar2 = this->mUnk_144->func_ov000_0209c530();
    data_027e0f78->func_ov000_0209cc3c(1, *(unk16 *) (iVar2 + 6));
    iVar2 = this->mUnk_144->func_ov000_0209c530();
    data_027e0f78->func_ov000_0209cc3c(2, *(unk16 *) (iVar2 + 8));
    iVar2 = this->mUnk_144->func_ov000_0209c530();
    data_027e0f78->func_ov000_0209cc3c(3, *(unk16 *) (iVar2 + 10));
    data_027e0f78->func_ov000_0209cc48();
    iVar2 = this->mUnk_144->func_ov000_0209c530();
    data_027e0f88->func_ov000_020a1a0c(0, *(unk16 *) (iVar2 + 0xc));
    if (param_2) {
        uVar3 = *(unk32 *) (this->mUnk_144->mUnk_0c * 0x68 + 0x20ece3c);
        uVar4 = *(unk32 *) (this->mUnk_144->mUnk_0c * 0x68 + 0x20ece40);
        uVar5 = *(unk32 *) (this->mUnk_144->mUnk_0c * 0x68 + 0x20ece44);
        if (*(int *) (data_ov000_020ecde4) < 1) {
            data_ov000_020ee0a0.func_ov000_0209cd80(0);
        } else {
            data_ov000_020ee0a0.func_ov000_0209cd80(1);
        }
        iVar2 = this->mUnk_144->func_ov000_0209c530();
        data_ov000_020ee0a0.func_ov000_0209cd9c(*(unk16 *) (iVar2 + 0xe), uVar5);
        data_ov000_020ee0a0.func_ov000_0209cddc(uVar3);
        data_ov000_020ee0a0.func_ov000_0209cdf8(uVar4);
    }
    if (data_027e0d38->func_ov000_02078b40() == 2) {
        iVar2                  = this->mUnk_144->func_ov000_0209c530();
        data_027e0e58->mUnk_22 = *(unk16 *) (iVar2 + 0x10);
    }
    iVar2 = this->mUnk_144->func_ov000_0209c530();
    func_ov000_020a3de0(&data_027e0f8c, (unk32) (iVar2 + 0x12));
    this->mUnk_144->func_ov000_0209c788();
}

ARM void MapBase::vfunc_b0(unk32 param_2, unk32 param_3) {
    if (this->mUnk_13c == NULL) {
        return;
    }
    func_020196fc((ItemModel *) this->mUnk_13c, param_2);
    func_020196bc((ItemModel *) this->mUnk_13c, param_3);
    return;
}

// Non-matching
ARM bool MapBase::func_ov00_0207e08c(s32 *param_2, s32 param_3) {
    int iVar1;
    int iVar2;

    if (this->mUnk_13c == NULL) {
        return false;
    }
    iVar1 = this->mUnk_13c->mUnk_00 + this->mUnk_13c->mUnk_08;
    if (iVar1 == 0) {
        return false;
    }
    iVar2 = iVar1 + *(s32 *) ((u32) * (u16 *) (iVar1 + 4 + (u32) * (u16 *) (iVar1 + 10)) * param_3 + iVar1 + 4 +
                              (u32) * (u16 *) (iVar1 + 10) + 4);
    if (iVar1 == 0) {
        return false;
    }
    *param_2                 = *(unk32 *) (iVar2 + 0x14);
    *(unk16 *) (param_2 + 1) = *(u16 *) (iVar2 + 0x1c);
    return true;
}

// Non-matching
ARM s32 MapBase::func_ov00_0207e0f0(s32 param_2) {
    unk8 bVar1;
    u16 uVar2;
    u16 uVar3;
    u16 *puVar4;
    int iVar6;
    int *iVar5;
    int *iVar12;
    int *iVar11;
    int *iVar8;
    int iVar7;
    u32 uVar8;
    MapBase_Unk_13c *pMVar9;
    int *iVar9;
    int iVar13;
    int *iVar10;
    u32 uVar14;
    int iVar15;
    u32 uStack_30;

    pMVar9 = this->mUnk_13c;
    if (pMVar9 == NULL) {
        return -1;
    }
    puVar4 = (u16 *) ((int) &pMVar9->mUnk_00 + pMVar9->mUnk_08);
    if (puVar4 != (u16 *) 0x0) {
        iVar6 = (int) puVar4 + (u32) *puVar4;
        if (iVar6 == 0) {
            return -1;
        }
        uStack_30 = 0;
        if (*(char *) (iVar6 + 1) != '\0') {
            iVar15 = 0;
            do {
                iVar13 = iVar6 + (u32) * (u16 *) (iVar6 + 6);
                iVar10 = (int *) (iVar13 + (u32) * (u16 *) (iVar13 + 2));
                iVar5  = this->vfunc_b4();
                iVar12 = func_0201e24c((unk32 *) (iVar5 + 0xf), (char *) ((int) iVar10 + iVar15));
                if (iVar12 != (int *) 0x0) {
                    iVar13 = 0;
                    iVar9  = (int *) (iVar6 + (u32) * (u16 *) (iVar6 + 6) + 4);
                    iVar11 = (int *) (*(u16 *) (iVar6 + (u32) * (u16 *) (iVar6 + 6)) * uStack_30);
                    uVar2  = *(u16 *) ((int) iVar9 + (int) iVar11);
                    if (*(char *) ((int) iVar9 + (int) iVar11 + 2) != '\0') {
                        do {
                            if (param_2 == (u32) * (unk8 *) ((int) puVar4 + (u32) uVar2) + iVar13) {
                                iVar8  = this->vfunc_b4();
                                bVar1  = *(unk8 *) ((int) iVar8 + 0x3d);
                                uVar14 = 0;
                                if (bVar1 != 0) {
                                    uVar3 = *(u16 *) ((int) iVar8 + 0x42);
                                    do {
                                        iVar7 = strcmp((unk8 *) ((int) iVar8 + uVar14 * 0x10 +
                                                                 (u32) * (u16 *) ((int) iVar8 + uVar3 + 0x3e) + uVar3 + 0x3c),
                                                       (unk8 *) ((int) iVar10 + iVar15));
                                        if (iVar7 == 0) {
                                            return uVar14;
                                        }
                                        uVar8  = uVar14 + 1;
                                        uVar14 = uVar8 & 0xffff;
                                    } while ((uVar8 & 0xffff) < (u32) bVar1);
                                }
                            }
                            iVar13++;
                        } while (iVar13 < (int) (u32) * (unk8 *) ((int) ((int) iVar9 + (int) iVar11) + 2));
                    }
                }
                iVar15    = iVar15 + 0x10;
                uStack_30 = uStack_30 + 1;
            } while (uStack_30 < *(unk8 *) (iVar6 + 1));
        }
        return -1;
    }
    return -1;
}

// Non-matching
ARM s32 MapBase::func_ov00_0207e28c(s32 param_2) {
    u16 uVar1;
    u16 uVar2;
    int iVar12;
    int *iVar3;
    int *iVar4;
    int *iVar7;
    int *iVar8;
    int *iVar9;
    int *iVar6;
    int *iVar11;
    int iVar13;
    u32 uVar14;
    int *iVar10;
    MapBase_Unk_13c *pMVar15;
    int iVar16;
    int iVar17;
    u32 uVar18;
    int iVar19;
    u32 uVar20;
    u32 uStack_30;
    int *iVar5;

    pMVar15 = this->mUnk_13c;
    if (pMVar15 == NULL) {
        return -1;
    }
    iVar3 = (int *) ((int) &pMVar15->mUnk_00 + pMVar15->mUnk_08);
    if (iVar3 != NULL) {
        iVar4 = (int *) ((int) iVar3 + (u32) * (u16 *) ((int) iVar3 + 2));
        if (iVar4 == NULL) {
            return -1;
        }
        uStack_30 = 0;
        if (*(char *) ((int) iVar4 + 1) != 0) {
            iVar19 = 0;
            do {
                iVar5 = (int *) ((u32) * (u16 *) ((int) iVar4 + *(u16 *) ((int) iVar4 + 6) + 2) +
                                 (u32) * (u16 *) ((int) iVar4 + 6));
                iVar7 = this->vfunc_b4();
                iVar8 = (int *) func_0201e24c((unk32 *) ((int) iVar7 + (u32) * (u16 *) (iVar7 + 0xd)),
                                              (char *) ((int) iVar4 + iVar19 + (int) iVar5));
                if (iVar8 != NULL) {
                    iVar17 = 0;
                    iVar16 = (int) iVar4 + *(u16 *) ((int) iVar4 + 6) + 4;
                    iVar9  = (int *) (*(u16 *) ((int) iVar4 + (u32) * (u16 *) ((int) iVar4 + 6)) * uStack_30);
                    uVar1  = *(u16 *) (iVar16 + (int) iVar9);
                    if (*(char *) ((int) iVar9 + iVar16 + 2) != 0) {
                        do {
                            if (param_2 == (u32) * (unk8 *) ((int) iVar3 + (u32) uVar1) + iVar17) {
                                iVar6  = this->vfunc_b4();
                                iVar11 = this->vfunc_b4();
                                uVar2  = *(u16 *) (iVar11 + 0xd);
                                uVar18 = 0;
                                uVar20 = (u32) * (unk8 *) ((int) iVar6 + uVar2 + 1);
                                if (uVar20 != 0) {
                                    iVar12 = (u32) * (u16 *) ((int) iVar6 + uVar2 + 6) + (u32) uVar2;
                                    do {
                                        iVar13 = strcmp((unk8 *) ((int) iVar6 + uVar18 * 0x10 +
                                                                  (u32) * (u16 *) ((int) iVar6 + iVar12 + 2) + iVar12),
                                                        (unk8 *) ((int) iVar4 + iVar19 + (int) iVar5));
                                        if (iVar13 == 0) {
                                            return uVar18;
                                        }
                                        uVar14 = uVar18 + 1;
                                        uVar18 = uVar14 & 0xffff;
                                    } while ((uVar14 & 0xffff) < uVar20);
                                }
                            }
                            iVar17++;
                        } while (iVar17 < (int) (u32) * (unk8 *) ((int) iVar9 + iVar16 + 2));
                    }
                }
                iVar19    = iVar19 + 0x10;
                uStack_30 = uStack_30 + 1;
            } while (uStack_30 < *(unk8 *) ((int) iVar4 + 1));
        }
        return -1;
    }
    return -1;
}

ARM unk32 *MapBase::vfunc_b4() {
    if (data_ov000_020ec81c.mUnk_04 != NULL) {
        return func_0201e4cc(data_ov000_020ec81c.mUnk_04->mUnk_08);
    }
    return NULL;
}

ARM void MapBase::vfunc_48() {
    this->Trigger_vfunc_08();
    this->mUnk_144->func_ov000_0209c8e4(0);
    return;
}

ARM unk32 MapBase::vfunc_50() {
    return 0;
}

ARM unk32 MapBase::vfunc_54(TilePos *param_1) {
    return 0;
}

ARM unk32 MapBase::vfunc_58(TilePos *param_1, int param_2) {
    return 0;
}

ARM unk32 MapBase::vfunc_5c() {
    return 0;
}

ARM unk32 MapBase::vfunc_60(TilePos *param_1) {
    return 0;
}

ARM unk32 MapBase::vfunc_64() {
    return 0;
}

ARM unk32 MapBase::vfunc_68(Vec3p *param_2, bool param_3) {
    int iVar1;
    u32 uVar2;
    u32 uVar3;
    int iVar4;
    u32 uVar5;
    int iVar6;
    bool bVar7;
    TilePos aVStack_98;
    u32 local_94;
    int iStack_90;
    int iStack_8c;
    Vec3p local_88;
    unk32 local_7c;
    unk32 local_78;
    unk32 local_74;
    unk16 local_70;
    unk16 local_6e;
    unk16 local_6c;
    unk16 local_6a;
    unk32 local_68;
    unk32 local_64;
    unk32 local_60;
    unk32 local_5c;
    unk32 local_58;
    unk32 local_54;
    unk32 local_50;
    unk32 local_4c;
    unk32 local_48;
    unk32 local_44;
    unk32 local_40;
    unk32 local_3c;
    unk32 local_38;
    unk32 local_34;
    unk32 local_30;
    unk32 local_2c;
    unk32 local_28;

    aVStack_98 = gMapManager->func_ov00_02083a1c(param_2);
    iVar1      = this->vfunc_54(&aVStack_98);
    if (0x1e < iVar1) {
        if (iVar1 < 0x36) {
            if (0x34 < iVar1) {
                if (param_3 != 0) {
                    bVar7 = this->func_ov00_0207f104(param_2, &iStack_8c);
                    if (bVar7) {
                        return iStack_8c;
                    }
                    iVar1 = this->func_ov00_0207f1f4(param_2, &iStack_8c);
                    if ((iVar1 != 0) && (iStack_8c <= param_2->y)) {
                        return iStack_8c;
                    }
                }
                goto LAB_arm9_ov000__0207e724;
            }
            if (iVar1 < 0x2a) {
                if (-1 < iVar1 + -0x1f) {
                    // iVar1 = (*(code *) ((iVar1 + -0x1f) * 4 + 0x207e590))();
                    return iVar1;
                }
            } else if (iVar1 == 0x30) {
                goto LAB_arm9_ov000__0207e724;
            }
        } else if (iVar1 < 0x41) {
            if (iVar1 == 0x40) {
                goto LAB_arm9_ov000__0207e724;
            }
        } else if (iVar1 == 0x50) {
            goto LAB_arm9_ov000__0207e724;
        }
        goto LAB_0207e518_caseD_a;
    }
    if (0x1d < iVar1) {
        goto LAB_arm9_ov000__0207e724;
    }
    if (0x17 < iVar1) {
        if (iVar1 < 0x1a) {
            if (iVar1 == 0x19) {
                goto LAB_arm9_ov000__0207e724;
            }
        } else if (iVar1 == 0x1d) {
            goto LAB_arm9_ov000__0207e724;
        }
        goto LAB_0207e518_caseD_a;
    }
    if (0x16 < iVar1) {
        goto LAB_arm9_ov000__0207e724;
    }
    if (9 < iVar1) {
        if (iVar1 == 0x16) {
            goto LAB_arm9_ov000__0207e724;
        }
        goto LAB_0207e518_caseD_a;
    }
    switch (iVar1) {
        case 0:
        default:
        LAB_0207e518_caseD_a:
            if (this->mUnk_00e == 0) {
                if (param_3 == 0) {
                    uVar2 = this->vfunc_58(&aVStack_98, 5);
                    bVar7 = uVar2 == 0;
                    if (bVar7) {
                        uVar2 = (u32) this->mUnk_008;
                    }
                    if (bVar7 && uVar2 == 0) {
                        iVar1 = this->vfunc_60(&aVStack_98);
                        return iVar1;
                    }
                } else {
                    bVar7 = this->func_ov00_0207f104(param_2, &iStack_90);
                    if (bVar7) {
                        return iStack_90;
                    }
                    iVar1 = this->func_ov00_0207f1f4(param_2, &iStack_90);
                    if ((iVar1 != 0) && (iStack_90 <= param_2->y)) {
                        return iStack_90;
                    }
                    uVar2 = this->vfunc_58(&aVStack_98, 5);
                    bVar7 = uVar2 == 0;
                    if (bVar7) {
                        uVar2 = (u32) this->mUnk_008;
                    }
                    if (bVar7 && uVar2 == 0) {
                        iVar1 = this->vfunc_60(&aVStack_98);
                        return iVar1;
                    }
                }
            }
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            goto LAB_0207e518_caseD_a;
        case 6:
            goto LAB_0207e518_caseD_a;
        case 7:
            goto LAB_0207e518_caseD_a;
        case 8:
            break;
        case 9:
    }
LAB_arm9_ov000__0207e724:
    // iVar1 = func_01fff084(data_027e0f6c, param_2, 2, data_ov000_020ec824);
    uVar5 = 0x2000;
    __cxa_vec_ctor(&local_58, 3, 0x10, func_ov00_0207e96c, func_ov00_0207e968);
    uVar2      = 0;
    local_7c   = 0;
    local_74   = 0;
    local_78   = 0xffff0000;
    local_88.x = param_2->x;
    local_88.y = param_2->y;
    local_88.z = param_2->z;
    if (0 < iVar1) {
        do {
            iVar4    = (u32) * (u16 *) (uVar2 * 2 + 0x20ec824) * 0x4c;
            iVar6    = *(int *) (data_027e0f6c + 0x20) + iVar4;
            local_70 = *(unk16 *) (*(int *) (data_027e0f6c + 0x20) + iVar4);
            local_6e = *(unk16 *) (iVar6 + 2);
            local_6c = *(unk16 *) (iVar6 + 4);
            local_6a = *(unk16 *) (iVar6 + 6);
            local_68 = *(unk32 *) (iVar6 + 8);
            local_64 = *(unk32 *) (iVar6 + 0xc);
            local_60 = *(unk32 *) (iVar6 + 0x10);
            local_5c = *(unk32 *) (iVar6 + 0x14);
            local_58 = *(unk32 *) (iVar6 + 0x18);
            local_54 = *(unk32 *) (iVar6 + 0x1c);
            local_50 = *(unk32 *) (iVar6 + 0x20);
            local_4c = *(unk32 *) (iVar6 + 0x24);
            local_48 = *(unk32 *) (iVar6 + 0x28);
            local_44 = *(unk32 *) (iVar6 + 0x2c);
            local_40 = *(unk32 *) (iVar6 + 0x30);
            local_3c = *(unk32 *) (iVar6 + 0x34);
            local_38 = *(unk32 *) (iVar6 + 0x38);
            local_34 = *(unk32 *) (iVar6 + 0x3c);
            local_30 = *(unk32 *) (iVar6 + 0x40);
            local_2c = *(unk32 *) (iVar6 + 0x44);
            local_28 = *(unk32 *) (iVar6 + 0x48);
            iVar4    = func_01ffe904(&local_70, (unk32 *) &local_88, &local_7c, (unk32 *) &local_94);
            if ((iVar4 != 0) && ((int) local_94 < (int) uVar5)) {
                uVar5 = local_94;
            }
            uVar3 = uVar2 + 1;
            uVar2 = uVar3 & 0xffff;
        } while ((int) (uVar3 & 0xffff) < iVar1);
    }
    iVar1 = local_88.y;
    if ((int) uVar5 < 0x1001) {
        uVar2 = (u32) ((u64) uVar5 * 0xffff0000);
        //__cxa_vec_cleanup(&local_58, 3, 0x10, func_ov00_0207e968);
        return iVar1 + (uVar2 + 0x800 >> 0xc |
                        (((int) ((u64) uVar5 * 0xffff0000 >> 0x20) - uVar5) + (u32) (0xfffff7ff < uVar2)) * 0x100000);
    }
    iVar1 = this->vfunc_60(&aVStack_98);
    //__cxa_vec_cleanup(&local_58, 3, 0x10, func_ov00_0207e968);
    return iVar1;
}

ARM unk8 *MapBase::func_ov00_0207e940(unk8 *param_1) {
    //__cxa_vec_cleanup(param_1 + 0x18, 3, 0x10, func_ov00_0207e968);
    return param_1;
}

ARM void MapBase::func_ov00_0207e968() {}

ARM void MapBase::func_ov00_0207e96c() {}

// Non-matching
ARM void MapBase::vfunc_6c(Vec3p *param_2, unk32 *param_3, Vec3p *param_4) {
    int iVar1;
    u32 uVar2;
    u32 uVar3;
    int iVar4;
    u32 uVar5;
    int iVar6;
    bool bVar7;
    TilePos aVStack_dc;
    u32 local_d8;
    int local_d4;
    int local_d0;
    int iStack_cc;
    unk32 local_c8;
    unk32 local_c4;
    unk32 local_c0;
    unk16 local_bc;
    unk16 local_ba;
    unk16 local_b8;
    unk16 local_b6;
    unk32 local_b4;
    unk32 local_b0;
    unk32 local_ac;
    unk32 local_a8;
    unk32 local_a4;
    unk32 local_a0;
    unk32 local_9c;
    unk32 local_98;
    unk32 local_94;
    unk32 local_90;
    unk32 local_8c;
    unk32 local_88;
    unk32 local_84;
    unk32 local_80;
    unk32 local_7c;
    unk32 local_78;
    unk32 local_74;
    unk16 local_70;
    unk16 local_6e;
    unk16 local_6c;
    unk16 local_6a;
    unk32 local_68;
    unk32 local_64;
    unk32 local_60;
    unk32 local_5c;
    unk32 local_58;
    unk32 local_54;
    unk32 local_50;
    unk32 local_4c;
    unk32 local_48;
    unk32 local_44;
    unk32 local_40;
    unk32 local_3c;
    unk32 local_38;
    unk32 local_34;
    unk32 local_30;
    unk32 local_2c;
    unk32 local_28;

    aVStack_dc = gMapManager->func_ov00_02083a1c(param_2);
    iVar1      = this->vfunc_54(&aVStack_dc);
    if (0x1e < iVar1) {
        if (iVar1 < 0x36) {
            if (0x34 < iVar1) {
                goto LAB_arm9_ov000__0207eb04;
            }
            if (iVar1 < 0x2a) {
                if (-1 < iVar1 + -0x1f) {
                    //(*(code *) ((iVar1 + -0x1f) * 4 + 0x207ea4c))();
                    return;
                }
            } else if (iVar1 == 0x30) {
                goto LAB_arm9_ov000__0207eb04;
            }
        } else if (iVar1 < 0x41) {
            if (iVar1 == 0x40) {
                goto LAB_arm9_ov000__0207eb04;
            }
        } else if (iVar1 == 0x50) {
            goto LAB_arm9_ov000__0207eb04;
        }
        goto LAB_0207e9d4_caseD_a;
    }
    if (0x1d < iVar1) {
        goto LAB_arm9_ov000__0207eb04;
    }
    if (0x17 < iVar1) {
        if (iVar1 < 0x1a) {
            if (iVar1 == 0x19) {
                goto LAB_arm9_ov000__0207eb04;
            }
        } else if (iVar1 == 0x1d) {
            goto LAB_arm9_ov000__0207eb04;
        }
        goto LAB_0207e9d4_caseD_a;
    }
    if (0x16 < iVar1) {
        goto LAB_arm9_ov000__0207eb04;
    }
    if (9 < iVar1) {
        if (iVar1 == 0x16) {
            goto LAB_arm9_ov000__0207eb04;
        }
        goto LAB_0207e9d4_caseD_a;
    }
    switch (iVar1) {
        case 0:
        default:
        LAB_0207e9d4_caseD_a:
            if (this->mUnk_00e == 0) {
                uVar2 = this->vfunc_58(&aVStack_dc, 5);
                bVar7 = uVar2 == 0;
                if (bVar7) {
                    uVar2 = (u32) this->mUnk_008;
                }
                if (bVar7 && uVar2 == 0) {
                    iVar1      = this->vfunc_60(&aVStack_dc);
                    *param_3   = iVar1;
                    param_4->x = 0;
                    param_4->y = 0x1000;
                    param_4->z = 0;
                    return;
                }
            }
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            goto LAB_0207e9d4_caseD_a;
        case 6:
            goto LAB_0207e9d4_caseD_a;
        case 7:
            goto LAB_0207e9d4_caseD_a;
        case 8:
            break;
        case 9:
    }
LAB_arm9_ov000__0207eb04:
    iVar1 = func_01fff084(data_027e0f6c, param_2, 2, data_ov000_020ec864, 0x20, 0);
    uVar5 = 0x2000;
    __cxa_vec_ctor(&local_58, 3, 0x10, func_ov00_0207e96c, func_ov00_0207e968);
    __cxa_vec_ctor(&local_a4, 3, 0x10, func_ov00_0207e96c, func_ov00_0207e968);
    uVar2     = 0;
    local_c8  = 0;
    local_c0  = 0;
    local_c4  = 0xffff0000;
    local_d4  = param_2->x;
    local_d0  = param_2->y;
    iStack_cc = param_2->z;
    if (0 < iVar1) {
        do {
            iVar4    = (u32) * (u16 *) (uVar2 * 2 + data_ov000_020ec864) * 0x4c;
            iVar6    = *(int *) (data_027e0f6c + 0x20) + iVar4;
            local_70 = *(unk16 *) (*(int *) (data_027e0f6c + 0x20) + iVar4);
            local_6e = *(unk16 *) (iVar6 + 2);
            local_6c = *(unk16 *) (iVar6 + 4);
            local_6a = *(unk16 *) (iVar6 + 6);
            local_68 = *(unk32 *) (iVar6 + 8);
            local_64 = *(unk32 *) (iVar6 + 0xc);
            local_60 = *(unk32 *) (iVar6 + 0x10);
            local_5c = *(unk32 *) (iVar6 + 0x14);
            local_58 = *(unk32 *) (iVar6 + 0x18);
            local_54 = *(unk32 *) (iVar6 + 0x1c);
            local_50 = *(unk32 *) (iVar6 + 0x20);
            local_4c = *(unk32 *) (iVar6 + 0x24);
            local_48 = *(unk32 *) (iVar6 + 0x28);
            local_44 = *(unk32 *) (iVar6 + 0x2c);
            local_40 = *(unk32 *) (iVar6 + 0x30);
            local_3c = *(unk32 *) (iVar6 + 0x34);
            local_38 = *(unk32 *) (iVar6 + 0x38);
            local_34 = *(unk32 *) (iVar6 + 0x3c);
            local_30 = *(unk32 *) (iVar6 + 0x40);
            local_2c = *(unk32 *) (iVar6 + 0x44);
            local_28 = *(unk32 *) (iVar6 + 0x48);
            iVar4    = func_01ffe904(&local_70, &local_d4, &local_c8, (unk32 *) &local_d8);
            if ((iVar4 != 0) && ((int) local_d8 < (int) uVar5)) {
                local_bc = local_70;
                local_ba = local_6e;
                local_b8 = local_6c;
                local_b6 = local_6a;
                local_b4 = local_68;
                local_b0 = local_64;
                local_ac = local_60;
                local_a8 = local_5c;
                local_a4 = local_58;
                local_a0 = local_54;
                local_9c = local_50;
                local_98 = local_4c;
                local_94 = local_48;
                local_90 = local_44;
                local_8c = local_40;
                local_88 = local_3c;
                local_84 = local_38;
                local_80 = local_34;
                local_7c = local_30;
                local_78 = local_2c;
                local_74 = local_28;
                uVar5    = local_d8;
            }
            uVar3 = uVar2 + 1;
            uVar2 = uVar3 & 0xffff;
        } while ((int) (uVar3 & 0xffff) < iVar1);
    }
    if (uVar5 <= 0x1000) {
        uVar2      = (u32) ((u64) uVar5 * 0xffff0000);
        param_4->x = local_b4;
        param_4->y = local_b0;
        param_4->z = local_ac;
        *param_3   = local_d0 + (uVar2 + 0x800 >> 0xc |
                               (((int) ((u64) uVar5 * 0xffff0000 >> 0x20) - uVar5) + (u32) (0xfffff7ff < uVar2)) * 0x100000);
    } else {
        iVar1      = this->vfunc_60(&aVStack_dc);
        *param_3   = iVar1;
        param_4->x = 0;
        param_4->y = 0x1000;
        param_4->z = 0;
    }
    //__cxa_vec_cleanup(&local_a4,3,0x10,func_ov00_0207e968);
    //__cxa_vec_cleanup(&local_58,3,0x10,func_ov00_0207e968);
}

// Non-matching
ARM u16 MapBase::vfunc_70(Vec3p *param_2) {
    int iVar1;
    u32 uVar2;
    int iVar3;
    int iVar4;
    unk32 dVar5; // dword
    u32 uVar6;
    int iVar7;
    TilePos aVStack_90;
    int local_8c;
    int local_88;
    int iStack_84;
    int iStack_80;
    unk32 local_7c;
    unk32 local_78;
    unk32 local_74;
    unk16 local_70;
    unk16 local_6e;
    unk16 local_6c;
    unk16 local_6a;
    unk32 local_68;
    unk32 local_64;
    unk32 local_60;
    unk32 local_5c;
    unk32 local_58;
    unk32 local_54;
    unk32 local_50;
    unk32 local_4c;
    unk32 local_48;
    unk32 local_44;
    unk32 local_40;
    unk32 local_3c;
    unk32 local_38;
    unk32 local_34;
    unk32 local_30;
    unk32 local_2c;
    unk32 local_28;

    aVStack_90 = gMapManager->func_ov00_02083a1c(param_2);
    iVar1      = func_01fff084(data_027e0f6c, param_2, 2, 0x20ec8a4, 0x20, 0);
    iVar4      = 0x2000;
    dVar5      = 0xffff;
    __cxa_vec_ctor(&local_58, 3, 0x10, func_ov00_0207e96c, func_ov00_0207e968);
    uVar6     = 0;
    local_7c  = 0;
    local_74  = 0;
    local_78  = 0xffff0000;
    local_88  = param_2->x;
    iStack_84 = param_2->y;
    iStack_80 = param_2->z;
    if (0 < iVar1) {
        do {
            iVar3    = (u32) * (u16 *) (uVar6 * 2 + data_ov000_020ec8a4) * 0x4c;
            iVar7    = *(int *) (data_027e0f6c + 0x20) + iVar3;
            local_70 = *(unk16 *) (*(int *) (data_027e0f6c + 0x20) + iVar3);
            local_6e = *(unk16 *) (iVar7 + 2);
            local_6c = *(unk16 *) (iVar7 + 4);
            local_6a = *(unk16 *) (iVar7 + 6);
            local_68 = *(unk32 *) (iVar7 + 8);
            local_64 = *(unk32 *) (iVar7 + 0xc);
            local_60 = *(unk32 *) (iVar7 + 0x10);
            local_5c = *(unk32 *) (iVar7 + 0x14);
            local_58 = *(unk32 *) (iVar7 + 0x18);
            local_54 = *(unk32 *) (iVar7 + 0x1c);
            local_50 = *(unk32 *) (iVar7 + 0x20);
            local_4c = *(unk32 *) (iVar7 + 0x24);
            local_48 = *(unk32 *) (iVar7 + 0x28);
            local_44 = *(unk32 *) (iVar7 + 0x2c);
            local_40 = *(unk32 *) (iVar7 + 0x30);
            local_3c = *(unk32 *) (iVar7 + 0x34);
            local_38 = *(unk32 *) (iVar7 + 0x38);
            local_34 = *(unk32 *) (iVar7 + 0x3c);
            local_30 = *(unk32 *) (iVar7 + 0x40);
            local_2c = *(unk32 *) (iVar7 + 0x44);
            local_28 = *(unk32 *) (iVar7 + 0x48);
            iVar3    = func_01ffe904(&local_70, &local_88, &local_7c, &local_8c);

            if ((iVar3 != 0) && (local_8c < iVar4)) {
                dVar5 = (unk32) * (u16 *) (uVar6 * 2 + data_ov000_020ec8a4);
                iVar4 = local_8c;
            }
            uVar2 = uVar6 + 1;
            uVar6 = uVar2 & 0xffff;
        } while ((int) (uVar2 & 0xffff) < iVar1);
    }
    //__cxa_vec_cleanup(&local_58, 3, 0x10, func_ov00_0207e968);
    return dVar5;
}

// Non-matching
ARM unk32 *MapBase::vfunc_74(Vec3p *param_2) {
    int iVar1;
    u32 uVar2;
    int iVar3;
    int iVar4;
    int *piVar5;
    bool bVar6;
    bool bVar7;
    TilePos aVStack_38;
    AABB local_34;

    aVStack_38     = gMapManager->func_ov00_02083a1c(param_2);
    local_34.min.x = param_2->x;
    local_34.min.y = param_2->y;
    local_34.min.z = param_2->z;
    local_34.max.x = param_2->x;
    local_34.max.y = param_2->y;
    local_34.max.z = param_2->z;
    local_34.GrowScalar(0x800);
    iVar1 = func_01fff264(data_027e0f6c, &local_34, 8, data_ov000_020ec8e4, 0x20, 0);
    iVar4 = 0;
    if (0 < iVar1) {
        do {
            uVar2  = (u32) * (u16 *) (iVar4 * 2 + data_ov000_020ec8e4);
            piVar5 = *(int **) (*(int *) (data_027e0f6c + 0x40) + uVar2 * 4);
            bVar6  = piVar5 != (int *) 0x0;
            if (bVar6) {
                uVar2 = (u32) * (unk8 *) (piVar5 + 1);
            }
            bVar7 = uVar2 != 0;
            if (bVar6 && bVar7) {
                uVar2 = (u32) * (unk8 *) ((int) piVar5 + 5);
            }
            /*if ((((bVar6 && bVar7) && uVar2 != 0) && (2 < (piVar5[3] & 0x1fU))) &&
                (iVar3 = (**(code **) (*piVar5 + 0x48))(piVar5, param_2), iVar3 != 0)) {
                return piVar5;
            }*/
            iVar4++;
        } while (iVar4 < iVar1);
    }
    return NULL;
}

ARM void MapBase::func_ov00_0207f100() {}

// Non-matching
ARM bool MapBase::func_ov00_0207f104(Vec3p *param_2, unk32 *param_3) {
    char cVar1;
    int *piVar2;
    int iVar3;
    int iVar4;
    TilePos aVStack_18;

    aVStack_18 = gMapManager->func_ov00_02083a1c(param_2);
    piVar2     = this->vfunc_78(&aVStack_18);
    if (piVar2 == NULL) {
        return false;
    }
    // iVar3 = (**(code **) (*piVar2 + 0x58))();
    if (iVar3 != 0) {
        // iVar3 = (**(code **) (*piVar2 + 0x54))();
        if (iVar3 == 0) {
            cVar1 = 0;
        } else {
            cVar1 = *(char *) (iVar3 + 5);
        }
        if (cVar1 != 0) {
            // iVar3 = func_ov000_0208b79c(piVar2, param_2);
            if (iVar3 != 0) {
                // piVar2 = (int *) (**(code **) (*piVar2 + 0x54))();
                if (piVar2 == NULL) {
                    iVar3 = 0;
                } else {
                    // iVar3 = (**(code **) (*piVar2 + 0x44))();
                }
                iVar4    = this->vfunc_60(&aVStack_18);
                *param_3 = iVar4 + iVar3;
                return true;
            }
            return false;
        }
        return false;
    }
    return false;
}

// Non-matching
ARM unk32 MapBase::func_ov00_0207f1f4(Vec3p *param_2, unk32 *param_3) {
    int iVar1;
    u32 uVar2;
    int iVar3;
    int iVar4;
    int *piVar5;
    bool bVar6;
    bool bVar7;
    TilePos aVStack_58;
    unk8 auStack_54[16];
    unk32 local_44;
    AABB local_3c;

    aVStack_58     = gMapManager->func_ov00_02083a1c(param_2);
    local_3c.min.x = param_2->x;
    local_3c.min.y = param_2->y;
    local_3c.min.z = param_2->z;
    local_3c.max.x = param_2->x;
    local_3c.max.y = param_2->y;
    local_3c.max.z = param_2->z;
    local_3c.GrowScalar(0x800);
    iVar1 = func_01fff264(data_027e0f6c, &local_3c, 8, data_ov000_020ec924, 0x20, 0);
    iVar4 = 0;
    if (0 < iVar1) {
        do {
            uVar2  = (u32) * (u16 *) (iVar4 * 2 + data_ov000_020ec924);
            piVar5 = *(int **) (*(int *) (data_027e0f6c + 0x40) + uVar2 * 4);
            bVar6  = piVar5 != (int *) 0x0;
            if (bVar6) {
                uVar2 = (u32) * (unk8 *) (piVar5 + 1);
            }
            bVar7 = uVar2 != 0;
            if (bVar6 && bVar7) {
                uVar2 = (u32) * (unk8 *) ((int) piVar5 + 5);
            }
            /*if ((((bVar6 && bVar7) && uVar2 != 0) && (2 < (piVar5[3] & 0x1fU))) &&
                (iVar3 = (**(code **) (*piVar5 + 0x48))(piVar5, param_2), iVar3 != 0)) {
                (**(code **) (*piVar5 + 0x2c))(piVar5, auStack_54);
                *param_3 = local_44;
                return 1;
            }*/
            iVar4++;
        } while (iVar4 < iVar1);
    }
    return 0;
}

ARM unk32 MapBase::vfunc_88() {
    return 0;
}

ARM unk32 MapBase::vfunc_8c() {
    return 0;
}

ARM void MapBase::vfunc_9c() {}

ARM void MapBase::vfunc_a0() {}

ARM unk32 MapBase::vfunc_a4(unk8 *param_1) {
    return 0;
}

ARM void MapBase::vfunc_a8() {}

ARM void MapBase::vfunc_ac() {}

ARM unk32 *MapBase::vfunc_78(TilePos *param_1) {
    return 0;
}

ARM s32 MapBase::vfunc_7c(s32 param_1, unk32 *param_2, s32 param_3, short param_4[4]) {
    return 1;
}

ARM bool MapBase::vfunc_80(TilePos *param_2) {
    return true;
}

ARM bool MapBase::vfunc_84(UnkStruct_0207f38c *param_2) {
    TilePos tilePos(param_2->mUnk_14.x, param_2->mUnk_14.y);
    return this->vfunc_80(&tilePos);
}

ARM bool MapBase::func_ov00_0207f38c(UnkStruct_0207f38c *param_2) {
    if (this->vfunc_84(param_2)) {
        return data_027e0f68->func_ov000_0208d820(param_2);
    }
    return false;
}

// Non-matching
ARM void MapBase::vfunc_90(TilePos *param_2, unk32 param_3) {
    int iVar1;
    int iVar2;
    int *piVar3;

    iVar1 = this->vfunc_54(param_2);
    if (iVar1 == param_3) {
        return;
    }
    this->vfunc_bc(/*param_2,param_3,*(code **)(param_1->vtable + 0xbc),param_4*/);
    iVar2 = this->vfunc_5c(/*param_2*/);
    if (param_3 == 0x14) {
        this->vfunc_c0(/*param_2,(iVar2 + -3) * 0x1000000 >> 0x18*/);
    } else if (iVar1 == 0x14) {
        this->vfunc_c0(/*param_2,(iVar2 + 3) * 0x1000000 >> 0x18*/);
    }
    piVar3 = (int *) this->vfunc_78(param_2);
    if (piVar3 == NULL) {
        return;
    }
    //(**(code **)(*piVar3 + 0x44))(piVar3,param_3);
}

ARM void MapBase::vfunc_94() {}

// Non-matching
ARM void MapBase::func_ov00_0207f4a4(Vec2s *param_2, unk32 param_3) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    TilePos tilePos;

    tilePos.x = (unk8) ((int) param_2->x / 2);
    tilePos.y = (unk8) ((int) param_2->y / 2);
    uVar3     = (int) param_2->x >> 0x1f;
    uVar4     = (int) param_2->y >> 0x1f;
    uVar1     = param_2->x * -0x80000000 + uVar3 >> 0x1f | uVar3 << 1;
    uVar2     = param_2->y * -0x80000000 + uVar4 >> 0x1f | uVar4 << 1;
    if (uVar1 == uVar3 && uVar2 == uVar4) {
        param_3 = 0;
    } else if (uVar1 - uVar3 == 1 && uVar2 == uVar4) {
        param_3 = 1;
    } else if (uVar1 - uVar3 == 1 && uVar2 - uVar4 == 1) {
        param_3 = 3;
    } else if (uVar1 == uVar3 && uVar2 - uVar4 == 1) {
        param_3 = 2;
    }
    this->vfunc_58(&tilePos, param_3);
}

ARM void MapBase::func_ov00_0207f53c(Vec2s *param_1, MapBase *param_2, Vec3p *param_3) {
    u32 uVar1;

    param_1->x = 0;
    param_1->y = 0;
    uVar1      = CoDivide64By32(param_3->x, 0x800);
    param_1->x = (short) ((int) (uVar1 + 0x800) >> 0xc);
    uVar1      = CoDivide64By32(param_3->z, 0x800);
    param_1->y = (short) ((int) (uVar1 + 0x800) >> 0xc);
    return;
}

ARM void MapBase::func_ov00_0207f588(Vec2s *param_1, MapBase *param_2, TilePos *param_3, unk32 param_4) {
    param_1->x = 0;
    param_1->y = 0;
    switch (param_4) {
        case 0:
            param_1->x = (u16) param_3->x << 1;
            param_1->y = (u16) param_3->y << 1;
            return;
        case 1:
            param_1->x = (u16) param_3->x * 2 + 1;
            param_1->y = (u16) param_3->y << 1;
            return;
        case 2:
            param_1->x = (u16) param_3->x << 1;
            param_1->y = (u16) param_3->y * 2 + 1;
            return;
        case 3:
            param_1->x = (u16) param_3->x * 2 + 1;
            param_1->y = (u16) param_3->y * 2 + 1;
            return;
        default:
            return;
    }
}

// Non-matching
ARM void MapBase::func_ov00_0207f630(Vec2s *param_2, Vec3p *param_3) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;

    uVar1      = param_2->y * 0x1000;
    uVar2      = param_2->x * 0x1000;
    uVar3      = param_2->x * 0x800000;
    uVar4      = param_2->y * 0x800000;
    param_3->x = uVar4 + 0x800 >> 0xc | ((((s32) uVar2 >> 0x1f) << 0xb | uVar2 >> 0x15) + (0xfffff7ff < uVar4)) * 0x100000;
    param_3->y = 0;
    param_3->z = uVar3 + 0x800 >> 0xc | ((((s32) uVar1 >> 0x1f) << 0xb | uVar1 >> 0x15) + (0xfffff7ff < uVar3)) * 0x100000;
}

ARM unk32 MapBase::GetTileStartX(unk32 x) {
    return this->mOffset.x + x * 0x1000;
}

ARM unk32 MapBase::GetTileStartZ(unk32 z) {
    return this->mOffset.z + z * 0x1000;
}

ARM unk32 MapBase::GetTileEndX(unk32 x) {
    return this->GetTileStartX(x) + 0x1000;
}

ARM unk32 MapBase::GetTileEndZ(unk32 z) {
    return this->GetTileStartZ(z) + 0x1000;
}

// Non-matching
ARM void MapBase::GetTileBounds(TilePos *tilePos, AABB *bounds) {
    Vec3p start;
    Vec3p end;

    this->GetTileStartX(tilePos->x); // what's the purpose of this?
    start.z = this->GetTileStartZ(tilePos->y);
    start.x = this->GetTileStartX(tilePos->x);
    start.y = FLOAT_TO_Q20(-1.2001); // why not just -1.2?

    end.z = this->GetTileEndZ(tilePos->y);
    end.y = this->vfunc_60(tilePos);
    end.x = this->GetTileEndX(tilePos->x);

    bounds->min = start;
    bounds->max = end;
}

ARM s32 MapBase::GetClampedTileX(s32 worldX) {
    int iVar1;
    int iVar2;

    iVar2 = worldX - this->mOffset.x >> 0xc;
    if (iVar2 < 0) {
        iVar2 = 0;
    }
    iVar1 = (u16) this->mWidth - 1;
    if (iVar2 >= iVar1) {
        iVar2 = iVar1;
    }
    return iVar2;
}

ARM s32 MapBase::GetClampedTileY(s32 worldZ) {
    int iVar1;
    int iVar2;

    iVar2 = worldZ - this->mOffset.z >> 0xc;
    if (iVar2 < 0) {
        iVar2 = 0;
    }
    iVar1 = (u16) this->mHeight - 1;
    if (iVar2 >= iVar1) {
        iVar2 = iVar1;
    }
    return iVar2;
}

ARM unk32 MapBase::GetTileX(s32 worldX) {
    return worldX - this->mOffset.x >> 0xc;
}

ARM unk32 MapBase::GetTileY(s32 worldZ) {
    return worldZ - this->mOffset.z >> 0xc;
}

ARM bool MapBase::IsInBounds(Vec3p *tileWorldPos) {
    int iVar1 = this->GetTileX(tileWorldPos->x);
    int iVar2 = this->GetTileY(tileWorldPos->z);
    if ((iVar1 < 0) || (iVar1 >= (int) (u16) this->mWidth) || (iVar2 < 0) || (iVar2 >= (int) (u16) this->mHeight)) {
        return false;
    }
    return true;
}

// Non-matching
ARM unk32 MapBase::AddEntrance(Entrance *param_2) {
    int iVar1;
    int iVar2;
    u32 uVar3;
    Entrance *pEVar4;

    uVar3 = this->mEntrances.mSize;
    if ((u32) uVar3 < this->mEntrances.mCapacity) {
        this->mEntrances.mSize = uVar3 + 1;
        pEVar4                 = this->mEntrances.mElements + uVar3;
        pEVar4->mPos           = param_2->mPos;
        pEVar4->mAngle         = param_2->mAngle;
        pEVar4->mId            = param_2->mId;
        pEVar4->mUnk_10        = param_2->mUnk_10;
        return pEVar4->mUnk_10;
    }
    return this->mEntrances.push_back(*param_2);
}

// Non-matching
ARM Entrance *MapBase::FindEntrance(unk32 id) {
    Entrance *iter;
    Entrance *begin;
    Entrance *end;

    begin = this->mEntrances.mElements;
    end   = begin + this->mEntrances.mSize;

    for (iter = begin; (s32) iter != (s32) end; iter++) {
        if (id == iter->mId) {
            return iter;
        }
    }
    return begin;
}

ARM void MapBase::func_ov00_0207f924(unk32 param_2) {
    this->mCurrViewpointId[param_2] = this->mUnk_018[param_2];
}

ARM unk32 *MapBase::func_ov00_0207f934() {
    return !this->mUnk_140 ? NULL : this->mUnk_140->mUnk_60;
}

ARM void MapBase::func_ov00_0207f948(unk32 *param_2) {
    if (this->mUnk_140 != NULL) {
        this->mUnk_140->mUnk_60 = param_2;
    }
}

// Non-matching
ARM void MapBase::AddTrigger(TriggerParams *param_2) {
    void *pTVar1;
    u32 size;
    TriggerBase *local_14;

    local_14 = NULL;
    if (param_2->isAABB_Unk1) {
        pTVar1 = new(data_027e0ce0[1], 4) TriggerAABB_Unk1(param_2);
    } else if (param_2->isAABB_Unk2 == true) {
        pTVar1 = new(data_027e0ce0[1], 4) TriggerAABB_Unk2(param_2);
    } else if (param_2->isSphere == true) {
        pTVar1 = new(data_027e0ce0[1], 4) TriggerSphere(param_2);
    } else {
        pTVar1 = new(data_027e0ce0[1], 4) TriggerAABB(param_2);
    }

    local_14 = (TriggerBase *) pTVar1;
    local_14->vfunc_08();
    size = this->mTriggers.mSize;
    if (size < (u32) this->mTriggers.mCapacity) {
        this->mTriggers.mSize = size + 1;
        size--;
        this->mTriggers.mElements[size] = local_14;
    }
    this->mTriggers.push_back(local_14);
}

ARM void TriggerBase::vfunc_08() {}

ARM s32 MapBase::GetTriggerBoundingBox(unk32 param_2, AABB *param_3) {
    int iVar3;
    TriggerBase **p;
    AABB local_38;

    iVar3 = 0;
    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        if (param_2 == (*p)->mId && (*p)->GetBoundingBox(&local_38)) {
            iVar3++;
            param_3->min.x = local_38.min.x;
            param_3->min.y = local_38.min.y;
            param_3->min.z = local_38.min.z;
            param_3->max.x = local_38.max.x;
            param_3->max.y = local_38.max.y;
            param_3->max.z = local_38.max.z;
        }
    }
    return iVar3;
}

ARM bool TriggerBase::GetBoundingBox(AABB *bbox) {
    return false;
}

ARM u32 MapBase::GetTriggerBoundingBoxes(s32 param_2, AABB *param_3, s32 param_4) {
    u32 boxesFound;
    TriggerBase **p;
    AABB local_38;

    boxesFound = 0;
    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        if (param_2 == (*p)->mId && (*p)->GetBoundingBox(&local_38)) {
            boxesFound++;
            param_3->min.x = local_38.min.x;
            param_3->min.y = local_38.min.y;
            param_3->min.z = local_38.min.z;
            param_3->max.x = local_38.max.x;
            param_3->max.y = local_38.max.y;
            param_3->max.z = local_38.max.z;
            param_3++;
        }
        if (boxesFound >= param_4) {
            return boxesFound;
        }
    }
    return boxesFound;
}

// Non-matching
ARM u8 MapBase::GetOverlappingTrigger(Vec3p *param_2) {
    TriggerBase **p;

    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        if ((*p)->Overlaps(param_2)) {
            return (*p)->mId;
        }
    }
    return 0;
}

ARM bool TriggerBase::Overlaps(Vec3p *point) {
    return false;
}

// Non-matching
ARM TriggerBase *MapBase::FindTrigger(unk32 type) {
    TriggerBase **p;

    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {

        if (type == (*p)->mId) {
            return *p;
        }
        this->mTriggers.mElements = p; // why does this give a higher match? is this almost correct?
    }
    return NULL;
}

// Non-matching
ARM unk32 MapBase::GetOverlappingTriggers(Vec3p *param_2, TriggerBase **triggers, unk32 capacity) {
    unk32 uVar2;
    TriggerBase *trigger;
    TriggerBase **iter;

    iter    = this->mTriggers.mElements;
    int var = (int) this->mTriggers.mElements + this->mTriggers.mSize * 4;
    uVar2   = 0;
    if (iter != (TriggerBase **) var) {
        do {
            if ((u32) uVar2 >= capacity) {
                break;
            }
            trigger = *iter;

            if (trigger->Overlaps(param_2)) {
                triggers[uVar2] = trigger;
                uVar2++;
            }
            iter++;
        } while (iter != this->mTriggers.mElements + this->mTriggers.mSize);
    }
    return uVar2;
}

ARM bool MapBase::IsTriggerTypeOverlapped(unk32 type, Vec3p *param_3) {
    TriggerBase **p;

    if (type == 0) {
        return true;
    }
    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        if (type == (*p)->mId && (*p)->Overlaps(param_3)) {
            return true;
        }
    }
    return false;
}

ARM bool MapBase::AnyTrigger_func_0c(unk32 type) {
    TriggerBase **p;
    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        if (type == (*p)->mId) {
            (*p)->vfunc_0c(true);
        }
    }
    return true;
}

ARM bool TriggerBase::vfunc_0c(bool param_2) {
    return false;
}

ARM void MapBase::Trigger_vfunc_08() {
    TriggerBase **p;
    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        (*p)->vfunc_08();
    }
}

ARM bool MapBase::AddTrigger(TriggerBase *param_2) {
    TriggerBase *pTVar1;
    TriggerBase **iter;
    u32 uVar2;
    TriggerBase **end;

    if ((u32) this->mTriggers.mSize >= 0x40) {
        return false;
    }
    iter   = this->mTriggers.mElements;
    pTVar1 = (TriggerBase *) this->mTriggers.mSize;
    end    = iter + (int) pTVar1;
    while (true) {
        if (iter != end) {
            pTVar1 = *iter;
        }
        if (iter == end || pTVar1 == param_2) {
            break;
        }
        iter++;
    }
    if (iter != end) {
        return false;
    }
    if (param_2->mUnk_04) {
        return false;
    }
    uVar2 = this->mTriggers.mSize;
    if (uVar2 < (u32) this->mTriggers.mCapacity) {
        this->mTriggers.mSize            = uVar2 + 1;
        this->mTriggers.mElements[uVar2] = param_2;
    } else {
        this->mTriggers.push_back(param_2);
    }
    return true;
}

ARM bool MapBase::func_ov00_0207ff88(TriggerBase *param_2) {
    TriggerBase *pTVar1;
    TriggerBase **ppTVar2;
    TriggerBase **first;
    TriggerBase **ppTVar3;
    TriggerBase **ppTVar4;

    if (!param_2->mUnk_04) {
        return false;
    }
    first   = this->mTriggers.mElements;
    pTVar1  = (TriggerBase *) this->mTriggers.mSize;
    ppTVar2 = first + (int) pTVar1;
    while (true) {
        if (first != ppTVar2) {
            pTVar1 = *first;
        }
        if (first == ppTVar2 || pTVar1 == param_2) {
            break;
        }
        first++;
    }
    ppTVar3 = first;
    if (first != ppTVar2) {
        ppTVar3 = first + 1;
    }
    ppTVar4 = first;
    if (first != ppTVar2 && ppTVar3 != ppTVar2) {
        do {
            pTVar1 = *ppTVar3;
            ppTVar3++;
            first = ppTVar4;
            if (pTVar1 != param_2) {
                first    = ppTVar4 + 1;
                *ppTVar4 = pTVar1;
            }
            ppTVar4 = first;
        } while (ppTVar3 != ppTVar2);
    }
    this->mTriggers.erase(first, this->mTriggers.mElements + this->mTriggers.mSize);
    return true;
}

ARM void MapBase::func_ov00_0208005c(unk32 param_2, unk32 param_3, unk32 param_4) {
    this->mUnk_144->func_ov000_0209c1e4(param_2, param_3, param_4);
}

ARM void MapBase::func_ov00_0208006c(unk32 param_2, unk32 param_3) {
    this->mUnk_144->func_ov000_0209c2b4(param_2, param_3);
}

ARM void MapBase::func_ov00_0208007c(unk32 param_2, unk32 param_3) {
    this->mUnk_144->func_ov000_0209c2d0(param_2, param_3);
}

ARM void MapBase::func_ov00_0208008c(u32 param_2) {
    this->mUnk_144->func_ov000_0209c8e4(param_2);
}

// Non-matching
ARM void MapBase::AddExit(Exit *param_2) {
    u32 uVar1;
    Exit *pEVar2;

    uVar1 = this->mExits.mSize;
    if (uVar1 < this->mExits.mCapacity) {
        this->mExits.mSize          = uVar1 + 1;
        uVar1                       = this->mExits.mSize - 1; // why?
        pEVar2                      = this->mExits.mElements;
        pEVar2[uVar1].mDestCourse   = param_2->mDestCourse;
        pEVar2[uVar1].mUnk_04       = param_2->mUnk_04;
        pEVar2[uVar1].mUnk_08       = param_2->mUnk_08;
        pEVar2[uVar1].mUnk_0c       = param_2->mUnk_0c;
        pEVar2[uVar1].mUnk_10       = param_2->mUnk_10;
        pEVar2[uVar1].mDestMap      = param_2->mDestMap;
        pEVar2[uVar1].mDestEntrance = param_2->mDestEntrance;
        pEVar2[uVar1].mUnk_14       = param_2->mUnk_14;
        pEVar2[uVar1].mUnk_15       = param_2->mUnk_15;
        return;
    }
    this->mExits.push_back(*param_2);
}

// Non-matching
ARM u8 MapBase::func_ov00_02080140(Exit *param_2) {
    Exit *pEVar1;
    u32 uVar2;
    Exit *pEVar3;
    Exit *pEVar4;
    MapBase_Unk1 MStack_54;

    MStack_54.mExit_04.mDestCourse   = param_2->mDestCourse;
    MStack_54.mExit_04.mUnk_04       = param_2->mUnk_04;
    MStack_54.mExit_04.mUnk_08       = param_2->mUnk_08;
    MStack_54.mExit_04.mUnk_0c       = param_2->mUnk_0c;
    pEVar3                           = &MStack_54.mExit_04;
    MStack_54.mExit_04.mUnk_10       = param_2->mUnk_10;
    MStack_54.mExit_04.mDestMap      = param_2->mDestMap;
    MStack_54.mExit_04.mDestEntrance = param_2->mDestEntrance;
    MStack_54.mExit_04.mUnk_14       = param_2->mUnk_14;
    MStack_54.mExit_04.mUnk_15       = param_2->mUnk_15;
    pEVar1                           = this->mExits.mElements;
    MStack_54.mExit_1c.mDestCourse   = MStack_54.mExit_04.mDestCourse;
    MStack_54.mExit_1c.mUnk_04       = MStack_54.mExit_04.mUnk_04;
    MStack_54.mExit_1c.mUnk_08       = MStack_54.mExit_04.mUnk_08;
    MStack_54.mExit_1c.mUnk_0c       = MStack_54.mExit_04.mUnk_0c;
    MStack_54.mExit_1c.mUnk_10       = MStack_54.mExit_04.mUnk_10;
    MStack_54.mExit_1c.mDestMap      = MStack_54.mExit_04.mDestMap;
    MStack_54.mExit_1c.mDestEntrance = MStack_54.mExit_04.mDestEntrance;
    MStack_54.mExit_1c.mUnk_14       = MStack_54.mExit_04.mUnk_14;
    MStack_54.mExit_1c.mUnk_15       = MStack_54.mExit_04.mUnk_15;
    MStack_54.func_ov00_02080324(pEVar1, (pEVar1 + this->mExits.mSize), pEVar3);
    pEVar1 = this->mExits.mElements;
    pEVar4 = pEVar1 + this->mExits.mSize;
    if ((Exit *) MStack_54.mUnk_00 == pEVar4) {
        if (pEVar1 != pEVar4) {
            pEVar3 = pEVar1 + 1;
        }
        if (pEVar1 != pEVar4 && pEVar3 != pEVar4) {
            do {
                if (pEVar1->mUnk_14 < pEVar3->mUnk_14) {
                    pEVar1 = pEVar3;
                }
                pEVar3++;
            } while (pEVar3 != pEVar4);
        }
        if (pEVar1 == this->mExits.mElements + this->mExits.mSize) {
            MStack_54.mExit_1c.mUnk_14 = 1;
        } else {
            MStack_54.mExit_1c.mUnk_14 = pEVar1->mUnk_14 + 1;
        }
        uVar2 = this->mExits.mSize;
        if (uVar2 < (u32) this->mExits.mCapacity) {
            this->mExits.mSize          = uVar2 + 1;
            pEVar3                      = this->mExits.mElements;
            pEVar3[uVar2].mDestCourse   = MStack_54.mExit_1c.mDestCourse;
            pEVar3[uVar2].mUnk_04       = MStack_54.mExit_1c.mUnk_04;
            pEVar3[uVar2].mUnk_08       = MStack_54.mExit_1c.mUnk_08;
            pEVar3[uVar2].mUnk_0c       = MStack_54.mExit_1c.mUnk_0c;
            pEVar3[uVar2].mUnk_10       = MStack_54.mExit_1c.mUnk_10;
            pEVar3[uVar2].mDestMap      = MStack_54.mExit_1c.mDestMap;
            pEVar3[uVar2].mDestEntrance = MStack_54.mExit_1c.mDestEntrance;
            pEVar3[uVar2].mUnk_14       = MStack_54.mExit_1c.mUnk_14;
            pEVar3[uVar2].mUnk_15       = MStack_54.mExit_1c.mUnk_15;
        } else {
            this->mExits.push_back(MStack_54.mExit_1c);
        }
    } else {
        MStack_54.mExit_1c.mUnk_14 = ((Exit *) MStack_54.mUnk_00)->mUnk_14;
    }
    return MStack_54.mExit_1c.mUnk_14;
}

struct UnkStruct_02080324 { // Is this UnkStruct_027e0d38_UnkC? Members don't match, causes overlay checksum issues, but has
                            // same method. Could it be Exit?
    /* 00 */ unk32 mUnk_00[2];
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk8 mUnk_0c;
    /* 0d */ unk8 mUnk_0d;

    unk32 func_ov000_020a5e9c(void);
};

// Non-matching
ARM void MapBase_Unk1::func_ov00_02080324(void *param_2, void *param_3, void *param_4) {
    int iVar1;
    bool bVar2;
    bool bVar3;
    bool bVar4;
    u64 uVar5;

    for (; (UnkStruct_02080324 *) param_2 != (UnkStruct_02080324 *) param_3; (UnkStruct_02080324 *) param_2 += 0x18) {
        iVar1 = ((UnkStruct_02080324 *) param_2)->func_ov000_020a5e9c();
        uVar5 = ((UnkStruct_02080324 *) param_4)->func_ov000_020a5e9c();
        bVar2 = iVar1 == (int) uVar5;
        if (bVar2) {
            uVar5 = (u64) (unk8 *) ((UnkStruct_02080324 *) param_2)->mUnk_0c << 4 &
                    (u32) ((UnkStruct_02080324 *) param_4)->mUnk_0c; // CONCAT14
        }
        bVar3 = (int) (uVar5 >> 0x20) == (int) uVar5;
        bVar4 = bVar2 && bVar3;
        if (bVar4) {
            bVar4 = ((UnkStruct_02080324 *) param_2)->mUnk_0d == ((UnkStruct_02080324 *) param_4)->mUnk_0d;
        }
        if (bVar4) {
            bVar4 = ((UnkStruct_02080324 *) param_2)->mUnk_08 == ((UnkStruct_02080324 *) param_4)->mUnk_08;
        }
        if (bVar4) {
            break;
        }
    }
    this->mUnk_00 = (unk32 *) param_2;
}

// Non-matching
ARM bool MapBase::FindExit(u32 param_2, Exit *param_3) {
    u8 uVar1;
    Exit *iter;
    Exit *end;

    if ((int) param_2 < 1) {
        return false;
    }
    iter  = this->mExits.mElements;
    end   = iter + this->mExits.mSize;
    uVar1 = param_2 & 0xff;
    while (true) {
        if (iter != end) {
            uVar1 = iter->mUnk_14;
        }
        if (iter == end || (param_2 & 0xff) == uVar1) {
            break;
        }
        iter++;
    }
    if (iter == end) {
        param_3->mDestCourse   = iter->mDestCourse;
        param_3->mUnk_04       = iter->mUnk_04;
        param_3->mUnk_08       = iter->mUnk_08;
        param_3->mUnk_0c       = iter->mUnk_0c;
        param_3->mUnk_10       = iter->mUnk_10;
        param_3->mDestMap      = iter->mDestMap;
        param_3->mDestEntrance = iter->mDestEntrance;
        param_3->mUnk_14       = iter->mUnk_14;
        param_3->mUnk_15       = iter->mUnk_15;
        return true;
    }
    return false;
}

// Non-matching
ARM void MapBase::AddCameraViewpoint(CameraViewpoint *param_2) {
    unk16 uVar1;
    u32 uVar2;
    CameraViewpoint *pCVar3;

    uVar2 = this->mViewpoints.mSize;
    if (uVar2 < (u32) this->mViewpoints.mCapacity) {
        this->mViewpoints.mSize  = uVar2 + 1;
        pCVar3                   = this->mViewpoints.mElements;
        pCVar3[uVar2].mUnk_00    = param_2->mUnk_00;
        pCVar3[uVar2].mUnk_04    = param_2->mUnk_04;
        pCVar3[uVar2].mPos.x     = param_2->mPos.x;
        pCVar3[uVar2].mPos.y     = param_2->mPos.y;
        pCVar3[uVar2].mPos.z     = param_2->mPos.z;
        pCVar3[uVar2].mUnk_14    = param_2->mUnk_14;
        pCVar3[uVar2].mUnk_16    = param_2->mUnk_16;
        uVar1                    = param_2->mUnk_18[1];
        pCVar3[uVar2].mUnk_18[0] = param_2->mUnk_18[0];
        pCVar3[uVar2].mUnk_18[1] = uVar1;
        return;
    }
    this->mViewpoints.push_back(*param_2);
}

// Non-matching
ARM bool MapBase::FindViewpoint_Unk_4(char id, CameraViewpoint *param_3) {
    unk16 uVar1;
    char cVar2;
    CameraViewpoint *iter;
    CameraViewpoint *end;

    iter  = this->mViewpoints.mElements;
    end   = iter + this->mViewpoints.mSize;
    cVar2 = id;
    while (true) {
        if (iter != end) {
            cVar2 = iter->mUnk_04;
        }
        if (iter == end || id == cVar2) {
            break;
        }
        iter++;
    }
    if (iter != end) {
        param_3->mUnk_00    = iter->mUnk_00;
        param_3->mUnk_04    = iter->mUnk_04;
        param_3->mPos.x     = iter->mPos.x;
        param_3->mPos.y     = iter->mPos.y;
        param_3->mPos.z     = iter->mPos.z;
        param_3->mUnk_14    = iter->mUnk_14;
        param_3->mUnk_16    = iter->mUnk_16;
        uVar1               = iter->mUnk_18[1];
        param_3->mUnk_18[0] = iter->mUnk_18[0];
        param_3->mUnk_18[1] = uVar1;
        return true;
    }
    return false;
}

// Non-matching
ARM bool MapBase::FindViewpoint_Unk_0(s32 param_2, CameraViewpoint *param_3) {
    unk16 uVar1;
    int iVar2;
    CameraViewpoint *iter;
    CameraViewpoint *end;

    iter  = this->mViewpoints.mElements;
    iVar2 = 0x1c;
    end   = iter + this->mViewpoints.mSize;
    while (true) {
        if (iter != end) {
            iVar2 = iter->mUnk_00;
        }
        if (iter == end || param_2 == iVar2) {
            break;
        }
        iter++;
    }
    if (iter != end) {
        param_3->mUnk_00    = iter->mUnk_00;
        param_3->mUnk_04    = iter->mUnk_04;
        param_3->mPos.x     = iter->mPos.x;
        param_3->mPos.y     = iter->mPos.y;
        param_3->mPos.z     = iter->mPos.z;
        param_3->mUnk_14    = iter->mUnk_14;
        param_3->mUnk_16    = iter->mUnk_16;
        uVar1               = iter->mUnk_18[1];
        param_3->mUnk_18[0] = iter->mUnk_18[0];
        param_3->mUnk_18[1] = uVar1;
        return true;
    }
    return false;
}

// Non-matching
ARM void MapBase::GetCurrentViewpoint(CameraViewpoint *param_2, s32 param_3) {
    u32 uVar3;
    u32 uVar4;

    u8 viewId = this->mCurrViewpointId[param_3];
    if (viewId == 0) {
        param_2->mUnk_00 = this->vfunc_b8(param_3);
        return;
    }

    CameraViewpoint local_30;
    uVar3 = 0;
    do {
        uVar4                   = uVar3 + 1;
        local_30.mUnk_18[uVar3] = 0;
        uVar3                   = uVar4;
    } while (uVar4 < 2);
    if (!this->FindViewpoint_Unk_4(viewId, &local_30)) {
        param_2->mUnk_00 = this->vfunc_b8(param_3);
        return;
    }
    param_2->mUnk_00    = local_30.mUnk_00;
    param_2->mUnk_04    = local_30.mUnk_04;
    param_2->mPos.x     = local_30.mPos.x;
    param_2->mPos.y     = local_30.mPos.y;
    param_2->mPos.z     = local_30.mPos.z;
    param_2->mUnk_14    = local_30.mUnk_14;
    param_2->mUnk_16    = local_30.mUnk_16;
    param_2->mUnk_18[0] = local_30.mUnk_18[0];
    param_2->mUnk_18[1] = local_30.mUnk_18[1];
}

// Non-matching
ARM unk32 MapBase::GetCurrentViewpoint_Unk_00(s32 param_2) {
    u32 uVar1 = 0;
    u32 uVar2;
    CameraViewpoint local_20;

    do {
        local_20.mUnk_18[uVar1] = 0;
        uVar2                   = uVar1 + 1;
        uVar1                   = uVar2;
    } while (uVar2 < 2);
    this->GetCurrentViewpoint(&local_20, param_2);
    return local_20.mUnk_00;
}

ARM unk32 MapBase::vfunc_b8(unk32 param_2) {
    int iVar1;

    if (gGame.mModeId == 6) {
        iVar1 = func_ov000_02079e3c();
        switch (iVar1) {
            case 0:
                return 0;
            case 1:
                return 0x1c;
            default:
                return 0x1c;
        }
    }
    return 0;
}

// Non-matching
ARM bool MapBase::func_ov00_02080824(u32 param_2, unk8 *param_3) {
    int iVar1;
    int iVar2;
    int iVar3;

    iVar2 = this->mUnk_14c;
    if (iVar2 == 0) {
        return false;
    }
    iVar3 = 0;
    // iVar1 = iVar2;
    if (*(u16 *) (iVar2 + 4) > 0) {
        do {
            if (param_2 == *(u8 *) (iVar1 + 8)) {
                iVar1                       = iVar2 + 8 + iVar3 * 0x1c;
                *param_3                    = *(u8 *) (iVar2 + 8 + iVar3 * 0x1c);
                param_3[1]                  = *(u8 *) (iVar1 + 1);
                *(unk16 *) (param_3 + 2)    = *(unk16 *) (iVar1 + 2);
                *(unk32 *) (param_3 + 4)    = *(unk32 *) (iVar1 + 4);
                *(unk32 *) (param_3 + 8)    = *(unk32 *) (iVar1 + 8);
                *(unk32 *) (param_3 + 0xc)  = *(unk32 *) (iVar1 + 0xc);
                *(unk32 *) (param_3 + 0x10) = *(unk32 *) (iVar1 + 0x10);
                *(unk32 *) (param_3 + 0x14) = *(unk32 *) (iVar1 + 0x14);
                *(unk32 *) (param_3 + 0x18) = *(unk32 *) (iVar1 + 0x18);
                return true;
            }
            iVar3++;
            iVar1 += 0x1c;
        } while (iVar3 < (int) *(u16 *) (iVar2 + 4));
    }
    return false;
}

// Non-matching
ARM bool MapBase::AddUnk_130(TriggerBase *param_2) {
    TriggerBase *pTVar1;
    TriggerBase **iter;
    u32 uVar2;
    TriggerBase **end;

    if ((u32) this->mUnk_130.mSize >= 0x20) {
        return false;
    }
    iter   = this->mUnk_130.mElements;
    pTVar1 = (TriggerBase *) this->mUnk_130.mSize;
    end    = iter + (int) pTVar1;
    while (true) {
        if (iter != end) {
            pTVar1 = *iter;
        }
        if (iter == end || pTVar1 == param_2) {
            break;
        }
        iter++;
    }
    if (iter != end) {
        return false;
    }
    uVar2 = this->mUnk_130.mSize;
    if (uVar2 < (u32) this->mUnk_130.mCapacity) {
        this->mUnk_130.mSize            = uVar2 + 1;
        this->mUnk_130.mElements[uVar2] = param_2;
    } else {
        this->mUnk_130.push_back(param_2);
    }
    return true;
}

// Not-matching
ARM bool MapBase::func_ov00_020809b8(TriggerBase *param_2) {
    TriggerBase *pTVar1;
    TriggerBase **end;
    TriggerBase **iter;
    TriggerBase **ppTVar2;
    TriggerBase **ppTVar3;

    iter   = this->mUnk_130.mElements;
    pTVar1 = (TriggerBase *) this->mUnk_130.mSize;
    end    = iter + (int) pTVar1;
    while (true) {
        if (iter != end) {
            pTVar1 = *iter;
        }
        if (iter == end || pTVar1 == param_2) {
            break;
        }
        iter = iter + 1;
    }
    ppTVar2 = iter;
    if (iter != end) {
        ppTVar2 = iter + 1;
    }
    ppTVar3 = iter;
    if (iter != end && ppTVar2 != end) {
        do {
            pTVar1  = *ppTVar2;
            ppTVar2 = ppTVar2 + 1;
            iter    = ppTVar3;
            if (pTVar1 != param_2) {
                iter     = ppTVar3 + 1;
                *ppTVar3 = pTVar1;
            }
            ppTVar3 = iter;
        } while (ppTVar2 != end);
    }
    this->mUnk_130.erase(iter, this->mUnk_130.mElements + this->mUnk_130.mSize);
    return true;
}

// Non-matching
ARM TriggerBase *MapBase::func_ov00_02080a78(Vec3p *param_2) {
    MapBase_Unk2 local_18;

    local_18.mVec    = *param_2;
    local_18.ppTVar2 = this->mUnk_130.mElements;
    local_18.ppTVar1 = this->mUnk_130.mElements + this->mUnk_130.mSize;

    // local_18.func_ov00_02080ad0(local_18.ppTVar2, local_18.ppTVar1);
    if (local_18.mTrigger == this->mUnk_130.mElements + this->mUnk_130.mSize) {
        return NULL;
    }
    return *local_18.mTrigger;
}

ARM void MapBase_Unk2::func_ov00_02080ad0(MapBase_Unk2_02080ad0 param_2, TriggerBase **param_3) {
    TriggerBase **i = param_2.mUnk_00;
    while (i != param_2.mUnk_04 && (*i)->vfunc_00(param_3) == 0) {
        ++i;
    }
    this->ppTVar1 = i;
}

struct UnkStruct_02080b24 {
    virtual unk32 vfunc_1c();
};

// Non-matching
ARM void MapBase::func_ov00_02080b24(TilePos *param_2) {
    UnkStruct_02080b24 *piVar1;
    int iVar2;
    int dx;
    int dy;
    int dx_;
    int dy_;
    UnkStruct_02080b24 *piVar3;
    int x;
    int y;
    TilePos uStack_2c;
    TilePos uStack_2a;
    TilePos uStack_28;
    int dist;
    u16 height;
    u16 width;

    dist = this->vfunc_58(param_2, 4);
    if (dist != 0) {
        return;
    }
    if (0x5f < (u16) this->mUnk_030) {
        piVar3 = NULL;
        width  = this->mWidth;
        dist   = 0;
        x      = 0;
        height = this->mHeight;
        if (width != 0) {
            do {
                y = 0;
                if (height != 0) {
                    do {
                        uStack_28.x = (u8) x;
                        uStack_28.y = (u8) y;
                        piVar1      = (UnkStruct_02080b24 *) this->vfunc_78(&uStack_28);
                        if ((piVar1 != NULL) && (iVar2 = piVar1->vfunc_1c(), iVar2 == 0x42)) {
                            if (piVar3 == NULL) {
                                dx     = ABS(x - (u32) param_2->x);
                                dy     = ABS(y - (u32) param_2->y);
                                piVar3 = piVar1;
                                dist   = dx + dy;
                            } else {
                                dx_ = ABS(x - (u32) param_2->x);
                                dy_ = ABS(y - (u32) param_2->y);
                                if (dist < dx_ + dy_) {
                                    piVar3 = piVar1;
                                    dist   = dx_ + dy_;
                                }
                            }
                        }
                        y = y + 1;
                    } while (y < (int) (u32) height);
                }
                x = x + 1;
            } while (x < (int) (u32) width);
        }
        if (piVar3 == NULL) {
            return;
        }
        // piVar3[1] = piVar3[1] & 0xfffffffe;
        uStack_2a.x = *(unk8 *) ((int) piVar3 + 0x15);
        // uStack_2a.y = *(unk8 *) piVar3[5];
        this->vfunc_98(&uStack_2a, 4, 0);
        uStack_2c.x = *(unk8 *) ((int) piVar3 + 0x15);
        // uStack_2c.y = (unk8) piVar3[5];
        this->vfunc_98(&uStack_2c, 6, 1);
        this->mUnk_030--;
    }
    this->vfunc_98(param_2, 4, 1);
    this->mUnk_030++;
}

ARM void MapBase::func_ov00_02080d08(TilePos *param_2) {

    int iVar1;

    iVar1 = this->vfunc_58(param_2, 4);
    if (iVar1 == 0) {
        return;
    }
    this->vfunc_98(param_2, 4, 0);
    this->vfunc_98(param_2, 6, 1);
    this->mUnk_030--;
}

ARM void MapBase::vfunc_bc() {}

ARM void MapBase::vfunc_98(TilePos *param_2, unk32 param_3, unk32 param_4) {}

ARM void MapBase::vfunc_c0() {}

ARM bool MapBase::TriggerOfType_vfunc_10(unk32 type) {
    TriggerBase **p;
    for (p = this->mTriggers.mElements; (s32) p != (s32) (this->mTriggers.mElements + this->mTriggers.mSize); p++) {
        if (type == (*p)->mId) {
            (*p)->vfunc_10();
        }
    }

    return true;
}

ARM unk32 TriggerBase::vfunc_10() {
    return 1;
}

ARM void MapBase::func_ov00_02080de4() {}

struct UnkStruct_02080de8_iVar3 {
    /* 000 */ unk8 mUnk_000[0x15c];
    /* 15c */ unk32 mUnk_15c;
    /* 160 */ unk8 mUnk_160[0xc4];
    /* 224 */ unk16 mUnk_224;
};

// Non-matching
ARM void MapBase::func_ov00_02080de8(unk32 param_2) {
    unk8 uVar2 = 0;
    UnkStruct_02080de8_iVar3 *iVar3;

    iVar3 = (UnkStruct_02080de8_iVar3 *) ((unk32 *) data_027e0f64->mUnk_4 + param_2);

    switch (iVar3->mUnk_15c) {
        case 0:
        case 1:
        case 2:
        case 0x15:
        case 0x16:
        case 0x33:
        case 0xb:
        case 0x5a:
        case 0x5b:
            uVar2 = 0;
            goto LAB_arm9_ov000__02080ec8;
        case 3:
            uVar2 = 0x1f;
            goto LAB_arm9_ov000__02080ec8;
        default:
            goto LAB_02080e20_caseD_c;
    }

LAB_02080e20_caseD_c:
    if ((func_ov000_02087dd8(iVar3) != 0) && ((iVar3->mUnk_224 <= 0x1c72 || iVar3->mUnk_224 >= 0x4000))) {
        uVar2 = 0x1f;
    }
LAB_arm9_ov000__02080ec8:
    this->mUnk_140->mUnk_5c = uVar2;
}

ARM void MapBase::func_ov00_02080edc() {
    switch (data_027e0d38->mUnk_0c.func_ov000_020a5e9c()) {
        case 0x2a:
        case 0x2f:
        case 0x30:
            this->mUnk_005 = 0;
            return;
        default:
            this->mUnk_005 = 1;
    }
}
