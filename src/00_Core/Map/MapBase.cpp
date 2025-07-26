// TODO: Make sure every function has either ARM or THUMB
// TODO: Optimise functions' bodies as much as possible (without affecting asm)
// Clear these comments when done

#include "Map/MapBase.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e0e58.hpp"
#include "DTCM/UnkStruct_027e0f78.hpp"
#include "Map/MapManager.hpp"
#include "Render/ModelRender.hpp"
#include "Unknown/UnkStruct_020ee0a0.hpp"
#include "Unknown/UnkStruct_027e0f88.hpp"
#include "stdio.h"

extern "C" void Fill32(unk32, u32 *, unk32);
extern "C" void func_020196bc(ItemModel *param1, unk32 param2);
extern "C" void func_020196fc(ItemModel *param1, unk32 param2);
extern "C" unk32 *func_0201e4cc(unk32 *param_1);

extern void func_ov000_020a3de0(bool, unk32);

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
    /* 04 */ UnkStruct_020ec81c_04 *mUnk_04;
  /* 08 */
};

#pragma section sbss begin
UnkStruct_020ec81c data_ov000_020ec81c;
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

    pVVar5                = course->FindMapCenter(map);
    vec                   = *pVVar5;
    (this->mBounds).min.x = vec.x - iVar1;
    (this->mBounds).min.y = vec.y;
    (this->mBounds).min.z = vec.z - iVar2;
    (this->mCenter).x     = vec.x;
    (this->mCenter).y     = vec.y;
    (this->mCenter).z     = vec.z;
    (this->mBounds).max.x = vec.x + iVar1;
    (this->mBounds).max.y = vec.y;
    (this->mBounds).max.z = vec.z + iVar2;
    (this->mOffset).x     = -iVar1;
    (this->mOffset).y     = 0;
    (this->mOffset).z     = -iVar2;
}

MapManager_Unk2::~MapManager_Unk2() {}

ARM void MapBase::GetMapFilePath(char *courseName, unk32 num1, char *buf) {
    sprintf(buf, "Map/%s/map%d%d.bin\0", courseName, num1 / 10, num1 % 10);
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

s32 MapBase::func_ov00_0207e0f0(s32 param_2) {
    /*byte bVar1;
    ushort uVar2;
    ushort *puVar3;
    int iVar4;
    uint uVar5;
    int iVar6;
    int iVar7;
    int iVar8;
    int iVar9;
    uint uVar10;
    int iVar11;
    int iVar12;
    uint uStack_30;

    iVar6 = param_1->field179_0x13c;
    if (iVar6 == 0) {
      return -1;
    }
    puVar3 = (ushort *)(iVar6 + *(int *)(iVar6 + 8));
    if (puVar3 != (ushort *)0x0) {
      iVar6 = (int)puVar3 + (uint)*puVar3;
      if (iVar6 == 0) {
        return -1;
      }
      uStack_30 = 0;
      if (*(char *)(iVar6 + 1) != '\0') {
        iVar11 = 0;
        do {
          iVar8 = iVar6 + (uint)*(ushort *)(iVar6 + 6);
          iVar8 = iVar8 + (uint)*(ushort *)(iVar8 + 2);
          iVar4 = (**(code **)(param_1->vtable + 0xb4))();
          iVar4 = func_0201e24c((astruct *)(iVar4 + 0x3c),(char *)(iVar8 + iVar11));
          if (iVar4 != 0) {
            iVar9 = 0;
            iVar7 = iVar6 + (uint)*(ushort *)(iVar6 + 6) + 4;
            iVar4 = *(ushort *)(iVar6 + (uint)*(ushort *)(iVar6 + 6)) * uStack_30;
            iVar12 = iVar7 + iVar4;
            uVar2 = *(ushort *)(iVar7 + iVar4);
            if (*(char *)(iVar12 + 2) != '\0') {
              do {
                if (param_2 == (uint)*(byte *)((int)puVar3 + (uint)uVar2) + iVar9) {
                  iVar4 = (**(code **)(param_1->vtable + 0xb4))();
                  bVar1 = *(byte *)(iVar4 + 0x3d);
                  uVar10 = 0;
                  if (bVar1 != 0) {
                    iVar4 = iVar4 + 0x3c + (uint)*(ushort *)(iVar4 + 0x42);
                    do {
                      iVar7 = strcmp((byte *)(iVar4 + (uint)*(ushort *)(iVar4 + 2) + uVar10 * 0x10),
                                     (byte *)(iVar8 + iVar11));
                      if (iVar7 == 0) {
                        return uVar10;
                      }
                      uVar5 = uVar10 + 1;
                      uVar10 = uVar5 & 0xffff;
                    } while ((uVar5 & 0xffff) < (uint)bVar1);
                  }
                }
                iVar9 = iVar9 + 1;
              } while (iVar9 < (int)(uint)*(byte *)(iVar12 + 2));
            }
          }
          iVar11 = iVar11 + 0x10;
          uStack_30 = uStack_30 + 1;
        } while (uStack_30 < *(byte *)(iVar6 + 1));
      }
      return -1;
    }
    return -1;
    */
}

s32 MapBase::func_ov00_0207e28c(s32 param_2) {
    /*
    byte bVar1;
    ushort uVar2;
    int iVar3;
    int iVar4;
    uint uVar5;
    int iVar6;
    int iVar7;
    int iVar8;
    int iVar9;
    uint uVar10;
    int iVar11;
    int iVar12;
    uint uStack_30;

    iVar6 = param_1->field179_0x13c;
    if (iVar6 == 0) {
        return -1;
    }
    iVar6 = iVar6 + *(int *)(iVar6 + 8);
    if (iVar6 != 0) {
        iVar3 = iVar6 + (uint)*(ushort *)(iVar6 + 2);
        if (iVar3 == 0) {
            return -1;
    }
    uStack_30 = 0;
    if (*(char *)(iVar3 + 1) != '\0') {
        iVar11 = 0;
        do {
        iVar8 = iVar3 + (uint)*(ushort *)(iVar3 + 6);
        iVar8 = iVar8 + (uint)*(ushort *)(iVar8 + 2);
        iVar4 = (**(code **)(param_1->vtable + 0xb4))();
        iVar4 = func_0201e24c((astruct *)(iVar4 + (uint)*(ushort *)(iVar4 + 0x34)),
                                (char *)(iVar8 + iVar11));
        if (iVar4 != 0) {
            iVar9 = 0;
            iVar7 = iVar3 + (uint)*(ushort *)(iVar3 + 6) + 4;
            iVar4 = *(ushort *)(iVar3 + (uint)*(ushort *)(iVar3 + 6)) * uStack_30;
            iVar12 = iVar7 + iVar4;
            uVar2 = *(ushort *)(iVar7 + iVar4);
            if (*(char *)(iVar12 + 2) != '\0') {
            do {
                if (param_2 == (uint)*(byte *)(iVar6 + (uint)uVar2) + iVar9) {
                iVar4 = (**(code **)(param_1->vtable + 0xb4))();
                iVar7 = (**(code **)(param_1->vtable + 0xb4))();
                uVar10 = 0;
                iVar4 = iVar4 + (uint)*(ushort *)(iVar7 + 0x34);
                bVar1 = *(byte *)(iVar4 + 1);
                if (bVar1 != 0) {
                    iVar4 = iVar4 + (uint)*(ushort *)(iVar4 + 6);
                    do {
                    iVar7 = strcmp((byte *)(iVar4 + (uint)*(ushort *)(iVar4 + 2) + uVar10 * 0x10),
                                    (byte *)(iVar8 + iVar11));
                    if (iVar7 == 0) {
                        return uVar10;
                    }
                    uVar5 = uVar10 + 1;
                    uVar10 = uVar5 & 0xffff;
                    } while ((uVar5 & 0xffff) < (uint)bVar1);
                }
                }
                iVar9 = iVar9 + 1;
            } while (iVar9 < (int)(uint)*(byte *)(iVar12 + 2));
            }
        }
        iVar11 = iVar11 + 0x10;
        uStack_30 = uStack_30 + 1;
        } while (uStack_30 < *(byte *)(iVar3 + 1));
    }
    return -1;
    }
    return -1;
    */
}

ARM unk32 *MapBase::vfunc_b4() {
    if (data_ov000_020ec81c.mUnk_04 != NULL) {
        return func_0201e4cc(data_ov000_020ec81c.mUnk_04->mUnk_08);
    }
    return NULL;
}

void MapBase::vfunc_48() {
    this->Trigger_vfunc_08();
    this->mUnk_144->func_ov000_0209c8e4(0);
    return;
}

unk32 MapBase::vfunc_50() {
    return 0;
}

unk32 MapBase::vfunc_54(TilePos *param_1) {
    return 0;
}

unk32 MapBase::vfunc_58(TilePos *param_1, int param_2) {
    return 0;
}

unk32 MapBase::vfunc_5c() {
    return 0;
}

unk32 MapBase::vfunc_60(TilePos *param_1) {
    return 0;
}

unk32 MapBase::vfunc_64() {
    return 0;
}

unk32 MapBase::vfunc_68(Vec3p *param_1, bool param_2) {
    /**
      int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  bool bVar7;
  TilePos aVStack_98 [2];
  uint local_94;
  int iStack_90;
  int iStack_8c;
  Vec3p local_88;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined2 local_70;
  undefined2 local_6e;
  undefined2 local_6c;
  undefined2 local_6a;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;

  MapManager::func_ov00_02083a1c(aVStack_98,(MapManager *)gMapManager,param_2);
  iVar1 = (**(code **)(param_1->vtable + 0x54))(param_1,aVStack_98);
  if (0x1e < iVar1) {
    if (iVar1 < 0x36) {
      if (0x34 < iVar1) {
        if (param_3 != 0) {
          bVar7 = func_ov00_0207f104(param_1,param_2,&iStack_8c);
          if (bVar7) {
            return iStack_8c;
          }
          iVar1 = func_ov00_0207f1f4(param_1,param_2,&iStack_8c);
          if ((iVar1 != 0) && (iStack_8c <= param_2->y)) {
            return iStack_8c;
          }
        }
        goto LAB_arm9_ov000__0207e724;
      }
      if (iVar1 < 0x2a) {
                    if (-1 < iVar1 + -0x1f) {
                        iVar1 = (*(code *)((iVar1 + -0x1f) * 4 + 0x207e590))();
                        return iVar1;
                      }
                    }
                    else if (iVar1 == 0x30) goto LAB_arm9_ov000__0207e724;
                  }
                  else if (iVar1 < 0x41) {
                    if (iVar1 == 0x40) goto LAB_arm9_ov000__0207e724;
                  }
                  else if (iVar1 == 0x50) goto LAB_arm9_ov000__0207e724;
                  goto switchD_overlay_d_0::0207e518_caseD_a;
                }
                if (0x1d < iVar1) goto LAB_arm9_ov000__0207e724;
                if (0x17 < iVar1) {
                  if (iVar1 < 0x1a) {
                    if (iVar1 == 0x19) goto LAB_arm9_ov000__0207e724;
                  }
                  else if (iVar1 == 0x1d) goto LAB_arm9_ov000__0207e724;
                  goto switchD_overlay_d_0::0207e518_caseD_a;
                }
                if (0x16 < iVar1) goto LAB_arm9_ov000__0207e724;
                if (9 < iVar1) {
                  if (iVar1 == 0x16) goto LAB_arm9_ov000__0207e724;
                  goto switchD_overlay_d_0::0207e518_caseD_a;
                }
                switch(iVar1) {
                case 0:
                default:
              switchD_overlay_d_0::0207e518_caseD_a:
                  if (param_1->field11_0xe == '\0') {
                    if (param_3 == 0) {
                      uVar2 = (**(code **)(param_1->vtable + 0x58))(param_1,aVStack_98,5);
                      bVar7 = uVar2 == 0;
                      if (bVar7) {
                        uVar2 = (uint)param_1->field5_0x8;
                      }
                      if (bVar7 && uVar2 == 0) {
                        iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_98);
                        return iVar1;
                      }
                    }
                    else {
                      bVar7 = func_ov00_0207f104(param_1,param_2,&iStack_90);
                      if (bVar7) {
                        return iStack_90;
                      }
                      iVar1 = func_ov00_0207f1f4(param_1,param_2,&iStack_90);
                      if ((iVar1 != 0) && (iStack_90 <= param_2->y)) {
                        return iStack_90;
                      }
                      uVar2 = (**(code **)(param_1->vtable + 0x58))(param_1,aVStack_98,5);
                      bVar7 = uVar2 == 0;
                      if (bVar7) {
                        uVar2 = (uint)param_1->field5_0x8;
                      }
                      if (bVar7 && uVar2 == 0) {
                        iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_98);
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
                  goto switchD_overlay_d_0::0207e518_caseD_a;
                case 6:
                  goto switchD_overlay_d_0::0207e518_caseD_a;
                case 7:
                  goto switchD_overlay_d_0::0207e518_caseD_a;
                case 8:
                  break;
                case 9:
                }
              LAB_arm9_ov000__0207e724:
                iVar1 = func_01fff084(data_027e0f6c,param_2,2,0x20ec824);
                uVar5 = 0x2000;
                __cxa_vec_ctor(&local_58,3,0x10,func_ov00_0207e96c);
                uVar2 = 0;
                local_7c = 0;
                local_74 = 0;
                local_78 = 0xffff0000;
                local_88.x = param_2->x;
                local_88.y = param_2->y;
                local_88.z = param_2->z;
                if (0 < iVar1) {
                  do {
                    iVar4 = (uint)*(ushort *)(uVar2 * 2 + 0x20ec824) * 0x4c;
                    iVar6 = *(int *)(data_027e0f6c + 0x20) + iVar4;
                    local_70 = *(undefined2 *)(*(int *)(data_027e0f6c + 0x20) + iVar4);
                    local_6e = *(undefined2 *)(iVar6 + 2);
                    local_6c = *(undefined2 *)(iVar6 + 4);
                    local_6a = *(undefined2 *)(iVar6 + 6);
                    local_68 = *(undefined4 *)(iVar6 + 8);
                    local_64 = *(undefined4 *)(iVar6 + 0xc);
                    local_60 = *(undefined4 *)(iVar6 + 0x10);
                    local_5c = *(undefined4 *)(iVar6 + 0x14);
                    local_58 = *(undefined4 *)(iVar6 + 0x18);
                    local_54 = *(undefined4 *)(iVar6 + 0x1c);
                    local_50 = *(undefined4 *)(iVar6 + 0x20);
                    local_4c = *(undefined4 *)(iVar6 + 0x24);
                    local_48 = *(undefined4 *)(iVar6 + 0x28);
                    local_44 = *(undefined4 *)(iVar6 + 0x2c);
                    local_40 = *(undefined4 *)(iVar6 + 0x30);
                    local_3c = *(undefined4 *)(iVar6 + 0x34);
                    local_38 = *(undefined4 *)(iVar6 + 0x38);
                    local_34 = *(undefined4 *)(iVar6 + 0x3c);
                    local_30 = *(undefined4 *)(iVar6 + 0x40);
                    local_2c = *(undefined4 *)(iVar6 + 0x44);
                    local_28 = *(undefined4 *)(iVar6 + 0x48);
                    iVar4 = func_01ffe904(&local_70,&local_88,&local_7c,&local_94);
                    if ((iVar4 != 0) && ((int)local_94 < (int)uVar5)) {
                      uVar5 = local_94;
                    }
                    uVar3 = uVar2 + 1;
                    uVar2 = uVar3 & 0xffff;
                  } while ((int)(uVar3 & 0xffff) < iVar1);
                }
                iVar1 = local_88.y;
                if ((int)uVar5 < 0x1001) {
                  uVar2 = (uint)((ulonglong)uVar5 * 0xffff0000);
                  __cxa_vec_cleanup(&local_58,3,0x10,func_ov00_0207e968);
                  return iVar1 + (uVar2 + 0x800 >> 0xc |
                                 (((int)((ulonglong)uVar5 * 0xffff0000 >> 0x20) - uVar5) +
                                 (uint)(0xfffff7ff < uVar2)) * 0x100000);
                }
                iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_98);
                __cxa_vec_cleanup(&local_58,3,0x10,func_ov00_0207e968);
                return iVar1;
    **/
}

unk8 MapBase::func_ov00_0207e940(unk8 *param_1) {
    /*
      __cxa_vec_cleanup(param_1 + 0x18,3,0x10,func_ov00_0207e968);
  return param_1;
    */
}

ARM void MapBase::func_ov00_0207e968() {
    /*
      int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  bool bVar7;
  TilePos aVStack_dc [2];
  uint local_d8;
  int local_d4;
  int local_d0;
  int iStack_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined2 local_bc;
  undefined2 local_ba;
  undefined2 local_b8;
  undefined2 local_b6;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined2 local_70;
  undefined2 local_6e;
  undefined2 local_6c;
  undefined2 local_6a;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;

  MapManager::func_ov00_02083a1c(aVStack_dc,(MapManager *)gMapManager,param_2);
  iVar1 = (**(code **)(param_1->vtable + 0x54))(param_1,aVStack_dc);
  if (0x1e < iVar1) {
    if (iVar1 < 0x36) {
      if (0x34 < iVar1) goto LAB_arm9_ov000__0207eb04;
      if (iVar1 < 0x2a) {
                    if (-1 < iVar1 + -0x1f) {
                        (*(code *)((iVar1 + -0x1f) * 4 + 0x207ea4c))();
                        return;
                      }
                    }
                    else if (iVar1 == 0x30) goto LAB_arm9_ov000__0207eb04;
                  }
                  else if (iVar1 < 0x41) {
                    if (iVar1 == 0x40) goto LAB_arm9_ov000__0207eb04;
                  }
                  else if (iVar1 == 0x50) goto LAB_arm9_ov000__0207eb04;
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                }
                if (0x1d < iVar1) goto LAB_arm9_ov000__0207eb04;
                if (0x17 < iVar1) {
                  if (iVar1 < 0x1a) {
                    if (iVar1 == 0x19) goto LAB_arm9_ov000__0207eb04;
                  }
                  else if (iVar1 == 0x1d) goto LAB_arm9_ov000__0207eb04;
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                }
                if (0x16 < iVar1) goto LAB_arm9_ov000__0207eb04;
                if (9 < iVar1) {
                  if (iVar1 == 0x16) goto LAB_arm9_ov000__0207eb04;
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                }
                switch(iVar1) {
                case 0:
                default:
              switchD_overlay_d_0::0207e9d4_caseD_a:
                  if (param_1->field11_0xe == '\0') {
                    uVar2 = (**(code **)(param_1->vtable + 0x58))(param_1,aVStack_dc,5);
                    bVar7 = uVar2 == 0;
                    if (bVar7) {
                      uVar2 = (uint)param_1->field5_0x8;
                    }
                    if (bVar7 && uVar2 == 0) {
                      iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_dc);
                      *param_3 = iVar1;
                      *param_4 = 0;
                      param_4[1] = 0x1000;
                      param_4[2] = 0;
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
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                case 6:
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                case 7:
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                case 8:
                  break;
                case 9:
                }
              LAB_arm9_ov000__0207eb04:
                iVar1 = func_01fff084(data_027e0f6c,param_2,2,0x20ec864,0x20,0);
                uVar5 = 0x2000;
                __cxa_vec_ctor(&local_58,3,0x10,func_ov00_0207e96c,func_ov00_0207e968);
                __cxa_vec_ctor(&local_a4,3,0x10,func_ov00_0207e96c,func_ov00_0207e968);
                uVar2 = 0;
                local_c8 = 0;
                local_c0 = 0;
                local_c4 = 0xffff0000;
                local_d4 = param_2->x;
                local_d0 = param_2->y;
                iStack_cc = param_2->z;
                if (0 < iVar1) {
                  do {
                    iVar4 = (uint)*(ushort *)(uVar2 * 2 + 0x20ec864) * 0x4c;
                    iVar6 = *(int *)(data_027e0f6c + 0x20) + iVar4;
                    local_70 = *(undefined2 *)(*(int *)(data_027e0f6c + 0x20) + iVar4);
                    local_6e = *(undefined2 *)(iVar6 + 2);
                    local_6c = *(undefined2 *)(iVar6 + 4);
                    local_6a = *(undefined2 *)(iVar6 + 6);
                    local_68 = *(undefined4 *)(iVar6 + 8);
                    local_64 = *(undefined4 *)(iVar6 + 0xc);
                    local_60 = *(undefined4 *)(iVar6 + 0x10);
                    local_5c = *(undefined4 *)(iVar6 + 0x14);
                    local_58 = *(undefined4 *)(iVar6 + 0x18);
                    local_54 = *(undefined4 *)(iVar6 + 0x1c);
                    local_50 = *(undefined4 *)(iVar6 + 0x20);
                    local_4c = *(undefined4 *)(iVar6 + 0x24);
                    local_48 = *(undefined4 *)(iVar6 + 0x28);
                    local_44 = *(undefined4 *)(iVar6 + 0x2c);
                    local_40 = *(undefined4 *)(iVar6 + 0x30);
                    local_3c = *(undefined4 *)(iVar6 + 0x34);
                    local_38 = *(undefined4 *)(iVar6 + 0x38);
                    local_34 = *(undefined4 *)(iVar6 + 0x3c);
                    local_30 = *(undefined4 *)(iVar6 + 0x40);
                    local_2c = *(undefined4 *)(iVar6 + 0x44);
                    local_28 = *(undefined4 *)(iVar6 + 0x48);
                    iVar4 = func_01ffe904(&local_70,&local_d4,&local_c8,&local_d8);
                    if ((iVar4 != 0) && ((int)local_d8 < (int)uVar5)) {
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
                      uVar5 = local_d8;
                    }
                    uVar3 = uVar2 + 1;
                    uVar2 = uVar3 & 0xffff;
                  } while ((int)(uVar3 & 0xffff) < iVar1);
                }
                if ((int)uVar5 < 0x1001) {
                  uVar2 = (uint)((ulonglong)uVar5 * 0xffff0000);
                  *param_4 = local_b4;
                  param_4[1] = local_b0;
                  param_4[2] = local_ac;
                  *param_3 = local_d0 +
                             (uVar2 + 0x800 >> 0xc |
                             (((int)((ulonglong)uVar5 * 0xffff0000 >> 0x20) - uVar5) + (uint)(0xfffff7ff < uVar2))
                             * 0x100000);
                }
                else {
                  iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_dc);
                  *param_3 = iVar1;
                  *param_4 = 0;
                  param_4[1] = 0x1000;
                  param_4[2] = 0;
                }
                __cxa_vec_cleanup(&local_a4,3,0x10,func_ov00_0207e968);
                __cxa_vec_cleanup(&local_58,3,0x10,func_ov00_0207e968);
                return;
    */
}

ARM void MapBase::func_ov00_0207e96c() {}

unk8 MapBase::vfunc_6c(unk32 param_2, unk32 param_3, unk32 param_4) {
    /*
      int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  bool bVar7;
  TilePos aVStack_dc [2];
  uint local_d8;
  int local_d4;
  int local_d0;
  int iStack_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined2 local_bc;
  undefined2 local_ba;
  undefined2 local_b8;
  undefined2 local_b6;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined2 local_70;
  undefined2 local_6e;
  undefined2 local_6c;
  undefined2 local_6a;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;

  MapManager::func_ov00_02083a1c(aVStack_dc,(MapManager *)gMapManager,param_2);
  iVar1 = (**(code **)(param_1->vtable + 0x54))(param_1,aVStack_dc);
  if (0x1e < iVar1) {
    if (iVar1 < 0x36) {
      if (0x34 < iVar1) goto LAB_arm9_ov000__0207eb04;
      if (iVar1 < 0x2a) {
                    if (-1 < iVar1 + -0x1f) {
                        (*(code *)((iVar1 + -0x1f) * 4 + 0x207ea4c))();
                        return;
                      }
                    }
                    else if (iVar1 == 0x30) goto LAB_arm9_ov000__0207eb04;
                  }
                  else if (iVar1 < 0x41) {
                    if (iVar1 == 0x40) goto LAB_arm9_ov000__0207eb04;
                  }
                  else if (iVar1 == 0x50) goto LAB_arm9_ov000__0207eb04;
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                }
                if (0x1d < iVar1) goto LAB_arm9_ov000__0207eb04;
                if (0x17 < iVar1) {
                  if (iVar1 < 0x1a) {
                    if (iVar1 == 0x19) goto LAB_arm9_ov000__0207eb04;
                  }
                  else if (iVar1 == 0x1d) goto LAB_arm9_ov000__0207eb04;
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                }
                if (0x16 < iVar1) goto LAB_arm9_ov000__0207eb04;
                if (9 < iVar1) {
                  if (iVar1 == 0x16) goto LAB_arm9_ov000__0207eb04;
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                }
                switch(iVar1) {
                case 0:
                default:
              switchD_overlay_d_0::0207e9d4_caseD_a:
                  if (param_1->field11_0xe == '\0') {
                    uVar2 = (**(code **)(param_1->vtable + 0x58))(param_1,aVStack_dc,5);
                    bVar7 = uVar2 == 0;
                    if (bVar7) {
                      uVar2 = (uint)param_1->field5_0x8;
                    }
                    if (bVar7 && uVar2 == 0) {
                      iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_dc);
                      *param_3 = iVar1;
                      *param_4 = 0;
                      param_4[1] = 0x1000;
                      param_4[2] = 0;
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
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                case 6:
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                case 7:
                  goto switchD_overlay_d_0::0207e9d4_caseD_a;
                case 8:
                  break;
                case 9:
                }
              LAB_arm9_ov000__0207eb04:
                iVar1 = func_01fff084(data_027e0f6c,param_2,2,0x20ec864,0x20,0);
                uVar5 = 0x2000;
                __cxa_vec_ctor(&local_58,3,0x10,func_ov00_0207e96c,func_ov00_0207e968);
                __cxa_vec_ctor(&local_a4,3,0x10,func_ov00_0207e96c,func_ov00_0207e968);
                uVar2 = 0;
                local_c8 = 0;
                local_c0 = 0;
                local_c4 = 0xffff0000;
                local_d4 = param_2->x;
                local_d0 = param_2->y;
                iStack_cc = param_2->z;
                if (0 < iVar1) {
                  do {
                    iVar4 = (uint)*(ushort *)(uVar2 * 2 + 0x20ec864) * 0x4c;
                    iVar6 = *(int *)(data_027e0f6c + 0x20) + iVar4;
                    local_70 = *(undefined2 *)(*(int *)(data_027e0f6c + 0x20) + iVar4);
                    local_6e = *(undefined2 *)(iVar6 + 2);
                    local_6c = *(undefined2 *)(iVar6 + 4);
                    local_6a = *(undefined2 *)(iVar6 + 6);
                    local_68 = *(undefined4 *)(iVar6 + 8);
                    local_64 = *(undefined4 *)(iVar6 + 0xc);
                    local_60 = *(undefined4 *)(iVar6 + 0x10);
                    local_5c = *(undefined4 *)(iVar6 + 0x14);
                    local_58 = *(undefined4 *)(iVar6 + 0x18);
                    local_54 = *(undefined4 *)(iVar6 + 0x1c);
                    local_50 = *(undefined4 *)(iVar6 + 0x20);
                    local_4c = *(undefined4 *)(iVar6 + 0x24);
                    local_48 = *(undefined4 *)(iVar6 + 0x28);
                    local_44 = *(undefined4 *)(iVar6 + 0x2c);
                    local_40 = *(undefined4 *)(iVar6 + 0x30);
                    local_3c = *(undefined4 *)(iVar6 + 0x34);
                    local_38 = *(undefined4 *)(iVar6 + 0x38);
                    local_34 = *(undefined4 *)(iVar6 + 0x3c);
                    local_30 = *(undefined4 *)(iVar6 + 0x40);
                    local_2c = *(undefined4 *)(iVar6 + 0x44);
                    local_28 = *(undefined4 *)(iVar6 + 0x48);
                    iVar4 = func_01ffe904(&local_70,&local_d4,&local_c8,&local_d8);
                    if ((iVar4 != 0) && ((int)local_d8 < (int)uVar5)) {
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
                      uVar5 = local_d8;
                    }
                    uVar3 = uVar2 + 1;
                    uVar2 = uVar3 & 0xffff;
                  } while ((int)(uVar3 & 0xffff) < iVar1);
                }
                if ((int)uVar5 < 0x1001) {
                  uVar2 = (uint)((ulonglong)uVar5 * 0xffff0000);
                  *param_4 = local_b4;
                  param_4[1] = local_b0;
                  param_4[2] = local_ac;
                  *param_3 = local_d0 +
                             (uVar2 + 0x800 >> 0xc |
                             (((int)((ulonglong)uVar5 * 0xffff0000 >> 0x20) - uVar5) + (uint)(0xfffff7ff < uVar2))
                             * 0x100000);
                }
                else {
                  iVar1 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_dc);
                  *param_3 = iVar1;
                  *param_4 = 0;
                  param_4[1] = 0x1000;
                  param_4[2] = 0;
                }
                __cxa_vec_cleanup(&local_a4,3,0x10,func_ov00_0207e968);
                __cxa_vec_cleanup(&local_58,3,0x10,func_ov00_0207e968);
                return;
    */
}

unk32 MapBase::vfunc_70(Vec3p *param_2) {
    /*
      int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  dword dVar5;
  uint uVar6;
  int iVar7;
  TilePos aVStack_90 [2];
  int local_8c;
  int local_88;
  int iStack_84;
  int iStack_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined2 local_70;
  undefined2 local_6e;
  undefined2 local_6c;
  undefined2 local_6a;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;

  MapManager::func_ov00_02083a1c(aVStack_90,(MapManager *)gMapManager,param_2);
  iVar1 = func_01fff084(data_027e0f6c,param_2,2,0x20ec8a4,0x20,0);
  iVar4 = 0x2000;
  dVar5 = 0xffff;
  __cxa_vec_ctor(&local_58,3,0x10,func_ov00_0207e96c,func_ov00_0207e968);
  uVar6 = 0;
  local_7c = 0;
  local_74 = 0;
  local_78 = 0xffff0000;
  local_88 = param_2->x;
  iStack_84 = param_2->y;
  iStack_80 = param_2->z;
  if (0 < iVar1) {
    do {
      iVar3 = (uint)*(ushort *)(uVar6 * 2 + 0x20ec8a4) * 0x4c;
      iVar7 = *(int *)(data_027e0f6c + 0x20) + iVar3;
      local_70 = *(undefined2 *)(*(int *)(data_027e0f6c + 0x20) + iVar3);
      local_6e = *(undefined2 *)(iVar7 + 2);
      local_6c = *(undefined2 *)(iVar7 + 4);
      local_6a = *(undefined2 *)(iVar7 + 6);
      local_68 = *(undefined4 *)(iVar7 + 8);
      local_64 = *(undefined4 *)(iVar7 + 0xc);
      local_60 = *(undefined4 *)(iVar7 + 0x10);
      local_5c = *(undefined4 *)(iVar7 + 0x14);
      local_58 = *(undefined4 *)(iVar7 + 0x18);
      local_54 = *(undefined4 *)(iVar7 + 0x1c);
      local_50 = *(undefined4 *)(iVar7 + 0x20);
      local_4c = *(undefined4 *)(iVar7 + 0x24);
      local_48 = *(undefined4 *)(iVar7 + 0x28);
      local_44 = *(undefined4 *)(iVar7 + 0x2c);
      local_40 = *(undefined4 *)(iVar7 + 0x30);
      local_3c = *(undefined4 *)(iVar7 + 0x34);
      local_38 = *(undefined4 *)(iVar7 + 0x38);
      local_34 = *(undefined4 *)(iVar7 + 0x3c);
      local_30 = *(undefined4 *)(iVar7 + 0x40);
      local_2c = *(undefined4 *)(iVar7 + 0x44);
      local_28 = *(undefined4 *)(iVar7 + 0x48);
      iVar3 = func_01ffe904(&local_70,&local_88,&local_7c,&local_8c);
      if ((iVar3 != 0) && (local_8c < iVar4)) {
        dVar5 = (dword)*(ushort *)(uVar6 * 2 + 0x20ec8a4);
        iVar4 = local_8c;
      }
      uVar2 = uVar6 + 1;
      uVar6 = uVar2 & 0xffff;
    } while ((int)(uVar2 & 0xffff) < iVar1);
  }
  __cxa_vec_cleanup(&local_58,3,0x10,func_ov00_0207e968);
  return dVar5;
    */
}

unk32 *MapBase::vfunc_74(Vec3p *param_2) {
    /*
      int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  bool bVar6;
  bool bVar7;
  TilePos aVStack_38 [2];
  AABB local_34;

  MapManager::func_ov00_02083a1c(aVStack_38,(MapManager *)gMapManager,param_2);
  local_34.min.x = param_2->x;
  local_34.min.y = param_2->y;
  local_34.min.z = param_2->z;
  local_34.max.x = param_2->x;
  local_34.max.y = param_2->y;
  local_34.max.z = param_2->z;
  AABB::GrowScalar(&local_34,0x800);
  iVar1 = func_01fff264(data_027e0f6c,&local_34,8,0x20ec8e4,0x20,0);
  iVar4 = 0;
  if (0 < iVar1) {
    do {
      uVar2 = (uint)*(ushort *)(iVar4 * 2 + 0x20ec8e4);
      piVar5 = *(int **)(*(int *)(data_027e0f6c + 0x40) + uVar2 * 4);
      bVar6 = piVar5 != (int *)0x0;
      if (bVar6) {
        uVar2 = (uint)*(byte *)(piVar5 + 1);
      }
      bVar7 = uVar2 != 0;
      if (bVar6 && bVar7) {
        uVar2 = (uint)*(byte *)((int)piVar5 + 5);
      }
      if ((((bVar6 && bVar7) && uVar2 != 0) && (2 < (piVar5[3] & 0x1fU))) &&
         (iVar3 = (**(code **)(*piVar5 + 0x48))(piVar5,param_2), iVar3 != 0)) {
        return piVar5;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar1);
  }
  return (int *)0x0;
    */
}

ARM void MapBase::func_ov00_0207f100() {}

bool MapBase::func_ov00_0207f104(unk32 param_2, unk32 param_3) {
    /*
      char cVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  TilePos aVStack_18 [2];

  MapManager::func_ov00_02083a1c(aVStack_18,(MapManager *)gMapManager,param_2);
  piVar2 = (int *)(**(code **)(param_1->vtable + 0x78))(param_1,aVStack_18);
  if (piVar2 == (int *)0x0) {
    return false;
  }
  iVar3 = (**(code **)(*piVar2 + 0x58))();
  if (iVar3 != 0) {
    iVar3 = (**(code **)(*piVar2 + 0x54))();
    if (iVar3 == 0) {
      cVar1 = '\0';
    }
    else {
      cVar1 = *(char *)(iVar3 + 5);
    }
    if (cVar1 != '\0') {
      iVar3 = func_ov000_0208b79c(piVar2,param_2);
      if (iVar3 != 0) {
        piVar2 = (int *)(**(code **)(*piVar2 + 0x54))();
        if (piVar2 == (int *)0x0) {
          iVar3 = 0;
        }
        else {
          iVar3 = (**(code **)(*piVar2 + 0x44))();
        }
        iVar4 = (**(code **)(param_1->vtable + 0x60))(param_1,aVStack_18);
        *param_3 = iVar4 + iVar3;
        return true;
      }
      return false;
    }
    return false;
  }
  return false;
    */
}

unk32 MapBase::func_ov00_0207f1f4(Vec3p *param_2, unk32 *param_3) {
    /*
      int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  bool bVar6;
  bool bVar7;
  TilePos aVStack_58 [2];
  undefined1 auStack_54 [16];
  undefined4 local_44;
  AABB local_3c;

  MapManager::func_ov00_02083a1c(aVStack_58,(MapManager *)gMapManager,param_2);
  local_3c.min.x = param_2->x;
  local_3c.min.y = param_2->y;
  local_3c.min.z = param_2->z;
  local_3c.max.x = param_2->x;
  local_3c.max.y = param_2->y;
  local_3c.max.z = param_2->z;
  AABB::GrowScalar(&local_3c,0x800);
  iVar1 = func_01fff264(data_027e0f6c,&local_3c,8,0x20ec924,0x20,0);
  iVar4 = 0;
  if (0 < iVar1) {
    do {
      uVar2 = (uint)*(ushort *)(iVar4 * 2 + 0x20ec924);
      piVar5 = *(int **)(*(int *)(data_027e0f6c + 0x40) + uVar2 * 4);
      bVar6 = piVar5 != (int *)0x0;
      if (bVar6) {
        uVar2 = (uint)*(byte *)(piVar5 + 1);
      }
      bVar7 = uVar2 != 0;
      if (bVar6 && bVar7) {
        uVar2 = (uint)*(byte *)((int)piVar5 + 5);
      }
      if ((((bVar6 && bVar7) && uVar2 != 0) && (2 < (piVar5[3] & 0x1fU))) &&
         (iVar3 = (**(code **)(*piVar5 + 0x48))(piVar5,param_2), iVar3 != 0)) {
        (**(code **)(*piVar5 + 0x2c))(piVar5,auStack_54);
        *param_3 = local_44;
        return 1;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar1);
  }
  return 0;
    */
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

ARM unk32 MapBase::vfunc_80() {
    return 1;
}

void MapBase::vfunc_84(unk32 param_2) {
    /*
      undefined4 in_r3;
  undefined1 local_8;
  undefined1 local_7 [7];

  local_7._1_2_ = (undefined2)((uint)in_r3 >> 0x10);
  _local_8 = CONCAT31(CONCAT21(local_7._1_2_,*(undefined1 *)(param_2 + 0x15)),
                      *(undefined1 *)(param_2 + 0x14));
  (**(code **)(param_1->vtable + 0x80))(param_1,&local_8);
  return;
    */
}

bool MapBase::func_ov00_0207f38c(s32 *param_2) {
    /*
      bool bVar1;
  int iVar2;
  code *pcVar3;
  undefined4 in_r3;

  pcVar3 = *(code **)(param_1->vtable + 0x84);
  iVar2 = (*pcVar3)();
  if (iVar2 != 0) {
    bVar1 = func_ov000_0208d820(data_027e0f68,param_2,pcVar3,in_r3);
    return bVar1;
  }
  return false;
    */
}

unk8 MapBase::vfunc_90(TilePos *param_2, unk32 param_3) {
    /*
      int iVar1;
  int iVar2;
  int *piVar3;

  iVar1 = (**(code **)(param_1->vtable + 0x54))();
  if (iVar1 == param_3) {
    return;
  }
  (**(code **)(param_1->vtable + 0xbc))
            (param_1,param_2,param_3,*(code **)(param_1->vtable + 0xbc),param_4);
  iVar2 = (**(code **)(param_1->vtable + 0x5c))(param_1,param_2);
  if (param_3 == 0x14) {
    (**(code **)(param_1->vtable + 0xc0))(param_1,param_2,(iVar2 + -3) * 0x1000000 >> 0x18);
  }
  else if (iVar1 == 0x14) {
    (**(code **)(param_1->vtable + 0xc0))(param_1,param_2,(iVar2 + 3) * 0x1000000 >> 0x18);
  }
  piVar3 = (int *)(**(code **)(param_1->vtable + 0x78))(param_1,param_2);
  if (piVar3 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar3 + 0x44))(piVar3,param_3);
  return;
    */
}

ARM void MapBase::vfunc_94() {}

void MapBase::func_ov00_0207f4a4(Vec2s *param_2, unk32 param_3) {
    /*
      uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined1 local_10;
  undefined1 local_f;

  local_10 = (undefined1)((int)param_2->x / 2);
  local_f = (undefined1)((int)param_2->y / 2);
  uVar3 = (int)param_2->x >> 0x1f;
  uVar4 = (int)param_2->y >> 0x1f;
  uVar1 = param_2->x * -0x80000000 + uVar3 >> 0x1f | uVar3 << 1;
  uVar2 = param_2->y * -0x80000000 + uVar4 >> 0x1f | uVar4 << 1;
  if (uVar1 == uVar3 && uVar2 == uVar4) {
    param_3 = 0;
  }
  else if (uVar1 - uVar3 == 1 && uVar2 == uVar4) {
    param_3 = 1;
  }
  else if (uVar1 - uVar3 == 1 && uVar2 - uVar4 == 1) {
    param_3 = 3;
  }
  else if (uVar1 == uVar3 && uVar2 - uVar4 == 1) {
    param_3 = 2;
  }
  (**(code **)(param_1->vtable + 0x58))(param_1,&local_10,param_3);
  return;
    */
}

void MapBase::func_ov00_0207f53c(Vec2s *param_1, MapBase *param_2, Vec3p *param_3) {
    /*
      uint uVar1;

  param_1->x = 0;
  param_1->y = 0;
  uVar1 = CoDivide64By32(param_3->x,0x800);
  param_1->x = (short)((int)(uVar1 + 0x800) >> 0xc);
  uVar1 = CoDivide64By32(param_3->z,0x800);
  param_1->y = (short)((int)(uVar1 + 0x800) >> 0xc);
  return;
    */
}

void MapBase::func_ov00_0207f588(Vec2s *param_1, MapBase *param_2, TilePos *param_3, unk32 param_4) {
    /*
      param_1->x = 0;
  param_1->y = 0;
  switch(param_4) {
  case 0:
    param_1->x = (ushort)param_3->x << 1;
    param_1->y = (ushort)param_3->y << 1;
    return;
  case 1:
    param_1->x = (ushort)param_3->x * 2 + 1;
    param_1->y = (ushort)param_3->y << 1;
    return;
  case 2:
    param_1->x = (ushort)param_3->x << 1;
    param_1->y = (ushort)param_3->y * 2 + 1;
    return;
  case 3:
    param_1->x = (ushort)param_3->x * 2 + 1;
    param_1->y = (ushort)param_3->y * 2 + 1;
    return;
  default:
    return;
  }
    */
}

void MapBase::func_ov00_0207f630(Vec2s *param_2, Vec3p *param_3) {
    /*
      uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;

  uVar1 = param_2->y * 0x1000;
  uVar2 = param_2->x * 0x1000;
  uVar3 = param_2->y * 0x800000;
  uVar4 = param_2->x * 0x800000;
  param_3->x = uVar4 + 0x800 >> 0xc |
               ((((int)uVar2 >> 0x1f) << 0xb | uVar2 >> 0x15) + (uint)(0xfffff7ff < uVar4)) *
               0x100000;
  param_3->y = 0;
  param_3->z = uVar3 + 0x800 >> 0xc |
               ((((int)uVar1 >> 0x1f) << 0xb | uVar1 >> 0x15) + (uint)(0xfffff7ff < uVar3)) *
               0x100000;
  return;
    */
}

ARM unk32 MapBase::GetTileStartX(unk32 x) {
    return (this->mOffset).x + x * 0x1000;
}

ARM unk32 MapBase::GetTileStartZ(unk32 z) {
    return (this->mOffset).z + z * 0x1000;
}

ARM unk32 MapBase::GetTileEndX(unk32 x) {
    return this->GetTileStartX(x) + 0x1000;
}

ARM unk32 MapBase::GetTileEndZ(unk32 z) {
    return this->GetTileStartZ(z) + 0x1000;
}

void MapBase::GetTileBounds(TilePos *tilePos, AABB *bounds) {
    /*
      int startZ;
  int startX;
  int endZ;
  int endY;
  int endX;

  GetTileStartX(param_1,(uint)tilePos->x);
  startZ = GetTileStartZ(param_1,(uint)tilePos->y);
  startX = GetTileStartX(param_1,(uint)tilePos->x);

    endZ            = GetTileEndZ(param_1, (uint) tilePos->y);
    endY            = (**(code **) (param_1->vtable + 0x60))(param_1, tilePos);
    endX            = GetTileEndX(param_1, (uint) tilePos->x);
    (bounds->min).x = startX;
    (bounds->min).y = -0x1333; // -1.2
    (bounds->min).z = startZ;
    (bounds->max).x = endX;
    (bounds->max).y = endY;
    (bounds->max).z = endZ;
    return;
    */
}

s32 MapBase::GetClampedTileX(s32 worldX) {
    /*
      int iVar1;
  int iVar2;

  iVar2 = worldX - (param_1->mOffset).x >> 0xc;
  if (iVar2 < 0) {
    iVar2 = 0;
  }
  iVar1 = (ushort)param_1->mWidth - 1;
  if (iVar1 <= iVar2) {
    iVar2 = iVar1;
  }
  return iVar2;
    */
}

s32 MapBase::GetClampedTileY(s32 worldZ) {
    /*
      int iVar1;
  int iVar2;

  iVar2 = worldZ - (param_1->mOffset).z >> 0xc;
  if (iVar2 < 0) {
    iVar2 = 0;
  }
  iVar1 = (ushort)param_1->mHeight - 1;
  if (iVar1 <= iVar2) {
    iVar2 = iVar1;
  }
  return iVar2;
    */
}

ARM unk32 MapBase::GetTileX(s32 worldX) {
    return worldX - this->mOffset.x >> 0xc;
}

ARM unk32 MapBase::GetTileY(s32 worldZ) {
    return worldZ - this->mOffset.z >> 0xc;
}

bool MapBase::IsInBounds(Vec3p *tileWorldPos) {
    /*
      int iVar1;
  int iVar2;

  iVar1 = GetTileX(param_1,tileWorldPos->x);
  iVar2 = GetTileY(param_1,tileWorldPos->z);
  if ((((-1 < iVar1) && (iVar1 < (int)(uint)(ushort)param_1->mWidth)) && (-1 < iVar2)) &&
     (iVar2 < (int)(uint)(ushort)param_1->mHeight)) {
    return true;
  }
  return false;
    */
}

s32 MapBase::AddEntrance(Entrance *param_2) {
    /*
      int iVar1;
  int iVar2;
  uint uVar3;
  Entrance *pEVar4;

  uVar3 = (param_1->mEntrances).size;
  if (uVar3 < (uint)(param_1->mEntrances).capacity) {
    (param_1->mEntrances).size = uVar3 + 1;
    pEVar4 = (param_1->mEntrances).elements + uVar3;
    iVar1 = (param_2->mPos).y;
    iVar2 = (param_2->mPos).z;
    (pEVar4->mPos).x = (param_2->mPos).x;
    (pEVar4->mPos).y = iVar1;
    (pEVar4->mPos).z = iVar2;
    pEVar4->mAngle = param_2->mAngle;
    pEVar4->mId = param_2->mId;
    iVar1 = param_2->field4_0x10;
    pEVar4->field4_0x10 = iVar1;
    return iVar1;
  }
  iVar1 = std::vector<Entrance>::push_back(&param_1->mEntrances,param_2);
  return iVar1;
    */
}

Entrance *MapBase::FindEntrance(unk32 id) {
    /*
      uint uVar1;
  Entrance *iter;
  Entrance *begin;
  Entrance *end;

  begin = (param_1->mEntrances).elements;
  uVar1 = 0x14;
  end = begin + (param_1->mEntrances).size;
  iter = begin;
  while( true ) {
    if (iter != end) {
      uVar1 = (uint)iter->mId;
    }
    if (iter == end || id == uVar1) break;
    iter = iter + 1;
  }
  if (iter != end) {
    begin = iter;
  }
  return begin;
    */
}

ARM void MapBase::func_ov00_0207f924(unk32 param_2) {
    this->mCurrViewpointId[param_2] = this->mUnk_018[param_2];
}

unk8 MapBase::func_ov00_0207f934() {
    /*
      undefined4 uVar1;

  if (param_1->field180_0x140 == 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = *(undefined4 *)(param_1->field180_0x140 + 0x60);
  }
  return uVar1;
    */
}

unk8 MapBase::func_ov00_0207f948(unk32 param_2) {
    /*
      if (param_1->field180_0x140 != 0) {
    *(undefined4 *)(param_1->field180_0x140 + 0x60) = param_2;
  }
  return;
    */
}

void MapBase::AddTrigger(TriggerParams *param_2) {
    /*
      TriggerBase *pMVar1;
  TriggerAABB_Unk2 *pTVar1;
  uint size;
  TriggerBase *local_14;

  local_14 = (TriggerBase *)0x0;
  if (param_2->isAABB_Unk1 == false) {
    if (param_2->isAABB_Unk2 == true) {
      pTVar1 = (TriggerAABB_Unk2 *)
               SysObject::operator_new(0xe0,(UnkStruct_0202e894 *)DWORD_027e0ce4,4);
      if (pTVar1 != (TriggerAABB_Unk2 *)0x0) {
        pTVar1 = TriggerAABB_Unk2::TriggerAABB_Unk2(pTVar1,param_2);
      }
    }
    else if (param_2->isSphere == true) {
      pTVar1 = (TriggerAABB_Unk2 *)
               SysObject::operator_new(0x28,(UnkStruct_0202e894 *)DWORD_027e0ce4,4);
      if (pTVar1 != (TriggerAABB_Unk2 *)0x0) {
        pTVar1 = (TriggerAABB_Unk2 *)TriggerSphere::TriggerSphere((TriggerSphere *)pTVar1,param_2);
      }
    }
    else {
      pTVar1 = (TriggerAABB_Unk2 *)
               SysObject::operator_new(0x2c,(UnkStruct_0202e894 *)DWORD_027e0ce4,4);
      if (pTVar1 != (TriggerAABB_Unk2 *)0x0) {
        pTVar1 = (TriggerAABB_Unk2 *)TriggerAABB::TriggerAABB((TriggerAABB *)pTVar1,param_2);
      }
    }
  }
  else {
    pMVar1 = (TriggerBase *)SysObject::operator_new(0x5c,(UnkStruct_0202e894 *)DWORD_027e0ce4,4);
    pTVar1 = (TriggerAABB_Unk2 *)pMVar1;
    if (pMVar1 != (TriggerBase *)0x0) {
      pTVar1 = (TriggerAABB_Unk2 *)
               TriggerAABB_Unk1::TriggerAABB_Unk1((TriggerAABB_Unk1 *)pMVar1,param_2);
    }
  }
  local_14 = (TriggerBase *)pTVar1;
  (**(code **)(local_14->vtable + 8))();
  size = (param_1->mTriggers).size;
  if ((uint)(param_1->mTriggers).capacity <= size) {
    std::vector<>::push_back(&param_1->mTriggers,&local_14);
    return;
  }
  (param_1->mTriggers).size = size + 1;
  (param_1->mTriggers).elements[size] = local_14;
  return;
    */
}

void TriggerBase::vfunc_08() {
    /*
      int iVar1;
  char in_stack_00000000;
  char in_stack_00000004;
  TilePos local_5d0 [2];
  undefined4 local_5cc;
  undefined4 local_5c8;
  undefined4 local_5c4;
  undefined4 local_5c0;
  int local_5bc;
  undefined2 local_5b8;
  undefined1 local_5b6;
  undefined1 local_5b5;
  undefined1 local_5b4;
  undefined1 local_5b3;
  undefined4 local_5b0;
  undefined4 local_5ac;
  undefined2 local_5a8;
  undefined2 local_5a6;
  undefined2 local_5a4;
  undefined4 local_5a0;
  undefined2 local_59c;
  char acStack_198 [128];
  char acStack_118 [128];
  char acStack_98 [128];
  Course *pCStack_18;

  pCStack_18 = param_4;
  if (in_stack_00000004 == '\0') {
    (**(code **)(param_1->vtable + 0x10))();
  }
  func_ov004_0210cb1c(param_1);
  func_ov004_0210cc58(param_1,param_4,param_2);
  GetMapFilePath(param_1,param_4->mName,param_2,acStack_98);
  iVar1 = func_0202d598(0x99,DWORD_027e0ce4,_DAT_020e233c,acStack_98,0x10,1);
  param_1->field182_0x148 = iVar1;
  SetBounds(param_1,param_2,param_4);
  func_ov00_0207ddf8(param_1,false);
  Course::FindMapGridPos(local_5d0,param_4,param_2);
  param_1->field16_0x13 = (char)param_2;
  param_1->field17_0x14 = local_5d0[0].x;
  param_1->field18_0x15 = local_5d0[0].y;
  param_1->field28_0x24 = param_3;
  (**(code **)(param_1->vtable + 0xc))(param_1,param_4);
  Course::func_ov00_0207ce20(param_4,param_2,param_1->field28_0x24,acStack_118,2);
  (**(code **)(param_1->vtable + 0x34))(param_1,acStack_118);
  Course::func_ov00_0207ce20(param_4,param_2,param_1->field28_0x24,acStack_198,1);
  func_ov004_02102748(data_027e0f6c,acStack_198,param_1);
  func_ov004_0210cc20(param_1,param_4);
  Course::func_ov00_0207ce20(param_4,param_2,param_1->field28_0x24,acStack_98,0);
  local_5cc = 0;
  local_5b0 = LoadFileFromRom(acStack_98,&local_5cc);
  local_5ac = local_5cc;
  local_5a8 = 0;
  local_5a6 = 0;
  local_5a4 = 0;
  local_5a0 = 0;
  local_59c = 0;
  func_ov004_02108a04(&local_5b0,param_1);
  Course::func_ov00_0207ca78(param_4,param_2,1);
  (**(code **)(param_1->vtable + 0x14))();
  (**(code **)(param_1->vtable + 0x3c))();
  func_ov004_0210cb38((int)param_1);
  if ((in_stack_00000004 != '\0') || (param_4->field26_0x25c == false)) {
    Course::func_ov00_0207ce20(param_4,param_2,param_1->field28_0x24,acStack_98,3);
    UnkStruct_027e103c::func_ov000_020cf13c(data_027e103c,acStack_98);
    if (in_stack_00000000 != '\0') {
      Course::func_ov00_0207d7bc(param_4);
    }
  }
  if (data_027e0d38->field8_0x14 == 1) {
    local_5c8 = data_027e0d38->field6_0xc;
    local_5c4 = data_027e0d38->field7_0x10;
    local_5c0 = data_027e0d38->field8_0x14;
    local_5bc = data_027e0d38->field9_0x18;
    local_5b8 = data_027e0d38->field10_0x1c;
    local_5b6 = data_027e0d38->field11_0x1e;
    local_5b5 = data_027e0d38->field12_0x1f;
    local_5b4 = data_027e0d38->field13_0x20;
    local_5b3 = data_027e0d38->field14_0x21;
    if ((local_5bc != 0x21) &&
       (iVar1 = AdventureFlags::Get_FlagsUnk_44(gAdventureFlags,local_5bc), iVar1 != 0x2e)) {
      func_ov000_0209c474(param_1->field181_0x144,iVar1,1);
    }
  }
  func_ov00_0207dea0(param_1,true);
  return;
    */
}

s32 MapBase::GetTriggerBoundingBox(unk32 param_2, AABB *param_3) {
    /*
      TriggerBase *pTVar1;
  int iVar2;
  int iVar3;
  TriggerBase **ppTVar4;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;

  ppTVar4 = (param_1->mTriggers).elements;
  iVar3 = 0;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      pTVar1 = *ppTVar4;
                    // GetBoundingBox
    if ((param_2 == pTVar1->mId) && (iVar2 = (**(code **) (pTVar1->vtable + 0x18))(pTVar1, &local_38), iVar2 != 0)) {
        iVar3            = iVar3 + 1;
        (param_3->min).x = local_38;
        (param_3->min).y = local_34;
        (param_3->min).z = local_30;
        (param_3->max).x = local_2c;
        (param_3->max).y = local_28;
        (param_3->max).z = local_24;
    }
    ppTVar4 = ppTVar4 + 1;
}
while (ppTVar4 != (param_1->mTriggers).elements + (param_1->mTriggers).size)
    ;
}
return iVar3;
*/
}

ARM bool TriggerBase::GetBoundingBox(AABB *bbox) {
    return false;
}

s32 MapBase::GetTriggerBoundingBoxes(s32 param_2, AABB *param_3, s32 param_4) {
    /*
      TriggerBase *pTVar1;
  int iVar2;
  uint boxesFound;
  TriggerBase **iter;
  AABB local_38;

  iter = (param_1->mTriggers).elements;
  boxesFound = 0;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      pTVar1 = *iter;
      if ((param_2 == pTVar1->mId) &&
         (iVar2 = (**(code **)(pTVar1->vtable + 0x18))(pTVar1,&local_38), iVar2 != 0)) {
        boxesFound = boxesFound + 1;
        (param_3->min).x = local_38.min.x;
        (param_3->min).y = local_38.min.y;
        (param_3->min).z = local_38.min.z;
        (param_3->max).x = local_38.max.x;
        (param_3->max).y = local_38.max.y;
        (param_3->max).z = local_38.max.z;
        param_3 = param_3 + 1;
      }
      if (param_4 <= boxesFound) {
        return boxesFound;
      }
      iter = iter + 1;
    } while (iter != (param_1->mTriggers).elements + (param_1->mTriggers).size);
  }
  return boxesFound;
    */
}

unk8 MapBase::GetOverlappingTrigger(Vec3p *param_2) {
    /*
      int iVar1;
  TriggerBase **iter;
  TriggerBase *pTVar2;

  iter = (param_1->mTriggers).elements;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      pTVar2 = *iter;
                    // Overlaps
    iVar1 = (**(code **) (pTVar2->vtable + 0x14))(pTVar2, param_2);
    if (iVar1 != 0) {
        return (uint) pTVar2->mId;
    }
    iter = iter + 1;
}
while (iter != (param_1->mTriggers).elements + (param_1->mTriggers).size)
    ;
}
return 0;
*/
}

ARM bool TriggerBase::Overlaps(Vec3p *point) {
    return false;
}

TriggerBase *MapBase::FindTrigger(unk32 type) {
    /*
      TriggerBase **iter;

  iter = (param_1->mTriggers).elements;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      if (type == (*iter)->mId) {
        return *iter;
      }
      iter = iter + 1;
    } while (iter != (param_1->mTriggers).elements + (param_1->mTriggers).size);
  }
  return (TriggerBase *)0x0;
    */
}

unk8 MapBase::GetOverlappingTriggers(Vec3p *param_2, TriggerBase **triggers, unk32 capacity) {
    /*
      int iVar1;
  uint uVar2;
  TriggerBase *trigger;
  TriggerBase **iter;

  iter = (param_1->mTriggers).elements;
  uVar2 = 0;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      if (capacity <= uVar2) {
        return uVar2;
      }
      trigger = *iter;
                    // Overlaps
    iVar1 = (**(code **) (trigger->vtable + 0x14))(trigger, param_2);
    if (iVar1 != 0) {
        triggers[uVar2] = trigger;
    }
    iter = iter + 1;
    if (iVar1 != 0) {
        uVar2 = uVar2 + 1;
    }
}
while (iter != (param_1->mTriggers).elements + (param_1->mTriggers).size)
    ;
}
return uVar2;
*/
}

bool MapBase::IsTriggerTypeOverlapped(unk32 type, Vec3p *param_3) {
    /*
      TriggerBase *pTVar1;
  int iVar2;
  TriggerBase **ppTVar3;

  if (type == 0) {
    return true;
  }
  ppTVar3 = (param_1->mTriggers).elements;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      pTVar1 = *ppTVar3;
                    // Overlaps
    if ((type == pTVar1->mId) && (iVar2 = (**(code **) (pTVar1->vtable + 0x14))(pTVar1, param_3), iVar2 != 0)) {
        return true;
    }
    ppTVar3 = ppTVar3 + 1;
}
while (ppTVar3 != (param_1->mTriggers).elements + (param_1->mTriggers).size)
    ;
}
return false;
*/
}

bool MapBase::AnyTrigger_func_0c(unk32 type) {
    /*
      TriggerBase *pTVar1;
  TriggerBase **ppTVar2;

  ppTVar2 = (param_1->mTriggers).elements;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      pTVar1 = *ppTVar2;
      if (type == pTVar1->mId) {
        (**(code **)(pTVar1->vtable + 0xc))(pTVar1,1);
      }
      ppTVar2 = ppTVar2 + 1;
    } while (ppTVar2 != (param_1->mTriggers).elements + (param_1->mTriggers).size);
  }
  return true;
    */
}

ARM unk32 TriggerBase::vfunc_0c() {
    return 0;
}

unk8 MapBase::Trigger_vfunc_08() {
    /*
      TriggerBase **ppTVar1;
  TriggerBase **ppTVar2;

  ppTVar1 = (param_1->mTriggers).elements;
  if ((param_1->mTriggers).size * -4 == 0) {
    return;
  }
  do {
    ppTVar2 = ppTVar1 + 1;
    (**(code **)((*ppTVar1)->vtable + 8))();
    ppTVar1 = ppTVar2;
  } while (ppTVar2 != (param_1->mTriggers).elements + (param_1->mTriggers).size);
  return;
    */
}

bool MapBase::AddTrigger(TriggerBase *param_2) {
    /*
      TriggerBase *pTVar1;
  TriggerBase **iter;
  uint uVar2;
  TriggerBase **end;
  TriggerBase *apTStack_c [3];

  if (0x3f < (uint)(param_1->mTriggers).size) {
    return false;
  }
  iter = (param_1->mTriggers).elements;
  pTVar1 = (TriggerBase *)(param_1->mTriggers).size;
  end = iter + (int)pTVar1;
  while( true ) {
    if (iter != end) {
      pTVar1 = *iter;
    }
    if (iter == end || pTVar1 == param_2) break;
    iter = iter + 1;
  }
  if (iter == end) {
    if (param_2->field1_0x4 == '\0') {
      uVar2 = (param_1->mTriggers).size;
      if (uVar2 < (uint)(param_1->mTriggers).capacity) {
        (param_1->mTriggers).size = uVar2 + 1;
        (param_1->mTriggers).elements[uVar2] = param_2;
      }
      else {
        apTStack_c[0] = param_2;
        std::vector<>::push_back(&param_1->mTriggers,apTStack_c);
      }
      return true;
    }
    return false;
  }
  return false;
    */
}

bool MapBase::func_ov00_0207ff88(s32 param_2) {
    /*
      TriggerBase *pTVar1;
  TriggerBase **ppTVar2;
  TriggerBase **first;
  TriggerBase **ppTVar3;
  TriggerBase **ppTVar4;

  if (param_2->field1_0x4 == '\0') {
    first = (param_1->mTriggers).elements;
    pTVar1 = (TriggerBase *)(param_1->mTriggers).size;
    ppTVar2 = first + (int)pTVar1;
    while( true ) {
      if (first != ppTVar2) {
        pTVar1 = *first;
      }
      if (first == ppTVar2 || pTVar1 == param_2) break;
      first = first + 1;
    }
    ppTVar3 = first;
    if (first != ppTVar2) {
      ppTVar3 = first + 1;
    }
    ppTVar4 = first;
    if (first != ppTVar2 && ppTVar3 != ppTVar2) {
      do {
        pTVar1 = *ppTVar3;
        ppTVar3 = ppTVar3 + 1;
        first = ppTVar4;
        if (pTVar1 != param_2) {
          first = ppTVar4 + 1;
          *ppTVar4 = pTVar1;
        }
        ppTVar4 = first;
      } while (ppTVar3 != ppTVar2);
    }
    std::vector<>::erase
              (&param_1->mTriggers,first,(param_1->mTriggers).elements + (param_1->mTriggers).size);
    return true;
  }
  return false;
    */
}

void MapBase::func_ov00_0208005c(s32 param_2, s32 param_3, unk32 param_4) {
    /*
      func_ov000_0209c1e4(param_1->field181_0x144);
  return;
    */
}

void MapBase::func_ov00_0208006c(unk32 param_2, s32 param_3) {
    /*
      func_ov000_0209c2b4(param_1->field181_0x144);
  return;
    */
}

void MapBase::func_ov00_0208007c(s32 param_2, s32 param_3) {
    /*
      func_ov000_0209c2d0(param_1->field181_0x144);
  return;
    */
}

void MapBase::func_ov00_0208008c(u32 param_2) {
    /*
      func_ov000_0209c8e4((int)param_1->field181_0x144,param_2);
  return;
    */
}

unk8 MapBase::AddExit(Exit *param_2) {
    /*
      uint uVar1;
  Exit *pEVar2;

  uVar1 = (param_1->mExits).size;
  if (uVar1 < (uint)(param_1->mExits).capacity) {
    (param_1->mExits).size = uVar1 + 1;
    pEVar2 = (param_1->mExits).elements;
    pEVar2[uVar1].mDestCourse = param_2->mDestCourse;
    pEVar2[uVar1].field1_0x4 = param_2->field1_0x4;
    pEVar2[uVar1].field2_0x8 = param_2->field2_0x8;
    pEVar2[uVar1].field3_0xc = param_2->field3_0xc;
    pEVar2[uVar1].field4_0x10 = param_2->field4_0x10;
    pEVar2[uVar1].mDestMap = param_2->mDestMap;
    pEVar2[uVar1].mDestEntrance = param_2->mDestEntrance;
    pEVar2[uVar1].field7_0x14 = param_2->field7_0x14;
    pEVar2[uVar1].field8_0x15 = param_2->field8_0x15;
    return;
  }
  std::vector<Exit>::push_back(&param_1->mExits,param_2);
  return;
    */
}

char MapBase::func_ov00_02080140(Exit *param_2) {
    /*
      Exit *pEVar1;
  uint uVar2;
  Exit *pEVar3;
  Exit *pEVar4;
  MapBase_Unk1 MStack_54;

  MStack_54.field1_0x4.mDestCourse = param_2->mDestCourse;
  MStack_54.field1_0x4.field1_0x4 = param_2->field1_0x4;
  MStack_54.field1_0x4.field2_0x8 = param_2->field2_0x8;
  MStack_54.field1_0x4.field3_0xc = param_2->field3_0xc;
  pEVar3 = &MStack_54.field1_0x4;
  MStack_54.field1_0x4.field4_0x10 = param_2->field4_0x10;
  MStack_54.field1_0x4.mDestMap = param_2->mDestMap;
  MStack_54.field1_0x4.mDestEntrance = param_2->mDestEntrance;
  MStack_54.field1_0x4.field7_0x14 = param_2->field7_0x14;
  MStack_54.field1_0x4.field8_0x15 = param_2->field8_0x15;
  pEVar1 = (param_1->mExits).elements;
  MStack_54.field2_0x1c.mDestCourse = MStack_54.field1_0x4.mDestCourse;
  MStack_54.field2_0x1c.field1_0x4 = MStack_54.field1_0x4.field1_0x4;
  MStack_54.field2_0x1c.field2_0x8 = MStack_54.field1_0x4.field2_0x8;
  MStack_54.field2_0x1c.field3_0xc = MStack_54.field1_0x4.field3_0xc;
  MStack_54.field2_0x1c.field4_0x10 = MStack_54.field1_0x4.field4_0x10;
  MStack_54.field2_0x1c.mDestMap = MStack_54.field1_0x4.mDestMap;
  MStack_54.field2_0x1c.mDestEntrance = MStack_54.field1_0x4.mDestEntrance;
  MStack_54.field2_0x1c.field7_0x14 = MStack_54.field1_0x4.field7_0x14;
  MStack_54.field2_0x1c.field8_0x15 = MStack_54.field1_0x4.field8_0x15;
  ::MapBase_Unk1::func_ov00_02080324
            (&MStack_54,(int)pEVar1,(int)(pEVar1 + (param_1->mExits).size),(int)pEVar3);
  pEVar1 = (param_1->mExits).elements;
  pEVar4 = pEVar1 + (param_1->mExits).size;
  if ((Exit *)MStack_54.field0_0x0 == pEVar4) {
    if (pEVar1 != pEVar4) {
      pEVar3 = pEVar1 + 1;
    }
    if (pEVar1 != pEVar4 && pEVar3 != pEVar4) {
      do {
        if ((byte)pEVar1->field7_0x14 < (byte)pEVar3->field7_0x14) {
          pEVar1 = pEVar3;
        }
        pEVar3 = pEVar3 + 1;
      } while (pEVar3 != pEVar4);
    }
    if (pEVar1 == (param_1->mExits).elements + (param_1->mExits).size) {
      MStack_54.field2_0x1c.field7_0x14 = '\x01';
    }
    else {
      MStack_54.field2_0x1c.field7_0x14 = pEVar1->field7_0x14 + '\x01';
    }
    uVar2 = (param_1->mExits).size;
    if (uVar2 < (uint)(param_1->mExits).capacity) {
      (param_1->mExits).size = uVar2 + 1;
      pEVar3 = (param_1->mExits).elements;
      pEVar3[uVar2].mDestCourse = MStack_54.field2_0x1c.mDestCourse;
      pEVar3[uVar2].field1_0x4 = MStack_54.field2_0x1c.field1_0x4;
      pEVar3[uVar2].field2_0x8 = MStack_54.field2_0x1c.field2_0x8;
      pEVar3[uVar2].field3_0xc = MStack_54.field2_0x1c.field3_0xc;
      pEVar3[uVar2].field4_0x10 = MStack_54.field2_0x1c.field4_0x10;
      pEVar3[uVar2].mDestMap = MStack_54.field2_0x1c.mDestMap;
      pEVar3[uVar2].mDestEntrance = MStack_54.field2_0x1c.mDestEntrance;
      pEVar3[uVar2].field7_0x14 = MStack_54.field2_0x1c.field7_0x14;
      pEVar3[uVar2].field8_0x15 = MStack_54.field2_0x1c.field8_0x15;
    }
    else {
      std::vector<Exit>::push_back(&param_1->mExits,&MStack_54.field2_0x1c);
    }
  }
  else {
    MStack_54.field2_0x1c.field7_0x14 = *(undefined1 *)(MStack_54.field0_0x0 + 0x14);
  }
  return MStack_54.field2_0x1c.field7_0x14;
    */
}

void MapBase_Unk1::func_ov00_02080324(s32 param_2, s32 param_3, s32 param_4) {
    /*
      int iVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  ulonglong uVar5;

  for (; param_2 != param_3; param_2 = param_2 + 0x18) {
    iVar1 = UnkStruct_027e0d38_UnkC::func_ov000_020a5e9c(param_2);
    uVar5 = UnkStruct_027e0d38_UnkC::func_ov000_020a5e9c(param_4);
    bVar2 = iVar1 == (int)uVar5;
    if (bVar2) {
      uVar5 = (ulonglong)CONCAT14(*(undefined1 *)(param_2 + 0x12),(uint)*(byte *)(param_4 + 0x12));
    }
    bVar3 = (int)(uVar5 >> 0x20) == (int)uVar5;
    bVar4 = bVar2 && bVar3;
    if (bVar2 && bVar3) {
      bVar4 = *(char *)(param_2 + 0x13) == *(char *)(param_4 + 0x13);
    }
    if (bVar4) {
      bVar4 = *(int *)(param_2 + 8) == *(int *)(param_4 + 8);
    }
    if (bVar4) break;
  }
  param_1->field0_0x0 = param_2;
  return;
    */
}

bool MapBase::FindExit(u32 param_2, Exit *param_3) {
    /*
      uint uVar1;
  Exit *iter;
  Exit *end;

  if ((int)param_2 < 1) {
    return false;
  }
  iter = (param_1->mExits).elements;
  end = iter + (param_1->mExits).size;
  uVar1 = param_2 & 0xff;
  while( true ) {
    if (iter != end) {
      uVar1 = (uint)(byte)iter->field7_0x14;
    }
    if (iter == end || (param_2 & 0xff) == uVar1) break;
    iter = iter + 1;
  }
  if (iter != end) {
    param_3->mDestCourse = iter->mDestCourse;
    param_3->field1_0x4 = iter->field1_0x4;
    param_3->field2_0x8 = iter->field2_0x8;
    param_3->field3_0xc = iter->field3_0xc;
    param_3->field4_0x10 = iter->field4_0x10;
    param_3->mDestMap = iter->mDestMap;
    param_3->mDestEntrance = iter->mDestEntrance;
    param_3->field7_0x14 = iter->field7_0x14;
    param_3->field8_0x15 = iter->field8_0x15;
    return true;
  }
  return false;
    */
}

unk8 MapBase::AddCameraViewpoint(CameraViewpoint *param_2) {
    /*
      undefined2 uVar1;
  uint uVar2;
  CameraViewpoint *pCVar3;

  uVar2 = (param_1->mViewpoints).size;
  if (uVar2 < (uint)(param_1->mViewpoints).capacity) {
    (param_1->mViewpoints).size = uVar2 + 1;
    pCVar3 = (param_1->mViewpoints).elements;
    pCVar3[uVar2].field0_0x0 = param_2->field0_0x0;
    pCVar3[uVar2].field1_0x4 = param_2->field1_0x4;
    pCVar3[uVar2].mPos.x = (param_2->mPos).x;
    pCVar3[uVar2].mPos.y = (param_2->mPos).y;
    pCVar3[uVar2].mPos.z = (param_2->mPos).z;
    pCVar3[uVar2].field6_0x14 = param_2->field6_0x14;
    pCVar3[uVar2].field7_0x16 = param_2->field7_0x16;
    uVar1 = param_2->field8_0x18[1];
    pCVar3[uVar2].field8_0x18[0] = param_2->field8_0x18[0];
    pCVar3[uVar2].field8_0x18[1] = uVar1;
    return;
  }
  std::vector<>::push_back(&param_1->mViewpoints,param_2);
  return;
    */
}

bool MapBase::FindViewpoint_Unk_4(char id, CameraViewpoint *param_3) {
    /*
      undefined2 uVar1;
  char cVar2;
  CameraViewpoint *iter;
  CameraViewpoint *end;

  iter = (param_1->mViewpoints).elements;
  end = iter + (param_1->mViewpoints).size;
  cVar2 = id;
  while( true ) {
    if (iter != end) {
      cVar2 = iter->field1_0x4;
    }
    if (iter == end || id == cVar2) break;
    iter = iter + 1;
  }
  if (iter != end) {
    param_3->field0_0x0 = iter->field0_0x0;
    param_3->field1_0x4 = iter->field1_0x4;
    (param_3->mPos).x = (iter->mPos).x;
    (param_3->mPos).y = (iter->mPos).y;
    (param_3->mPos).z = (iter->mPos).z;
    param_3->field6_0x14 = iter->field6_0x14;
    param_3->field7_0x16 = iter->field7_0x16;
    uVar1 = iter->field8_0x18[1];
    param_3->field8_0x18[0] = iter->field8_0x18[0];
    param_3->field8_0x18[1] = uVar1;
    return true;
  }
  return false;
    */
}

bool MapBase::FindViewpoint_Unk_0(s32 param_2, CameraViewpoint *param_3) {
    /*
      undefined2 uVar1;
  int iVar2;
  CameraViewpoint *iter;
  CameraViewpoint *end;

  iter = (param_1->mViewpoints).elements;
  iVar2 = 0x1c;
  end = iter + (param_1->mViewpoints).size;
  while( true ) {
    if (iter != end) {
      iVar2 = iter->field0_0x0;
    }
    if (iter == end || param_2 == iVar2) break;
    iter = iter + 1;
  }
  if (iter != end) {
    param_3->field0_0x0 = iter->field0_0x0;
    param_3->field1_0x4 = iter->field1_0x4;
    (param_3->mPos).x = (iter->mPos).x;
    (param_3->mPos).y = (iter->mPos).y;
    (param_3->mPos).z = (iter->mPos).z;
    param_3->field6_0x14 = iter->field6_0x14;
    param_3->field7_0x16 = iter->field7_0x16;
    uVar1 = iter->field8_0x18[1];
    param_3->field8_0x18[0] = iter->field8_0x18[0];
    param_3->field8_0x18[1] = uVar1;
    return true;
  }
  return false;
    */
}

void MapBase::GetCurrentViewpoint(CameraViewpoint *param_2, s32 param_3) {
    /*
      bool bVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  CameraViewpoint local_30;
  char viewId;

  viewId = param_1->mCurrViewpointId[param_3];
  if (viewId == '\0') {
    uVar2 = (**(code **)(param_1->vtable + 0xb8))(param_1,param_3);
    param_2->field0_0x0 = uVar2;
    return;
  }
  local_30.field0_0x0 = 0;
  local_30.field1_0x4 = 0xff;
  local_30.field6_0x14 = 0;
  local_30.field7_0x16 = 0;
  uVar3 = 0;
  do {
    uVar4 = uVar3 + 1;
    local_30.field8_0x18[uVar3] = 0;
    uVar3 = uVar4;
  } while (uVar4 < 2);
  bVar1 = FindViewpoint_Unk_4(param_1,viewId,&local_30);
  if (!bVar1) {
    uVar2 = (**(code **)(param_1->vtable + 0xb8))(param_1,param_3);
    param_2->field0_0x0 = uVar2;
    return;
  }
  param_2->field0_0x0 = local_30.field0_0x0;
  param_2->field1_0x4 = local_30.field1_0x4;
  (param_2->mPos).x = local_30.mPos.x;
  (param_2->mPos).y = local_30.mPos.y;
  (param_2->mPos).z = local_30.mPos.z;
  param_2->field6_0x14 = local_30.field6_0x14;
  param_2->field7_0x16 = local_30.field7_0x16;
  param_2->field8_0x18[0] = local_30.field8_0x18[0];
  param_2->field8_0x18[1] = local_30.field8_0x18[1];
  return;
    */
}

unk32 MapBase::GetCurrentViewpoint_Unk_00(s32 param_2) {
    /*
      uint uVar1;
  uint uVar2;
  CameraViewpoint local_20;

  local_20.field1_0x4 = 0xff;
  local_20.field0_0x0 = 0;
  local_20.field6_0x14 = 0;
  local_20.field7_0x16 = 0;
  uVar1 = 0;
  do {
    uVar2 = uVar1 + 1;
    local_20.field8_0x18[uVar1] = 0;
    uVar1 = uVar2;
  } while (uVar2 < 2);
  GetCurrentViewpoint(param_1,&local_20,param_2);
  return local_20.field0_0x0;
    */
}

unk32 MapBase::vfunc_b8() {
    /*
      int iVar1;

  if (gGame.mModeId != 6) {
    return 0;
  }
  iVar1 = func_ov000_02079e3c();
  if (iVar1 != 0) {
    if (iVar1 != 1) {
      return 0x1c;
    }
    return 0x1c;
  }
  return 0;
    */
}

bool MapBase::func_ov00_02080824(u32 param_2, unk8 *param_3) {
    /*
      int iVar1;
  int iVar2;
  int iVar3;

  iVar2 = param_1->field183_0x14c;
  if (iVar2 == 0) {
    return false;
  }
  iVar3 = 0;
  iVar1 = iVar2;
  if (*(ushort *)(iVar2 + 4) != 0) {
    do {
      if (param_2 == *(byte *)(iVar1 + 8)) {
        iVar1 = iVar2 + 8 + iVar3 * 0x1c;
        *param_3 = *(undefined1 *)(iVar2 + 8 + iVar3 * 0x1c);
        param_3[1] = *(undefined1 *)(iVar1 + 1);
        *(undefined2 *)(param_3 + 2) = *(undefined2 *)(iVar1 + 2);
        *(undefined4 *)(param_3 + 4) = *(undefined4 *)(iVar1 + 4);
        *(undefined4 *)(param_3 + 8) = *(undefined4 *)(iVar1 + 8);
        *(undefined4 *)(param_3 + 0xc) = *(undefined4 *)(iVar1 + 0xc);
        *(undefined4 *)(param_3 + 0x10) = *(undefined4 *)(iVar1 + 0x10);
        *(undefined4 *)(param_3 + 0x14) = *(undefined4 *)(iVar1 + 0x14);
        *(undefined4 *)(param_3 + 0x18) = *(undefined4 *)(iVar1 + 0x18);
        return true;
      }
      iVar3 = iVar3 + 1;
      iVar1 = iVar1 + 0x1c;
    } while (iVar3 < (int)(uint)*(ushort *)(iVar2 + 4));
  }
  return false;
    */
}

bool MapBase::AddUnk_130(s32 param_2) {
    /*
      TriggerBase *pTVar1;
  TriggerBase **iter;
  uint uVar2;
  TriggerBase **end;
  TriggerBase *apTStack_c [3];

  if (0x1f < (uint)(param_1->mUnk_130).size) {
    return false;
  }
  iter = (param_1->mUnk_130).elements;
  pTVar1 = (TriggerBase *)(param_1->mUnk_130).size;
  end = iter + (int)pTVar1;
  while( true ) {
    if (iter != end) {
      pTVar1 = *iter;
    }
    if (iter == end || pTVar1 == param_2) break;
    iter = iter + 1;
  }
  if (iter == end) {
    uVar2 = (param_1->mUnk_130).size;
    if (uVar2 < (uint)(param_1->mUnk_130).capacity) {
      (param_1->mUnk_130).size = uVar2 + 1;
      (param_1->mUnk_130).elements[uVar2] = param_2;
    }
    else {
      apTStack_c[0] = param_2;
      std::vector<>::push_back(&param_1->mUnk_130,apTStack_c);
    }
    return true;
  }
  return false;
    */
}

bool MapBase::func_ov00_020809b8(s32 param_2) {
    /*
      TriggerBase *pTVar1;
  TriggerBase **end;
  TriggerBase **iter;
  TriggerBase **ppTVar2;
  TriggerBase **ppTVar3;

  iter = (param_1->mUnk_130).elements;
  pTVar1 = (TriggerBase *)(param_1->mUnk_130).size;
  end = iter + (int)pTVar1;
  while( true ) {
    if (iter != end) {
      pTVar1 = *iter;
    }
    if (iter == end || pTVar1 == param_2) break;
    iter = iter + 1;
  }
  ppTVar2 = iter;
  if (iter != end) {
    ppTVar2 = iter + 1;
  }
  ppTVar3 = iter;
  if (iter != end && ppTVar2 != end) {
    do {
      pTVar1 = *ppTVar2;
      ppTVar2 = ppTVar2 + 1;
      iter = ppTVar3;
      if (pTVar1 != param_2) {
        iter = ppTVar3 + 1;
        *ppTVar3 = pTVar1;
      }
      ppTVar3 = iter;
    } while (ppTVar2 != end);
  }
  std::vector<>::erase
            (&param_1->mUnk_130,iter,(param_1->mUnk_130).elements + (param_1->mUnk_130).size);
  return true;
    */
}

unk8 MapBase::func_ov00_02080a78(Vec3p *param_2) {
    /*
      TriggerBase *pTVar1;
  TriggerBase **ppTVar2;
  MapBase_Unk2 local_18;

  local_18.mVec.x = param_2->x;
  local_18.mVec.y = param_2->y;
  local_18.mVec.z = param_2->z;
  ppTVar2 = (param_1->mUnk_130).elements;
  MapBase_Unk2::func_ov00_02080ad0(&local_18,ppTVar2,ppTVar2 + (param_1->mUnk_130).size);
  if (local_18.mTrigger == (param_1->mUnk_130).elements + (param_1->mUnk_130).size) {
    pTVar1 = (TriggerBase *)0x0;
  }
  else {
    pTVar1 = *local_18.mTrigger;
  }
  return pTVar1;
    */
}

void MapBase_Unk2::func_ov00_02080ad0(TriggerBase **param_2, TriggerBase **param_3) {
    /*
      int iVar1;

                    // ~TriggerBase!Base
  while ((param_2 != param_3 && (iVar1 = (**(code **)(*param_2)->vtable)(), iVar1 == 0))) {
    param_2 = param_2 + 1;
  }
  param_1->mTrigger = param_2;
  return;
    */
}

unk8 MapBase::func_ov00_02080b24(TilePos *param_2) {
    /*
      int *piVar1;
  int iVar2;
  int dx;
  int dy;
  int dx_;
  int dy_;
  int *piVar3;
  int x;
  int y;
  undefined1 uStack_2c;
  undefined1 uStack_2b;
  undefined1 uStack_2a;
  undefined1 uStack_29;
  TilePos uStack_28;
  int dist;
  ushort height;
  ushort width;

  dist = (**(code **)(param_1->vtable + 0x58))(param_1,param_2,4);
  if (dist != 0) {
    return;
  }
  if (0x5f < (ushort)param_1->field33_0x30) {
    piVar3 = (int *)0x0;
    width = param_1->mWidth;
    dist = 0;
    x = 0;
    height = param_1->mHeight;
    if (width != 0) {
      do {
        y = 0;
        if (height != 0) {
          do {
            uStack_28.x = (byte)x;
            uStack_28.y = (byte)y;
            piVar1 = (int *)(**(code **)(param_1->vtable + 0x78))(param_1,&uStack_28);
            if ((piVar1 != (int *)0x0) && (iVar2 = (**(code **)(*piVar1 + 0x1c))(), iVar2 == 0x42))
            {
              if (piVar3 == (int *)0x0) {
                dx = abs(x - (uint)param_2->x);
                dy = abs(y - (uint)param_2->y);
                piVar3 = piVar1;
                dist = dx + dy;
              }
              else {
                dx_ = abs(x - (uint)param_2->x);
                dy_ = abs(y - (uint)param_2->y);
                if (dist < dx_ + dy_) {
                  piVar3 = piVar1;
                  dist = dx_ + dy_;
                }
              }
            }
            y = y + 1;
          } while (y < (int)(uint)height);
        }
        x = x + 1;
      } while (x < (int)(uint)width);
    }
    if (piVar3 == (int *)0x0) {
      return;
    }
    piVar3[1] = piVar3[1] & 0xfffffffe;
    uStack_29 = *(undefined1 *)((int)piVar3 + 0x15);
    uStack_2a = (undefined1)piVar3[5];
    (**(code **)(param_1->vtable + 0x98))(param_1,&uStack_2a,4,0);
    uStack_2b = *(undefined1 *)((int)piVar3 + 0x15);
    uStack_2c = (undefined1)piVar3[5];
    (**(code **)(param_1->vtable + 0x98))(param_1,&uStack_2c,6,1);
    param_1->field33_0x30 = param_1->field33_0x30 + -1;
  }
  (**(code **)(param_1->vtable + 0x98))(param_1,param_2,4,1);
  param_1->field33_0x30 = param_1->field33_0x30 + 1;
  return;
    */
}

void MapBase::func_ov00_02080d08(TilePos *param_2) {
    /*
      int iVar1;

  iVar1 = (**(code **)(param_1->vtable + 0x58))(param_1,param_2,4);
  if (iVar1 == 0) {
    return;
  }
  (**(code **)(param_1->vtable + 0x98))(param_1,param_2,4,0);
  (**(code **)(param_1->vtable + 0x98))(param_1,param_2,6,1);
  param_1->field33_0x30 = param_1->field33_0x30 + -1;
  return;
    */
}

ARM void MapBase::vfunc_bc() {}

ARM void MapBase::vfunc_98(unk32 param_2, unk32 param_3, unk32 param_4) {}

ARM void MapBase::vfunc_c0() {}

bool MapBase::TriggerOfType_vfunc_10(unk32 type) {
    /*
      TriggerBase **ppTVar1;

  ppTVar1 = (param_1->mTriggers).elements;
  if ((param_1->mTriggers).size * -4 != 0) {
    do {
      if (type == (*ppTVar1)->mId) {
        (**(code **)((*ppTVar1)->vtable + 0x10))();
      }
      ppTVar1 = ppTVar1 + 1;
    } while (ppTVar1 != (param_1->mTriggers).elements + (param_1->mTriggers).size);
  }
  return true;
    */
}

ARM unk32 TriggerBase::vfunc_10() {
    return 1;
}

ARM void MapBase::func_ov00_02080de4() {}

unk8 MapBase::func_ov00_02080de8(unk32 param_2) {
    /*
      int iVar1;
  undefined1 uVar2;
  int iVar3;

  uVar2 = 0;
  iVar3 = *(int *)(data_027e0f64 + param_2 * 4 + 4);
  iVar1 = *(int *)(iVar3 + 0x15c);
  if (0x16 < iVar1) {
    if (iVar1 < 0x5b) {
      if ((iVar1 < 0x5a) && (iVar1 != 0x33)) goto switchD_overlay_d_0::02080e20_caseD_c;
    }
    else if (iVar1 != 0x5b) goto switchD_overlay_d_0::02080e20_caseD_c;
    goto LAB_arm9_ov000__02080e88;
  }
  if (0x15 < iVar1) goto LAB_arm9_ov000__02080e88;
  if (0xb < iVar1) {
    if (iVar1 != 0x15) goto switchD_overlay_d_0::02080e20_caseD_c;
    goto LAB_arm9_ov000__02080e88;
  }
  switch(iVar1) {
  case 0:
    goto LAB_arm9_ov000__02080e88;
  case 1:
    goto LAB_arm9_ov000__02080e88;
  case 2:
    goto LAB_arm9_ov000__02080e88;
  case 3:
    uVar2 = 0x1f;
    goto LAB_arm9_ov000__02080ec8;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
    break;
  case 8:
    break;
  case 9:
    break;
  case 10:
    break;
  case 0xb:
LAB_arm9_ov000__02080e88:
    uVar2 = 0;
    goto LAB_arm9_ov000__02080ec8;
  }
switchD_overlay_d_0::02080e20_caseD_c:
  iVar1 = func_ov000_02087dd8(iVar3);
  if ((iVar1 != 0) && ((*(short *)(iVar3 + 0x224) < 0x1c73 || (0x238d < *(short *)(iVar3 + 0x224))))
     ) {
    uVar2 = 0x1f;
  }
LAB_arm9_ov000__02080ec8:
  *(undefined1 *)(param_1->field180_0x140 + 0x5c) = uVar2;
  return;
    */
}

void MapBase::func_ov00_02080edc() {
    /*
      int iVar1;

  iVar1 = UnkStruct_027e0d38_UnkC::func_ov000_020a5e9c(&data_027e0d38->field6_0xc);
  if ((iVar1 == 0x2a || iVar1 == 0x2f) || iVar1 == 0x30) {
    param_1->field2_0x5 = 0;
    return;
  }
  param_1->field2_0x5 = 1;
  return;
    */
}
