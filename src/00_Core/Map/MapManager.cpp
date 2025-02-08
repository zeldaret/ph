#include "Map/MapManager.hpp"
#include "Actor/Actor.hpp"
#include "Actor/ActorManager.hpp"
#include "Player/PlayerBase.hpp"
#include "Save/AdventureFlags.hpp"

extern bool func_01ffbe78(Vec3p *param1, Vec3p *param2, Vec3p *param3, Vec4p *param4);

extern u32 func_ov000_02078bc4(unk32 param_1);
extern void func_ov000_02078bf0(s32 *param_1, unk32 param_2);
extern s32 func_ov000_02078fe8(s32 *param_1);
extern void func_ov000_0207920c(s32 *param_1, Vec3p *param_2, s32 *param_3, s32 *param_4);
extern void func_ov000_020792a0(s32 *param_1, s32 param_2, unk32 param_3, unk32 param_4);
extern void func_ov000_020798bc(s32 *param_1, s32 param_2);
extern void func_ov000_02088000(unk32 param_1, s32 param_2);
extern void func_ov000_02088130(u8 *param_1, unk32 param_2);
extern void func_ov000_02088144(u8 *param_1, unk32 param_2);
extern void func_ov000_0208b13c(s32 *param_1);
extern unk32 func_ov000_0208b180(s32 *param_1);
extern s32 func_ov000_0208b73c(s32 param_1, unk32 param_2);
extern s32 func_ov000_0208b7d0(s32 param_1, Vec3p *param_2);
extern s32 func_ov000_0208b804(s32 *param_1, Vec3p *param_2, Vec3p *param_3);
extern void func_ov000_0208cc88(s32 *param1);
extern void func_ov000_0208d620(s32 *param_1);
extern void func_ov000_0208d680(s32 *param_1);
extern s32 func_ov000_0208df78(s32 *param_1, unk32 param_, unk32 param_3, Vec3p *param_4, s32 *param_5);
extern void func_ov000_0208e6b0(Vec3p *param_1, Vec3p *param_2);
extern s32 func_ov000_0208e6f0(Vec3p *param_1);
extern s32 func_ov000_0208e704(Vec3p *param_1);
extern s32 func_ov000_0208e87c(AABB *param_1, Vec3p *param_2, Vec3p *param_3);
extern void func_ov000_0208ed74(AABB *param_1, Vec3p *param_2);
extern void func_ov000_02093a1c(u32 *param_1, s32 *param_2);
extern void func_ov000_02096324(s32 *param_1, s32 param_2);
extern s32 *func_ov000_02096418(s32 *param_1);
extern void func_ov000_0209d6e8(s32 param_1, s32 param_2);
extern unk32 func_ov000_020a5e9c(unk32 *param_1);

extern void func_ov004_021024c4(MapManager *param_1, s32 param_2, bool param_3, s32 param_4);
extern void func_ov004_02102770(s32 *param_1);
extern void func_ov004_02102b28(s32 *param_1);
extern void func_ov004_02102e3c(s32 *param_1);
extern void func_ov004_02105578(ActorManager *param_1, u32 param_2);
extern void func_ov004_02105608(ActorManager *param_1, unk32 param_2, unk32 param_3, unk32 param_4);

extern s32 func_ov015_02129c14(MapBase *param_1);
extern bool func_ov015_02129c24(MapBase *param_1, Vec3p *param_2, Vec3p *param_3);
extern bool func_ov015_02129c34(MapBase *param_1, s32 param_2);
extern bool func_ov015_02129c44(MapBase *param_1, s32 param_2);

extern s32 *data_027e0c68;
extern s32 *data_027e0d38;
extern s32 *data_027e0d3c;
extern s32 *data_027e0f64;
extern s32 *data_027e0f68;
extern s32 *data_027e0f6c;
extern s32 *data_027e0f70;
extern s32 *data_027e0f78;
extern s32 *data_027e0f7c;
extern s32 *data_027e103c;

ARM void MapManager::GetCourseDungeonProgress(CourseProgress *param_2) {
    this->mCourse->GetDungeonProgress(param_2);
}

ARM void MapManager::func_ov00_020820fc(s32 param_2, unk32 param_3, unk32 param_4) {
    this->mCourse->func_ov00_0207ca28(param_2, param_3, param_4);
}

unk8 MapManager::func_ov00_0208210c(unk32 param_2, unk32 *param_3) {
    unk32 *puVar1;
    unk8 uVar2;
    unk32 uVar3;
    s32 iVar4;
    unk32 local_40;
    unk32 local_3c;
    unk32 local_38;
    unk32 local_34;
    unk16 local_30;
    unk8 local_2e;
    unk8 local_2d;
    unk8 local_2c;
    unk8 local_2b;
    unk32 local_28;
    unk32 local_24;
    unk32 local_20;
    unk32 local_1c;
    unk16 local_18;
    unk8 local_16;
    unk8 local_15;
    unk8 local_14;
    unk8 local_13;

    local_28 = 0x47;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0xfffffffe;
    local_18 = 0;
    local_16 = 0xff;
    local_15 = 0;
    local_14 = 0;
    local_13 = 0;
    if (param_2 == 0) {
        this->func_ov00_02082348(&local_28);
        uVar3                   = func_ov000_020a5e9c(&local_28);
        *param_3                = uVar3;
        *(unk8 *) (param_3 + 1) = local_16;
        uVar2                   = local_15;
    } else {
        *param_3                = 0xb;
        *(unk8 *) (param_3 + 1) = 2;
        uVar2                   = 4;
    }
    *(unk8 *) ((int) param_3 + 5)     = uVar2;
    uVar3                             = func_ov000_020a5e9c(data_027e0d38 + 0x28) + 0x1c;
    puVar1                            = data_027e0d38;
    param_3[2]                        = uVar3;
    *(unk8 *) (param_3 + 4)           = *(unk8 *) (*(s32 *) (*(s32 *) puVar1 + 0x28) + 0x2e);
    *(unk16 *) (param_3 + 5)          = *(unk16 *) (*(s32 *) (*(s32 *) puVar1 + 0x28) + 0x36);
    iVar4                             = *(s32 *) (*(int *) puVar1 + 0x28);
    param_3[6]                        = *(unk32 *) (iVar4 + 0x38);
    param_3[7]                        = *(unk32 *) (iVar4 + 0x3c);
    param_3[8]                        = *(unk32 *) (iVar4 + 0x40);
    uVar3                             = func_ov000_020a5e9c(puVar1 + 0x28) + 0x44;
    param_3[3]                        = uVar3;
    puVar1                            = data_027e0d38;
    *(unk8 *) ((int) param_3 + 0x11)  = *(unk8 *) (*(s32 *) (*(s32 *) data_027e0d38 + 0x28) + 0x56);
    iVar4                             = *(s32 *) (*(s32 *) puVar1 + 0x28);
    param_3[9]                        = *(unk32 *) (iVar4 + 0x5c);
    param_3[10]                       = *(unk32 *) (iVar4 + 0x60);
    param_3[0xb]                      = *(unk32 *) (iVar4 + 100);
    *(unk16 *) ((int) param_3 + 0x16) = *(unk16 *) (*(s32 *) (*(s32 *) puVar1 + 0x28) + 0x68);
    iVar4                             = *(s32 *) (*(s32 *) puVar1 + 0x28);
    local_40                          = *(unk32 *) (iVar4 + 0x70);
    local_3c                          = *(unk32 *) (iVar4 + 0x74);
    local_38                          = *(unk32 *) (iVar4 + 0x78);
    local_34                          = *(unk32 *) (iVar4 + 0x7c);
    local_30                          = *(unk16 *) (iVar4 + 0x80);
    local_2e                          = *(unk8 *) (iVar4 + 0x82);
    local_2d                          = *(unk8 *) (iVar4 + 0x83);
    local_2c                          = *(unk8 *) (iVar4 + 0x84);
    local_2b                          = *(unk8 *) (iVar4 + 0x85);
    uVar3                             = func_ov000_020a5e9c(&local_40);
    param_3[0x70]                     = uVar3;
    puVar1                            = data_027e0f70;
    *(unk8 *) ((int) param_3 + 0x1be) = local_2e;
    *(unk8 *) ((int) param_3 + 0x1bf) = local_2d;
    func_ov000_02096324(puVar1, *param_3); // unsure if (s32 *param_1, s32 param_2) or (s32 param_1, s32 *param_2)
    func_ov000_0209d6e8(*data_027e0f7c, *param_3);
    if (this->mCourse->mType != CourseType_TempleOfTheOceanKing) {
        *(unk8 *) ((int) param_3 + 7) = this->mUnk_08;
        *(unk8 *) (param_3 + 0x6f)    = this->mUnk_09;
        return;
    }
    return;
}

ARM void MapManager::func_ov00_0208230c(s32 *param_2) {
    *param_2                         = this->mCourse->mIndex;
    Course *course                   = this->mCourse;
    *(unk8 *) ((u32) param_2 + 0x12) = course->mMapGrid[(u8) course->mCurrMapPos.x][(u8) course->mCurrMapPos.y];
    *(unk8 *) ((u32) param_2 + 0x13) = this->mUnk_0c;
}

ARM void MapManager::func_ov00_02082348(unk32 *param_2) {
    s32 var[4];
    var[0] = 0x47;
    var[1] = 0;
    var[2] = 0;
    var[3] = 0xfffffffe;
    this->func_ov00_0208230c(var);
    func_ov000_02078bf0(var, *param_2);
}

ARM void MapManager::func_ov00_020823a4(unk32 param_2) {
    this->mMap->func_ov00_0207de68(param_2);
}

ARM void MapManager::func_ov00_020823b4() {
    this->mMap->func_ov00_0207de88();
}

ARM bool MapManager::func_ov00_020823c4(s32 *param_2, s32 param_3) {
    return this->mMap->func_ov00_0207e08c(param_2, param_3);
}

ARM s32 MapManager::func_ov00_020823d4(s32 param_2) {
    return this->mMap->func_ov00_0207e0f0(param_2);
}

ARM s32 MapManager::func_ov00_020823e4(s32 param_2) {
    return this->mMap->func_ov00_0207e28c(param_2);
}

ARM void MapManager::MapData_vfunc_b4() {
    this->mMap->vfunc_b4();
}

ARM void MapManager::MapData_vfunc_9c() {
    this->mMap->vfunc_9c();
}

ARM s32 MapManager::func_ov00_02082424() {
    s32 var = this->mMap->vfunc_4c();
    if (var == 2) {
        var = func_ov015_02129c14(this->mMap); // MapBase::GetUnk_19c_Unk_28 according to Ghidra
        return var;
    }
    return 0;
}

ARM bool MapManager::func_ov00_02082454(Vec3p *param_2, Vec3p *param_3) {
    s32 var = this->mMap->vfunc_4c();
    if (var == 2) {
        bool state = func_ov015_02129c24(this->mMap, param_2, param_3);
        return state;
    }
    return false;
}

ARM bool MapManager::func_ov00_02082494(s32 param_2) {
    s32 var = this->mMap->vfunc_4c();
    if (var == 2) {
        bool state = func_ov015_02129c34(this->mMap, param_2);
        return state;
    }
    return false;
}

ARM bool MapManager::func_ov00_020824cc(s32 param_2) {
    s32 var = this->mMap->vfunc_4c();
    if (var == 2) {
        bool state = func_ov015_02129c44(this->mMap, param_2);
        return state;
    }
    return false;
}

ARM s32 MapManager::func_ov00_02082504() {
    s32 var = this->mMap->vfunc_4c();
    if (var == 2) {
        return (s32) this->mMap->mUnk_1ac;
    }
    return 0;
}

ARM unk8 *MapManager::func_ov00_02082538() {
    unk8 var0[12];
    s32 var1 = this->mMap->vfunc_4c();
    if (var1 != 2) {
        return var0;
    }
    return this->mMap->mUnk_1a0;
    // Reference to gPlayerPos in Ghidra, but not used. (See overlay_d_0::0x2082538)
}

ARM void MapManager::func_ov00_02082594() {
    func_ov000_0208d620(data_027e0f68);
}

ARM void MapManager::func_ov00_020825ac() {
    func_ov000_0208d680(data_027e0f68);
}

ARM s32 MapManager::GetCourseFilePath(char *courseName, char *buf) {
    // s32 var = sprintf(buf, "Map/%s/course.bin", courseName); // Should we manually define sprintf?
    // return var;
}

ARM void MapManager::func_ov00_020825e4(unk32 param_2, char *buf) {
    // param2 unused.
    // return value of GetCourseFilePath unused.
    char *courseName; // = (char *) func_ov000_0209d71c(*(unk32 *) DWORD_027e0f7c) does not exist.
    this->GetCourseFilePath(courseName, buf);
}

ARM void MapManager::func_ov00_02082614(char *param_2, unk32 param_3) {
    this->mCourse->func_ov00_0207ce20(param_3, 0, param_2, 4);
}

ARM void MapManager::MapData_vfunc_b0(unk32 param_2, unk32 param_3) {
    this->mMap->vfunc_b0(param_2, param_3);
}

ARM void MapManager::func_ov00_02082650(s32 param_2, s32 param_3, unk32 param_4) {
    this->mMap->func_ov00_0208005c(param_2, param_3, param_4);
}

ARM void MapManager::func_ov00_02082660(s32 param_2, s32 param_3) {
    this->mMap->func_ov00_0208007c(param_2, param_3);
}

ARM void MapManager::func_ov00_02082670(unk32 param_2, s32 param_3) {
    this->mMap->func_ov00_0208006c(param_2, param_3);
}

ARM void MapManager::func_ov00_02082680(unk32 param_2, unk32 param_3) {
    this->mMap->vfunc_98(param_2, 5, param_3);
}

ARM void MapManager::func_ov00_020826a0(unk32 param_2, unk32 param_3, unk32 param_4) {
    this->mMap->vfunc_98(param_2, 7, param_3 /*, param_4*/);
    // vfunc_98 takes either three params or four ??? This doesn't make sense
    // objdiff says 100%
}

ARM void MapManager::CreateMap(unk32 mapType, unk32 param_3, unk32 param_4) {
    MapBase *mapBase;

    if (this->mMap == NULL) {
        switch (mapType) {
            case 0:
                // mapBase = (MapBase *) SysObject::operator_new(0x1dc, (astruct_19 **)(DWORD_027e0ce0 + 4), 4);
                // What is astruct_19 ** ? What is DWORD_027e0ce0 ?
                if (mapBase != NULL) {
                    // mapBase = (MapBase *)func_ov018_0215b4a0(mapBase, param_3, param_4); // Does not exist.
                }
                this->mMap = mapBase;
                return;
            case 1: break;
            case 2:
                // mapBase = (MapBase *) SysObject::operator_new(0x1b0, (astruct_19 **)(DWORD_027e0ce0 + 4), 4);
                if (mapBase != NULL) {
                    // mapBase = (MapBase *)func_ov015_02128dd8(mapBase, param_3, param_4); // Does not exist.
                }
                this->mMap = mapBase;
                return;
            case 3: break;
            case 4:
                // mapBase = (MapBase *) SysObject::operator_new(0x790, (astruct_19 **)(DWORD_027e0ce0 + 4), 4);
                if (mapBase != NULL) {
                    // mapBase = (MapBase *)func_ov012_0212b358(mapBase, param_3, param_4); // Does not exist.
                }
                this->mMap = mapBase;
                return;
        }
        // mapBase = (MapBase *) SysObject::operator_new(0x790, (astruct_19 **)(DWORD_027e0ce0 + 4), 4);
        if (mapBase != NULL) {
            // mapBase = (MapBase *)func_ov017_0215b4e8(mapBase, param_3, param_4); // Does not exist.
        }
        this->mMap = mapBase;
    }
}

ARM void MapManager::DestroyMap() {
    if (this->mMap == NULL) {
        return;
    }
    this->mMap->~MapBase();
}

ARM void MapManager::MapData_vfunc_44() {
    this->mMap->vfunc_44();
}

ARM void MapManager::func_ov00_02082808(s32 param_2) {
    // How to define PTR_027e0d38 ?
    // if (*(int*)(*(int*)PTR_027e0d38 + 0x14) == 1) {
    //    return;
    // }
    s32 var1; // = func_ov00_02084740()
    s32 var2;
    if (param_2 == 0) {
        // var2 = thunk_FUN_0201f91c(DWORD_overlay_d_0_bss__020eec68); // What are these?
        if (var1 == var2) {
            return;
        }
        // func_ov00_020d70a4(DWORD_overlay_d_0_bss__020eec68, var1, 0, 0x7f, param_3); // And these?
    } else {
        // var2 = func_ov00_020a5e9c(*(s32 *) PTR_027e0d38 + 0xc);
        if (var2 == 0) {
            // func_ov015_021849a4(DWORD_overlay_d_15_bss__02190458);
        }
        // func_ov00_020a5e9c(DWORD_overlay_d_0_bss__020eec68, var1, 0, 0x7f, param_3);
    }
    // var1 = func_ov00_020a5e9c(*(s32 *) PTR_027e0d38 + 0xc);
    if (var1 == 0) {
        return;
    }
    // func_ov00_020d72b8(DWORD_overlay_d_0_bss__020eec68);
}

ARM void MapManager::MapData_vfunc_7c() {
    this->mMap->vfunc_7c();
}

ARM void MapManager::MapData_vfunc_84(unk32 param_2) {
    this->mMap->vfunc_84(param_2);
}

ARM bool MapManager::func_ov00_020828f8(s32 *param_2) {
    return this->mMap->func_ov00_0207f38c(param_2);
}

ARM u8 MapManager::GetNumMaps() {
    return this->mCourse->mNumMaps;
}

ARM s32 MapManager::func_ov00_02082914(unk32 param_2) {
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int local_50;
    int local_48;
    Entrance local_44;
    Entrance local_30;

    switch (param_2) {
        case 0xfa:
            // iVar1 = *(int *)(*(int *) PTR_027e0d38 + 0x28); // define PTR_027e0d38
            local_30.mPos.x  = *(int *) (iVar1 + 0x5c);
            local_30.mPos.y  = *(int *) (iVar1 + 0x60);
            local_30.mPos.z  = *(int *) (iVar1 + 100);
            local_30.mAngle  = *(unk16 *) (iVar1 + 0x68);
            local_30.mId     = *(u8 *) (iVar1 + 0x6a);
            local_30.mUnk_10 = *(int *) (iVar1 + 0x6c);
            iVar1            = this->mMap->AddEntrance(&local_30);
            return iVar1;
        case 0xfb: break;
        case 0xfc: break;
        case 0xfd: break;
        case 0xfe: break;
        default: goto switchD_overlay_d_0;
    }
    local_44.mId     = 0xff;
    local_44.mUnk_10 = 0;
    // iVar1                = *(int *) (*(int *) PTR_027e0d38 + 0x28); // define PTR_027e0d38
    local_50 = *(int *) (iVar1 + 0x38);
    iVar2    = *(int *) (iVar1 + 0x3c);
    local_48 = *(int *) (iVar1 + 0x40);
    iVar1    = 0x2000;
    iVar3    = 0x2000;
    iVar4    = 0xfd;
    if (this->mCourse->mType == CourseType_Sea) {
        iVar1 = this->mMap->vfunc_88();
        iVar1 = iVar1 + 0xa000;
        iVar3 = this->mMap->vfunc_8c();
        iVar3 = iVar3 + 0xa000;
        iVar4 = 0xfe;
    }
    local_44.mAngle = 0;
    switch (param_2) {
        case 0xfb:
            local_48        = this->GetMapMaxZ();
            local_48        = local_48 - iVar3;
            local_44.mAngle = 0x8000;
            break;
        case 0xfc:
            local_48        = this->GetMapMinZ();
            local_48        = iVar3 + local_48;
            local_44.mAngle = 0;
            break;
        case 0xfd:
            local_50        = this->GetMapMaxX();
            local_50        = local_50 - iVar1;
            local_44.mAngle = 0xc000;
            break;
        case 0xfe:
            local_50        = this->GetMapMinX();
            local_50        = iVar1 + local_50;
            local_44.mAngle = 0x4000;
    }
    local_44.mId     = (u8) param_2;
    local_44.mPos.x  = local_50;
    local_44.mPos.z  = local_48;
    local_44.mPos.y  = iVar2;
    local_44.mUnk_10 = iVar4;
    // this             = (MapManager *) this->mMap->AddEntrance(&local_44); // huh ????
switchD_overlay_d_0:
    return (int) this; // what ???????
}

ARM void MapManager::func_ov00_02082acc() {
    this->mCourse->func_ov00_0207d7bc();
}

ARM s32 *MapManager::func_ov00_02082adc() {
    return func_ov000_02096418(data_027e0f70);
}

ARM void MapManager::func_ov00_02082af4() {
    func_ov000_0208cc88(data_027e0f68);
    this->mMap->vfunc_48();
    this->func_ov00_02082808(0);
    this->mUnk_0a = 1;
    this->mUnk_0b = 0;
}

bool MapManager::func_ov00_02082b3c(s32 param_2) {
    u8 bVar1;
    PlayerBase *puVar2;
    u16 uVar3;
    u32 uVar4;
    unk32 uVar5;
    u32 in_r3;
    ActorManager *pAVar6;
    unk32 local_18;

    local_18 = in_r3; // what's the point of that?
    this->mCourse->FindMapGridPos((Vec2b *) &local_18, this->mCourse, (u32) * (u8 *) (param_2 + 0x12));
    uVar4 = this->GetCurrentMapPosX();
    if (((((local_18 & 0xff) == uVar4) && (uVar4 = this->GetCurrentMapPosY(), (local_18 >> 8 & 0xff) == uVar4)) &&
         ((*(s32 *) (param_2 + 8) != 1 || (*(s32 *) (*(s32 *) data_027e0d38 + 0x14) != 1)))) &&
        (*(char *) (param_2 + 0x15) == '\0'))
    {
        gAdventureFlags->func_ov00_020976c8();
        puVar2        = gPlayer;
        this->mUnk_0c = *(unk32 *) (param_2 + 0x13);
        // (**(code **) (**(int **) puVar2 + 0x38))(*(int **) puVar2, *(unk32 *) (param_2 + 0x13), 0);
        // UnkStruct_027e0c68::FUN_overlay_d_4__02106db8((UnkStruct_027e0c68 *) PTR_DWORD_overlay_d_0__02082d04);
        this->mMap->vfunc_18();
    } else {
        gAdventureFlags->func_ov00_020976c8();
        func_ov000_0208b13c(data_027e0f64);
        pAVar6 = gActorManager;
        uVar5  = this->func_ov00_02082d08();
        func_ov004_02105608(pAVar6, local_18 & 0xff, local_18 >> 8 & 0xff, uVar5);
        this->mMap->vfunc_2c();
        func_ov004_02102b28(data_027e0f68);
        func_ov004_02102770(data_027e0f6c);
        func_ov004_02102e3c(data_027e0f78);
        bVar1                          = *(u8 *) (param_2 + 0x12);
        uVar3                          = this->mCourse->FindCurrentMapData_Unk_04();
        uVar4                          = this->mCourse->FindMapData_Unk_04((u32) bVar1);
        (this->mCourse->mCurrMapPos).x = (u8) local_18;
        (this->mCourse->mCurrMapPos).y = (u8) * (&local_18 + 0x4); // I assume this is what Ghidra means by "local_18._1_1_"
        func_ov004_021024c4(param_2, uVar3 != uVar4, 0);
        func_ov004_02105578(gActorManager, (u32) * (u8 *) (param_2 + 0x12));
        // UnkStruct_027e0103c::thunk_FUN_overlay_d_0__020cf7e8(*PTR_PTR_overlay_d_0__02082cfc);
    }
    return true;
}

ARM u8 MapManager::func_ov00_02082d08() {
    Course *course = this->mCourse;
    return course->mMapGrid[(u8) course->mCurrMapPos.x][(u8) course->mCurrMapPos.y];
}

ARM u8 MapManager::GetCurrentMapPosX() {
    return this->mCourse->mCurrMapPos.x;
}

ARM u8 MapManager::GetCurrentMapPosY() {
    return this->mCourse->mCurrMapPos.y;
}

ARM u8 MapManager::func_ov00_02082d40() {
    switch (this->mCourse->mType) {
        case CourseType_Sea:
            return this->mCourse->mMapGrid[(u8) this->mCourse->mCurrMapPos.x][(u8) this->mCourse->mCurrMapPos.y];
        default: return this->mCourse->mUnk_0b1;
    }
}

ARM u32 MapManager::func_ov00_02082d74(unk32 param_2) {
    return func_ov000_02078bc4(param_2);
}

ARM void MapManager::func_ov00_02082d84(unk8 *param_2, s32 *param_3, s32 *param_4) {
    s32 mapWidth = this->GetMapWidth();
    u32 uVar3; // = CoDivide64By32(0x100000, mapWidth << 0xc); Not defined ?
    s32 mapHeight = this->GetMapHeight();
    u32 uVar4; // = CoDivide64By32(0xc0000, mapHeight << 0xc); Not defined ?
    s64 lVar1 = (s64) (s32) ((u32) *param_2 << 0xc);
    *param_3  = (s32) (((u32) lVar1 >> 0xc | (s32) ((u64) lVar1 >> 0x20) * 0x100000) + ((s32) uVar4 >> 1) + 0x800) >> 0xc;
    lVar1     = (s64) (s32) ((u32) param_2[1] << 0xc) * (s64) (s32) uVar4 + 0x800;
    *param_4  = (s32) (((u32) lVar1 >> 0xc | (s32) ((u64) lVar1 >> 0x20) * 0x100000) + ((s32) uVar4 >> 1) + 0x800) >> 0xc;
}

ARM bool MapManager::func_ov00_02082e1c(s32 *param_2, s32 *param_3) {
    unk32 local_20; // Unused. What could this be for?
    unk32 local_24; // Unused. What could this be for?
    unk32 local_28; // Vec3p instead ???
    s32 local_44[11]; // not [6] apparently
    s32 local_48;
    Vec2b local_4a;
    u8 local_4b;
    u8 local_4c;
    u8 bVar1;
    u8 bVar2;
    s64 lVar3;
    s32 iVar5;
    u32 uVar7;
    if (!this->mCourse->mUnk_25c) {
        *param_2 = 0xc0;
        *param_3 = 0xc0;
        return false;
    }
    if (!this->mCourse->IsCurrentMapInMainGrid()) {
        local_44[0] = -0x100;
        local_48    = -0x100;
        bVar1       = this->mMap->mUnk_01a;
        // iVar5       = UnkStruct_027e0d38::FUN_overlay_d_0__02078b40(*(UnkStruct_027e0d38 **) PTR_PTR_overlay_d_0__02083068);
        if (iVar5 == 0) {
            // bVar2 = *(u8 *) (*(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083068 + 0x28) + 0x9a);
        } else {
            // bVar2 = *(u8 *) (*(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083068 + 0x28) + 0x2e);
        }
        uVar7 = (u32) bVar2;
        if (uVar7 == 0xff) {
            uVar7 = (u32) (u8) this->mCourse->mMapGrid[(u8) this->mCourse->mUnk_01e][(u8) this->mCourse->mUnk_01f];
        }
        // iVar5 = UnkStruct_027e0d38::FUN_overlay_d_0__02078b40(*(UnkStruct_027e0d38 **) PTR_PTR_overlay_d_0__02083068);
        if (iVar5 == 0) {
            // iVar5    = *(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083068 + 0x28);
            local_24 = *(unk32 *) (iVar5 + 0xa4);
            local_20 = *(unk32 *) (iVar5 + 0xa8);
            local_28 = *(unk32 *) (iVar5 + 0xa0);
        } else {
            // iVar5    = *(int *) (*(int *) PTR_PTR_overlay_d_0__02083068 + 0x28);
            local_24 = *(unk32 *) (iVar5 + 0x3c);
            local_20 = *(unk32 *) (iVar5 + 0x40);
            local_28 = *(unk32 *) (iVar5 + 0x38);
        }
        if (this->mCourse->GetMapScreenPos((u32) bVar1, local_44, &local_48)) {
            uVar7    = this->mCourse->GetScreenMapCellSizeX();
            lVar3    = (s64) (s32) ((u32) (u8) this->mMap->mUnk_01b << 0xc) * (s64) (s32) uVar7 + 0x800;
            *param_2 = local_44[0] + ((s32) (((u32) lVar3 >> 0xc | (s32) ((u64) lVar3 >> 0x20) * 0x100000) + 0x800) >> 0xc);
            uVar7    = this->mCourse->GetScreenMapCellSizeY();
            local_4b = this->mMap->mUnk_01c;
        } else {
            this->mCourse->GetMapScreenPos(uVar7, local_44, &local_48);
            this->mCourse->FindMapGridPos(&local_4a, this->mCourse, uVar7);
            // this->func_ov00_02083a54(&local_4c, this, &local_28, (u32) local_4a.x, (u32) local_4a.y);
            uVar7    = this->mCourse->GetScreenMapCellSizeX();
            lVar3    = (s64) (s32) ((u32) local_4c << 0xc) * (s64) (s32) uVar7 + 0x800;
            *param_2 = local_44[0] + ((s32) (((u32) lVar3 >> 0xc | (s32) ((u64) lVar3 >> 0x20) * 0x100000) + 0x800) >> 0xc);
            uVar7    = this->mCourse->GetScreenMapCellSizeY();
        }
        lVar3    = (s64) (s32) ((u32) local_4b << 0xc) * (s64) (s32) uVar7 + 0x800;
        *param_3 = local_48 + ((s32) (((u32) lVar3 >> 0xc | (s32) ((u64) lVar3 >> 0x20) * 0x100000) + 0x800) >> 0xc);
        return true;
    }
}

ARM void MapManager::func_ov00_0208306c(s32 *param_2, s32 *param_3) {
    MapManager *pMVar1;
    s32 iVar2;
    MapManager *pMVar3;
    unk8 auStack_2c[18];
    s32 local_28; // This has to be a Vec3p, but uncertain as of now.
    unk32 local_24; // Unused.
    unk32 local_20; // Unused.
    Vec3p local_1c;

    pMVar3 = (MapManager *) this->mCourse->mUnk_008;
    pMVar1 = this; // why
    if (pMVar3 != (MapManager *) 0xfffffffd) {
        pMVar1 = (MapManager *) 0xfffffffe; // I really don't get this
    }
    if (pMVar3 == (MapManager *) 0xfffffffd || pMVar3 == pMVar1) {
        // iVar2    = *(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083158 + 0x28);
        local_28 = *(int *) (iVar2 + 0x5c);
        local_24 = *(unk32 *) (iVar2 + 0x60);
        local_20 = *(unk32 *) (iVar2 + 100);
        /*this->func_ov00_02083244((u32) * (u8 *) (*(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083158 + 0x28) + 0x56), &local_28,
                                 param_2, param_3);*/
        return;
    }
    if (pMVar3 != (MapManager *) 0xffffffff) {
        *param_2 = this->mCourse->mUnk_0b4;
        *param_3 = this->mCourse->mUnk_0b8;
        return;
    }
    local_1c.y = gPlayerPos->y;
    local_1c.x = gPlayerPos->x;
    local_1c.z = gPlayerPos->z;
    // this->func_ov00_02083a1c(auStack_2c, this, &local_1c);
    this->func_ov00_02082d84(auStack_2c, param_2, param_3);
}

ARM void MapManager::func_ov00_0208315c(s32 *param_2, s32 *param_3) {
    u32 uVar1;
    s32 *piVar2;
    s32 iVar3;
    s32 *piVar4;
    s32 local_2c; // This has to be a Vec3p, but uncertain as of now.
    unk32 local_28; // Unused.
    unk32 local_24; // Unused.
    Vec3p local_20;

    piVar4 = (s32 *) this->mCourse->mUnk_008;
    piVar2 = param_2;
    if (piVar4 != (s32 *) 0xfffffffd) {
        piVar2 = (s32 *) 0xfffffffe;
    }
    if (piVar4 == (s32 *) 0xfffffffd || piVar4 == piVar2) {
        // iVar3    = *(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083240 + 0x28);
        local_2c = *(s32 *) (iVar3 + 0x5c);
        local_28 = *(unk32 *) (iVar3 + 0x60);
        local_24 = *(unk32 *) (iVar3 + 100);
        /*this->func_ov00_02083298((u32) * (u8 *) (*(s32 *) (*(s32 *) PTR_PTR_overlay_d_0__02083240 + 0x28) + 0x56),
                                  &local_2c, param_2, param_3);*/
        return;
    }
    if (piVar4 != (s32 *) 0xffffffff) {
        *param_2 = this->mCourse->mUnk_0bc;
        *param_3 = this->mCourse->mUnk_0c0;
        return;
    }
    local_20.x = *(s32 *) gPlayerPos->x;
    local_20.y = *(s32 *) gPlayerPos->y;
    local_20.z = *(s32 *) gPlayerPos->z;
    uVar1      = this->func_ov00_02082d08();
    this->func_ov00_02083298(uVar1, &local_20, param_2, param_3);
}

ARM void MapManager::func_ov00_02083244(u32 param_2, s32 *param_3, s32 *param_4, s32 *param_5) {
    unk8 *puVar1;

    // puVar1 = PTR_MapManager_Unk2_overlay_d_0__020e24e8.field1_0x4_overlay_d_0__02083294; // What is this? mMap?
    if (3 < param_2) { // Objdiff wants (4 < param_2), why is that?
        param_2 = 0;
    }
    /* *param_4 =
        (*param_3 - *(s32 *) (PTR_MapManager_Unk2_overlay_d_0__020e24e8_overlay_d_0__02083290 + param_2 * 8)) + 0x800 >> 0xc;*/
    *param_5 = (param_3[2] - *(s32 *) (puVar1 + param_2 * 8)) + 0x800 >> 0xc;
}

ARM void MapManager::func_ov00_02083298(u32 param_2, Vec3p *param_3, s32 *param_4, s32 *param_5) {
    if (3 < param_2) { // Objdiff wants (4 < param_2), why is that?
        param_2 = 0;
    }
    /* *param_4 =
        *(s32 *) (PTR_MapManager_Unk1_overlay_d_0__020e24c8_overlay_d_0__02083300 + param_2 * 8) +
        ((*param_3 - *(s32 *) (PTR_MapManager_Unk2_overlay_d_0__020e24e8_overlay_d_0__020832fc + param_2 * 8) >> 1) + 0x800 >>
         0xc);
    *param_5 =
        *(s32 *) (PTR_MapManager_Unk1_overlay_d_0__020e24c8.field1_0x4_overlay_d_0__02083308 + param_2 * 8) +
        ((param_3[2] - *(s32 *) (PTR_MapManager_Unk2_overlay_d_0__020e24e8.field1_0x4_overlay_d_0__02083304 + param_2 * 8) >>
          1) +
             0x800 >>
         0xc); */

    // [!] BELOW IS NOT CODE:
    // PTR_MapManager_Unk1_overlay_d_0__020e24c8_overlay_d_0__02083300
    // PTR_MapManager_Unk2_overlay_d_0__020e24e8_overlay_d_0__020832fc
    // PTR_MapManager_Unk1_overlay_d_0__020e24c8.field1_0x4_overlay_d_0__02083308
    // PTR_MapManager_Unk2_overlay_d_0__020e24e8.field1_0x4_overlay_d_0__02083304
    //
    // What are these pointers and fields? How should they be defined?
}

ARM bool MapManager::GetCourseData_Unk_25c() {
    return this->mCourse->mUnk_25c;
}

ARM bool MapManager::IsMapInMainGrid(u32 map) {
    return this->mCourse->IsMapInMainGrid(map);
}

ARM bool MapManager::func_ov00_02083328() {
    u32 map = (u32) this->func_ov00_02082d08();
    return this->mCourse->IsMapInMainGrid(map);
}

ARM u8 MapManager::GetCourseMainGridSizeX() {
    return (u8) this->mCourse->mMainGridSize.x;
}

ARM u8 MapManager::GetCourseMainGridSizeY() {
    return (u8) this->mCourse->mMainGridSize.y;
}

ARM u16 MapManager::GetMapWidth() {
    return this->mMap->mWidth;
}

ARM u16 MapManager::GetMapHeight() {
    return this->mMap->mHeight;
}

ARM s32 MapManager::func_ov00_02083374() {
    return this->GetMapWidth() << 0xc;
}

ARM s32 MapManager::func_ov00_02083384() {
    return this->GetMapHeight() << 0xc;
}

ARM q20 MapManager::GetCourseMinX() {
    return this->mCourse->mBounds.min.x;
}

ARM q20 MapManager::GetCourseMinZ() {
    return this->mCourse->mBounds.min.z;
}

ARM q20 MapManager::GetCourseMaxX() {
    return this->mCourse->mBounds.max.x;
}

ARM q20 MapManager::GetCourseMaxZ() {
    return this->mCourse->mBounds.max.z;
}

ARM q20 MapManager::GetMapMinX() {
    return this->mMap->mBounds.min.x;
}

ARM q20 MapManager::GetMapMinZ() {
    return this->mMap->mBounds.min.z;
}

ARM q20 MapManager::GetMapMaxX() {
    return this->mMap->mBounds.max.x;
}

ARM q20 MapManager::GetMapMaxZ() {
    return this->mMap->mBounds.max.z;
}

ARM q20 MapManager::GetMapCenterX() {
    return this->mMap->mCenter.x;
}

ARM q20 MapManager::GetMapCenterZ() {
    return this->mMap->mCenter.z;
}

ARM void MapManager::GetMapMinBounds(Vec3p *param_2) {
    MapBase *mapBase = this->mMap;
    param_2->x       = mapBase->mBounds.min.x;
    param_2->y       = mapBase->mBounds.min.y;
    param_2->z       = mapBase->mBounds.min.z;
}

ARM void MapManager::GetMapMaxBounds(Vec3p *param_2) {
    MapBase *mapBase = this->mMap;
    param_2->x       = mapBase->mBounds.max.x;
    param_2->y       = mapBase->mBounds.max.y;
    param_2->z       = mapBase->mBounds.max.z;
}

ARM void MapManager::GetMapCenter(Vec3p *param_2) {
    MapBase *mapBase = this->mMap;
    param_2->x       = mapBase->mCenter.x;
    param_2->y       = mapBase->mCenter.y;
    param_2->z       = mapBase->mCenter.z;
}

ARM void MapManager::func_ov00_0208346c(AABB *param_2) {
    (param_2->min).x = this->GetMapMinX();
    (param_2->min).z = this->GetMapMinZ();
    (param_2->max).x = this->GetMapMaxX();
    (param_2->max).z = this->GetMapMaxZ();
    (param_2->max).y = 0x1333;
    (param_2->min).y = 0;
}

ARM void MapManager::func_ov00_020834bc(Vec3p *param_2, unk32 param_3, unk32 param_4) {
    Vec3p *mapCenter = this->mCourse->FindMapCenter((u32) (u8) this->mCourse->mMapGrid[param_3][param_4]);
    s32 iVar2;
    param_2->x = mapCenter->x;
    param_2->y = mapCenter->y;
    param_2->z = mapCenter->z;
    iVar2      = this->func_ov00_02083374();
    param_2->x = param_2->x - (iVar2 >> 1);
    iVar2      = this->func_ov00_02083384();
    param_2->z = param_2->z - (iVar2 >> 1);
}

ARM void MapManager::func_ov00_02083524(Vec3p *param_2, unk32 param_3, unk32 param_4) {
    Vec3p *mapCenter = this->mCourse->FindMapCenter((u32) (u8) this->mCourse->mMapGrid[param_3][param_4]);
    param_2->x       = mapCenter->x;
    param_2->y       = mapCenter->y;
    param_2->z       = mapCenter->z;
}

ARM void MapManager::func_ov00_02083560(Vec2b *param_1, MapManager *param_2, u32 param_3) {
    param_2->mCourse->FindMapGridPos(param_1, param_2->mCourse, param_3);
}

ARM u8 MapManager::func_ov00_02083570(unk32 param_2, unk32 param_3) {
    return this->mCourse->mMapGrid[param_2][param_3];
}

ARM unk32 MapManager::func_ov00_02083588() {
    return this->mCourse->FindMapData_Unk_08(this->func_ov00_02082d08());
}

ARM unk32 MapManager::func_ov00_020835a4() {
    return this->mCourse->Get_Unk_c8_00();
}

ARM unk32 MapManager::func_ov00_020835b4() {
    return this->mCourse->Get_Unk_c8_04();
}

ARM unk8 MapManager::func_ov00_020835c4(MapManager *param_1, s32 param_2, unk32 param_3) {
    return param_1->mCourse->func_ov00_0207d404(param_2, 0, param_3);
}

ARM bool MapManager::func_ov00_020835e4(s32 param_2, unk32 *param_3, unk8 *param_4) {
    return this->mCourse->func_ov00_0207caa8(param_2, param_3, param_4);
}

ARM unk32 MapManager::func_ov00_020835f4(s32 param_2) {
    return this->mCourse->func_ov00_0207cb30(param_2);
}

ARM void MapManager::func_ov00_02083604(s32 param_2) {
    this->mCourse->func_ov00_0207cbe8(param_2);
}

ARM unk8 MapManager::func_ov00_02083614(s32 param_2) {
    return this->mCourse->func_ov00_0207cc24(param_2);
}

ARM bool MapManager::GetEntrancePos(Entrance *param_1, unk32 entranceId) {
    Entrance *entrance = this->mMap->FindEntrance(entranceId);
    q20 y              = entrance->mPos.y;
    q20 z              = entrance->mPos.z;
    param_1->mPos.x    = entrance->mPos.x;
    param_1->mPos.y    = y;
    param_1->mPos.z    = z;
    param_1->mAngle    = entrance->mAngle;
    param_1->mId       = entrance->mId; // mId needs to be u8 according to objdiff
    param_1->mUnk_10   = entrance->mUnk_10;
    return true;
}

ARM bool MapManager::func_ov00_02083664(Entrance *param_2, unk32 entranceId) {
    Entrance entrance;
    entrance.mId     = (u8) 0xff; // mId needs to be u8
    entrance.mUnk_10 = 0;
    if (this->GetEntrancePos(&entrance, entranceId)) {
        param_2->mPos.x = entrance.mPos.x;
        param_2->mPos.y = entrance.mPos.y;
        param_2->mPos.z = entrance.mPos.z;
        return true;
    }
    return false;
}

ARM s32 MapManager::GetTriggerBoundingBox(s32 param_2, AABB *param_3) {
    return this->mMap->GetTriggerBoundingBox(param_2, param_3);
}

ARM s32 MapManager::GetTriggerBoundingBoxes(s32 param_2, AABB *param_3, s32 param_4) {
    return this->mMap->GetTriggerBoundingBoxes(param_2, param_3, param_4);
}

ARM bool MapManager::func_ov00_020836dc(u32 type, u32 actorId) {
    Actor *actor;
    Vec3p playerPos;

    if (!(actorId != 0 && actorId != 1)) { // what an awkward statement (as opposed to if (actorId < 2))
        // below doesn't match in objdiff
        q20 x       = gPlayerPos->x;
        q20 y       = gPlayerPos->y;
        playerPos.x = x;
        playerPos.y = y;
        q20 z       = gPlayerPos->z;
        playerPos.z = z;

    } else {
        actor = gActorManager->FindActorById(actorId);
        if (actor == NULL) {
            return false;
        }
        playerPos.x = actor->mPos.x;
        playerPos.y = actor->mPos.y;
        playerPos.z = actor->mPos.z;
    }
    return this->IsTriggerTypeOverlapped(type, &playerPos);
}

ARM bool MapManager::IsTriggerTypeOverlapped(u32 type, Vec3p *pos) {
    return this->mMap->IsTriggerTypeOverlapped(type, pos);
}

ARM bool MapManager::GetOverlappingTrigger(Vec3p *param_2) {
    return this->mMap->GetOverlappingTrigger(param_2);
}

ARM bool MapManager::func_ov00_02083790(s32 param_2) {
    unk8 *puVar1;
    unk8 *puVar2;
    bool bVar3;
    s32 iVar4;
    s32 iStack_18;
    s32 aiStack_14[2];

    // puVar2 = PTR_PTR_overlay_d_0__02083834;
    // puVar1 = PTR_DWORD_overlay_d_0__02083830;
    if (param_2 != 0) {
        // *(s32 *) (*(s32 *) (*(s32 *) PTR_DWORD_overlay_d_0__02083830 + 8) + 0x1b4) = param_2;
        *(s32 *) (*(s32 *) (*(s32 *) puVar1 + 4) + 0x1b4) = param_2;
        // iVar4 = UnkStruct_027e0d38::FUN_overlay_d_0__02078b40(*(UnkStruct_027e0d38 **) puVar2);
        if ((iVar4 != 0) && (bVar3 = this->func_ov00_02082e1c(aiStack_14, &iStack_18), !bVar3)) {
            // FUN_overlay_d_0__02079898(*(undefined4 *) PTR_DWORD_overlay_d_0__02083838, param_2, 0x10);
            gActorManager->func_ov00_020c3ce8(param_2, true);
        }
        bVar3 = this->mMap->AnyTrigger_func_0c(param_2);
        return bVar3;
    }
    return true;
}

ARM bool MapManager::func_ov00_02083840(s32 param_2) {
    s32 *puVar1;
    s32 *puVar2;
    bool bVar3;
    s32 iVar4;

    puVar2 = data_027e0d3c;
    puVar1 = data_027e0f64;
    if (param_2 != 0) {
        *(unk32 *) (*(int *) (*(int *) data_027e0f64 + 8) + 0x1b4) = 0xffffffff;
        *(unk32 *) (*(int *) (*(int *) puVar1 + 4) + 0x1b4)        = 0xffffffff;
        iVar4                                                      = func_ov000_02078fe8(puVar2);
        if (-1 < iVar4) {
            func_ov000_020798bc(data_027e0d3c, 0x10);
            gActorManager->func_ov00_020c3ce8(param_2, false);
        }
        bVar3 = this->mMap->TriggerOfType_vfunc_10(param_2);
        return bVar3;
    }
    return true;
}

ARM bool MapManager::AddTrigger(s32 param_2) {
    return this->mMap->AddTrigger(param_2);
}

ARM bool MapManager::func_ov00_020838d8(s32 param_2) {
    return this->mMap->func_ov00_0207ff88(param_2);
}

ARM bool MapManager::FindExit(u32 param_2, Exit *param_3) {
    return this->mMap->FindExit(param_2, param_3);
}

ARM char MapManager::func_ov00_020838f8(Exit *param_2) {
    return this->mMap->func_ov00_02080140(param_2);
}

ARM bool MapManager::func_ov00_02083908(char id, CameraViewpoint *param_3) {
    return this->mMap->FindViewpoint_Unk_4(id, param_3);
}

ARM void MapManager::func_ov00_02083918(s32 param_2, CameraViewpoint *param_3) {
    this->mMap->FindViewpoint_Unk_0(param_2, param_3);
}

ARM void MapManager::GetCurrentViewpoint(CameraViewpoint *param_2, s32 param_3) {
    this->mMap->GetCurrentViewpoint(param_2, param_3);
}

ARM unk32 MapManager::func_ov00_02083938(s32 param_2) {
    return this->mMap->GetCurrentViewpoint_Unk_00(param_2);
}

ARM void MapManager::SetCurrentViewpointId(unk8 value, s32 index) {
    this->mMap->mCurrViewpointId[index] = value;
}

ARM void MapManager::func_ov00_02083958(s32 param_2) {
    this->mMap->func_ov00_0207f924(param_2);
}

ARM void MapManager::func_ov00_02083968(u32 param_2, unk8 *param_3) {
    this->mMap->func_ov00_02080824(param_2, param_3);
}

ARM bool MapManager::func_ov00_02083978(Vec3p *param_2, Vec3p *param_3) {
    s32 iVar1 = this->mMap->func_ov00_02080a78(param_2);
    if (iVar1 != 0) {
        param_3->x = *(s32 *) (iVar1 + 0x8);
        param_3->y = *(s32 *) (iVar1 + 0xc);
        param_3->z = *(s32 *) (iVar1 + 0x10);
        return true;
    }
    return false;
}

ARM bool MapManager::func_ov00_020839b4(s32 param_2) {
    return this->mMap->AddUnk_130(param_2);
}

ARM bool MapManager::func_ov00_020839c4(s32 param_2) {
    return this->mMap->func_ov00_020809b8(param_2);
}

ARM s32 MapManager::func_ov00_020839d4(s32 param_2) {
    return this->mMap->GetClampedTileX(param_2 - this->GetMapCenterX());
}

ARM s32 MapManager::func_ov00_020839f8(s32 param_2) {
    return this->mMap->GetClampedTileY(param_2 - this->GetMapCenterZ());
}

ARM void MapManager::func_ov00_02083a1c(Vec2b *param_1, MapManager *param_2, Vec3p *param_3) {
    param_1->x /*or y?*/ = param_2->func_ov00_020839f8(param_3->z);
    param_1->y /*or x?*/ = param_2->func_ov00_020839d4(param_3->x);
}

ARM void MapManager::func_ov00_02083a54(u8 *param_1, MapManager *param_2, s32 *param_3, s32 param_4, s32 *param_5) {
    bool bVar1;
    unk8 uVar2;
    unk8 uVar3;
    s32 iVar4;
    u32 uVar5;
    s32 *piVar6;
    Vec3p local_38;
    Vec3p local_2c;
    Vec3p VStack_20;

    piVar6 = param_3;
    iVar4  = param_2->GetCourseData_Unk_25c();
    if (iVar4 == 0) {
        uVar2      = param_2->func_ov00_020839f8(param_3[2]);
        uVar3      = param_2->func_ov00_020839d4(*param_3);
        *param_1   = uVar3;
        param_1[1] = uVar2;
        return;
    }
    if (param_4 != -1) {
        piVar6 = param_5;
    }
    if (param_4 != -1 && piVar6 != (int *) 0xffffffff) {
        uVar5 = (u32) * (u8 *) ((s32) piVar6 + (s32) (param_2->mCourse->mMapGrid + param_4));
    } else {
        uVar5 = param_2->func_ov00_02082d08();
    }
    bVar1 = param_2->IsMapInMainGrid(uVar5);
    if (!bVar1) {
        uVar2      = param_2->func_ov00_020839f8(param_3[2]);
        uVar3      = param_2->func_ov00_020839d4(*param_3);
        *param_1   = uVar3;
        param_1[1] = uVar2;
        return;
    }
    param_2->func_ov00_02083524(&VStack_20, param_4, *param_5);
    local_38.x = *param_3;
    local_38.y = param_3[1];
    local_38.z = param_3[2];
    Vec3p_Sub(&local_38, &VStack_20, &local_2c);
    uVar2      = param_2->mMap->GetClampedTileY(local_2c.z);
    uVar3      = param_2->mMap->GetClampedTileX(local_2c.x);
    *param_1   = uVar3;
    param_1[1] = uVar2;
}

ARM s32 MapManager::GetTileStartX(unk32 x) {
    return this->GetMapCenterX() + this->mMap->GetTileStartX(x);
}

ARM s32 MapManager::GetTileStartZ(unk32 z) {
    return this->GetMapCenterZ() + this->mMap->GetTileStartZ(z);
}

ARM s32 MapManager::GetTileEndX(unk32 x) {
    return this->GetMapCenterX() + this->mMap->GetTileEndX(x);
}

ARM s32 MapManager::GetTileEndZ(unk32 z) {
    return this->GetMapCenterZ() + this->mMap->GetTileEndZ(z);
}

ARM s32 MapManager::func_ov00_02083c24(unk32 x) {
    return this->GetMapCenterX() + this->mMap->GetTileStartX(x) + 0x800;
}

ARM s32 MapManager::func_ov00_02083c50(unk32 z) {
    return this->GetMapCenterZ() + this->mMap->GetTileStartZ(z) + 0x800;
}

ARM void MapManager::func_ov00_02083c7c(Vec3p *param_2, u32 param_3) {
    Vec3p local_28;
    param_2->x = this->func_ov00_02083c24(param_3 & 0xff);
    param_2->z = this->func_ov00_02083c50(param_3 >> 8 & 0xff);
    param_2->y = this->MapData_vfunc_68(&local_28, true); // please tell me this is correct
}

ARM void MapManager::func_ov00_02083ce8(MapManager *param_1, s32 *param_2, u32 param_3, s32 param_4, u32 param_5) {
    bool bVar1;
    s32 iVar2;
    u32 uVar3;
    Vec3p local_2c;

    uVar3 = param_3;
    iVar2 = param_1->GetCourseData_Unk_25c();
    if (iVar2 == 0) {
        iVar2      = param_1->mMap->GetTileStartX(param_3 & 0xff);
        *param_2   = iVar2 + 0x800;
        iVar2      = param_1->mMap->GetTileStartZ(param_3 >> 8 & 0xff);
        param_2[2] = iVar2 + 0x800;
    } else {
        if (param_4 != -1) {
            uVar3 = param_5;
        }
        if (param_4 != -1 && uVar3 != 0xffffffff) {
            uVar3 = (u32) (u8) param_1->mCourse->mMapGrid[param_4][uVar3];
        } else {
            uVar3 = param_1->func_ov00_02082d08();
        }
        bVar1 = param_1->IsMapInMainGrid(uVar3);
        if (bVar1) {
            param_1->func_ov00_02083524(&local_2c, param_4, param_5);
            iVar2      = param_1->mMap->GetTileStartX(param_3 & 0xff);
            *param_2   = local_2c.x + iVar2 + 0x800;
            iVar2      = param_1->mMap->GetTileStartZ(param_3 >> 8 & 0xff);
            param_2[2] = local_2c.z + iVar2 + 0x800;
        } else {
            iVar2      = param_1->mMap->GetTileStartX(param_3 & 0xff);
            *param_2   = iVar2 + 0x800;
            iVar2      = param_1->mMap->GetTileStartZ(param_3 >> 8 & 0xff);
            param_2[2] = iVar2 + 0x800;
        }
    }
    iVar2      = param_1->MapData_vfunc_68(&local_2c, true); // I really do hope this is right
    param_2[1] = iVar2;
}

ARM void MapManager::func_ov00_02083e34(unk8 param_2, unk8 param_3, unk32 param_4) {
    // Missing opcode in objdiff
    unk8 local_8; // What type is this?
    unk8 local_7; // Unused.
    unk16 uStack_6; // Unused.

    uStack_6 = (unk16) ((u32) param_4 >> 0x10);
    local_8  = param_2;
    local_7  = param_3;
    this->mMap->vfunc_60(&local_8);
}

ARM unk32 MapManager::MapData_vfunc_60(unk8 *param_1) { // should the param be bool*?
    return this->mMap->vfunc_60(param_1);
}

ARM bool MapManager::func_ov00_02083e70() {
    int iVar1;
    int iVar2;

    iVar1 = this->MapData_vfunc_54(0);
    if (iVar1 < 0x2c) {
        if ((0x2a < iVar1) || (iVar1 == 0x1b)) {
            return true;
        }
    } else if (((iVar1 < 0x50) && (0x4d < iVar1)) && (iVar1 == 0x4e || iVar1 == 0x4f)) {
        return true;
    }
    iVar1 = this->MapData_vfunc_60(0);
    iVar2 = this->GetMapData_Unk_48();
    return iVar2 <= iVar1;
}

ARM unk32 MapManager::MapData_vfunc_68(Vec3p *param_1, bool param_2) {
    return this->mMap->vfunc_68(param_1, param_2);
}

ARM s32 MapManager::func_ov00_02083ef8(Vec3p *param_2, Vec3p *param_3) {
    int iVar1;
    Vec3p local_18;

    local_18.x = param_2->x;
    local_18.z = param_2->z;
    local_18.y = param_2->y;
    if (param_2->y < param_3->y) {
        local_18.y = param_3->y;
    }
    iVar1 = this->mMap->vfunc_68(&local_18, 0); // takes no args.
    return iVar1;
}

ARM void MapManager::func_ov00_02083f44(Vec3p *param_2) {
    Vec3p local_18;

    local_18.z = param_2->z;
    local_18.x = param_2->x;
    /*local_18.y = *(int *)(
                        PTR_PTR_s_anc_overlay_d_0__020e24a0_overlay_d_0__020e24a4_overlay_d_0__02083f7c
                        + 0x20);*/
    this->func_ov00_02083ef8(param_2, &local_18);
}

unk8 MapManager::MapData_vfunc_6c(unk32 param_2, unk32 param_3, unk32 param_4) {
    this->mMap->vfunc_6c(param_2, param_3, param_4);
}

unk8 MapManager::MapData_vfunc_70(Vec3p *param_2) {
    this->mMap->vfunc_70(param_2);
}

ARM void MapManager::func_ov00_02083fb0(u32 *param_1, MapManager *param_2, Vec3p *param_3) {
    s32 iVar1;
    unk32 dVar2;

    iVar1 = param_2->mMap->vfunc_74(param_3);
    if (iVar1 != 0) {
        *param_1 = *(unk32 *) (iVar1 + 0xc);
        return;
    }
    dVar2 = param_2->MapData_vfunc_70(param_3);
    if (dVar2 != 0xffff) {
        func_ov000_02093a1c(param_1, data_027e0f6c);
        return;
    }
    *param_1 = 0;
}

void MapManager::GetTileWorldBounds(Vec2b *tile, AABB *tileBounds) {
    int iVar1;
    Vec3p local_20;

    this->mMap->GetTileBounds(tile, tileBounds);
    iVar1      = this->GetMapCenterZ();
    local_20.x = this->GetMapCenterX();
    local_20.y = 0;
    local_20.z = iVar1;
    Vec3p_Add(&tileBounds->min, &local_20, &tileBounds->min);
    Vec3p_Add(&tileBounds->max, &local_20, &tileBounds->max);
}

unk32 MapManager::MapData_vfunc_54(unk8 *a) {
    return this->mMap->vfunc_54(a); // what to use for this param?
}

unk8 MapManager::func_ov00_020840a0(unk8 param_2, unk8 param_3, unk32 param_4) {
    unk8 local_8;
    unk8 local_7;
    unk16 uStack_6;

    uStack_6 = (unk16) ((u32) param_4 >> 0x10);
    // _local_8 = CONCAT11(param_3, param_2);
    this->MapData_vfunc_54(&local_8); // Doesn't take any params.
    // No calls to functions according to objdiff, why???
}

unk32 MapManager::MapData_vfunc_78(bool *param_1) { // bool* param placeholder for now, no way of knowing what the type is.
    return this->mMap->vfunc_78(param_1);
}

unk8 MapManager::func_ov00_020840dc() {
    int *piVar1;

    piVar1 = (int *) this->MapData_vfunc_78(0);
    if (piVar1 != (int *) 0x0) {
        // (**(code **) (*piVar1 + 0x1c))(); // MapBase::func_ov00_0207f934() ??
    }
}

unk8 MapManager::func_ov00_02084100(unk32 *param_1, MapManager *param_2) {
    unk32 uVar1 = param_2->mMap->mUnk_040;
    *param_1    = param_2->mMap->mUnk_044;
    param_1[1]  = uVar1;
}

u32 MapManager::GetMapData_Unk_48() {
    return this->mMap->mUnk_048;
}

unk32 MapManager::GetMapData_Unk_4c() {
    return this->mMap->mUnk_04c;
}

unk32 MapManager::func_ov00_0208412c() {
    return this->mMap->func_ov00_0207f934();
}

void MapManager::func_ov00_0208413c(unk32 param_2) {
    this->mMap->func_ov00_0207f948(param_2);
}

unk8 MapManager::MapData_vfunc_58(Vec2b *param_1, int param_2) {
    this->mMap->vfunc_58(param_1, param_2);
}

unk8 MapManager::func_ov00_02084164(Vec2b *param_2) {
    int iVar1;
    unk32 uVar2;

    iVar1 = this->mMap->vfunc_58(param_2, 7 /*, pcVar3, param_4*/); // Params?
    if (iVar1 == 0) {
        uVar2 = this->MapData_vfunc_54(0);
        switch (uVar2) {
            case 0: break;
            case 1: return 0;
            case 2: return 0;
            case 3: return 0;
            case 4: return 0;
            case 5: return 0;
            case 6: return 0;
            case 7: return 0;
            case 8: break;
            case 9: break;
            case 10: return 0;
            case 0xb: break;
            case 0xc: break;
            case 0xd: break;
            case 0xe: break; // I mean, honestly Ghidra.
            case 0xf: break; // What are we going to do with you?
            case 0x10: break;
            case 0x11: break;
            case 0x12: break;
            case 0x13: break;
            case 0x14: return 0;
            case 0x15: break;
            case 0x16: break;
            case 0x17: return 0;
            case 0x18: break;
            case 0x19: return 0;
            case 0x1a: break;
            case 0x1b: return 0;
            case 0x1c: return 0;
            case 0x1d: return 0;
            case 0x1e: return 0;
            case 0x1f: return 0;
            case 0x20: break;
            case 0x21: break;
            case 0x22: break;
            case 0x23: break;
            case 0x24: return 0;
            case 0x25: break;
            case 0x26: break;
            case 0x27: break;
            case 0x28: break;
            case 0x29: break;
            case 0x2a: break;
            case 0x2b: return 0;
            case 0x2c: break;
            case 0x2d: break;
            case 0x2e: break;
            case 0x2f: break;
            case 0x30: return 0;
            case 0x31: break;
            case 0x32: break;
            case 0x33: return 0;
            case 0x34: return 0;
            case 0x35: break;
            case 0x36: break;
            case 0x37: return 0;
            case 0x38: break;
            case 0x39: break;
            case 0x3a: break;
            case 0x3b: break;
            case 0x3c: break;
            case 0x3d: break;
            case 0x3e: break;
            case 0x3f: break;
            case 0x40: return 0;
            case 0x41: break;
            case 0x42: break;
            case 0x43: break;
            case 0x44: break;
            case 0x45: break;
            case 0x46: return 0;
            case 0x47: return 0;
            case 0x48: return 0;
            case 0x49: return 0;
            case 0x4a: return 0;
            case 0x4b: return 0;
            case 0x4c: return 0;
            case 0x4d: break;
            case 0x4e: return 0;
            case 0x4f: return 0;
            case 0x50: return 0;
            case 0x51: break;
            case 0x52: break;
            case 0x53: break;
            case 0x54: break;
            default: return 0;
        }
        return 1;
    }
    return 0;
}

u8 MapManager::GetMapData_Unk_0a() {
    return this->mMap->mUnk_00a;
}

u8 MapManager::GetMapData_Unk_0b() {
    return this->mMap->mUnk_00b;
}

unk8 MapManager::MapData_vfunc_a4(unk8 *param_1) {
    this->mMap->vfunc_a4(param_1);
}

unk8 MapManager::func_ov00_0208433c(Vec3p *param_2, Vec3p *param_3) {
    Vec2s local_28;
    Vec3p VStack_24;
    Vec3p local_18;

    local_18.x = param_2->x;
    local_18.y = param_2->y;
    local_18.z = param_2->z;
    this->GetMapMinBounds(&VStack_24);
    Vec3p_Sub(&local_18, &VStack_24, &local_18);
    this->mMap->func_ov00_0207f53c(&local_28, this->mMap, &local_18);
    param_3->x = local_28.x;
    param_3->y = local_28.y;
}

unk8 MapManager::func_ov00_0208439c(Vec2s *param_2, Vec3p *param_3) {
    s32 iVar1;
    Vec3p VStack_18;

    this->mMap->func_ov00_0207f630(param_2, param_3);
    this->GetMapMinBounds(&VStack_18);
    Vec3p_Add(param_3, &VStack_18, param_3);
    iVar1      = this->MapData_vfunc_68(param_3, true); // is this correct?
    param_3->y = iVar1;
}

void MapManager::func_ov00_020843ec(s32 *param_2) {
    u32 uVar1;
    s32 iVar2;
    s32 iVar3;
    unk16 uStack_88;
    unk16 uStack_86;
    unk16 uStack_84;
    unk16 uStack_82;
    Vec2s local_80;
    Vec2s local_7c;
    Vec2s local_78;
    Vec2s local_74;
    Vec3p local_70;
    Vec3p local_64;
    s32 local_58;
    s32 iStack_54;
    s32 iStack_50;
    s32 local_4c;
    s32 iStack_48;
    s32 iStack_44;
    Vec3p local_40;
    Vec3p local_34;
    s32 local_28;
    s32 local_24;
    s32 local_20;

    // uVar1 = (**(code **) (*param_2 + 8))(); // Which function is this?
    if (uVar1 < 2) {
        // (**(code **) (*param_2 + 0x3c))(param_2, &local_28); // And this?
        // local_40.z = (**(code **) (*param_2 + 0x40))(); // What about this?
        local_34.x = local_28 - local_40.z;
        local_34.z = local_20 - local_40.z;
        local_40.x = local_28 + local_40.z;
        local_40.z = local_20 + local_40.z;
        local_34.y = local_24;
        local_40.y = local_24;
        iVar2      = this->GetMapMinX();
        local_34.x = local_34.x - iVar2;
        iVar2      = this->GetMapMinZ();
        local_34.z = local_34.z - iVar2;
        iVar2      = this->GetMapMinX();
        local_40.x = local_40.x - iVar2;
        iVar2      = this->GetMapMinZ();
        local_40.z = local_40.z - iVar2;
        this->mMap->func_ov00_0207f53c(&local_74, this->mMap, &local_34);
        this->mMap->func_ov00_0207f53c(&local_78, this->mMap, &local_40);
        iVar2 = (int) local_74.x;
        if (iVar2 <= local_78.x) {
            do {
                iVar3 = (int) local_74.y;
                if (iVar3 <= local_78.y) {
                    do {
                        uStack_84 = (unk16) iVar2;
                        uStack_82 = (unk16) iVar3;
                        this->mMap->vfunc_ac(/*&uStack_84*/); // No args?
                        iVar3 = (iVar3 + 1) * 0x10000 >> 0x10;
                    } while (iVar3 <= local_78.y);
                }
                iVar2 = (iVar2 + 1) * 0x10000 >> 0x10;
            } while (iVar2 <= local_78.x);
            return;
        }
        return;
    }
    if (uVar1 == 2) {
        this->mMap->vfunc_2c(/*&local_58*/); // No args?
        local_64.x = local_58;
        local_64.y = iStack_54;
        local_64.z = iStack_50;
        local_70.x = local_4c;
        local_70.y = iStack_48;
        local_70.z = iStack_44;
        iVar2      = this->GetMapMinX();
        local_64.x = local_64.x - iVar2;
        iVar2      = this->GetMapMinZ();
        local_64.z = local_64.z - iVar2;
        iVar2      = this->GetMapMinX();
        local_70.x = local_70.x - iVar2;
        iVar2      = this->GetMapMinZ();
        local_70.z = local_70.z - iVar2;
        this->mMap->func_ov00_0207f53c(&local_7c, this->mMap, &local_64);
        this->mMap->func_ov00_0207f53c(&local_80, this->mMap, &local_70);
        iVar2 = (int) local_7c.x;
        if (iVar2 <= local_80.x) {
            do {
                iVar3 = (int) local_7c.y;
                if (iVar3 <= local_80.y) {
                    do {
                        uStack_88 = (unk16) iVar2;
                        uStack_86 = (unk16) iVar3;
                        this->mMap->vfunc_ac(/*&uStack_88*/); // No args?
                        iVar3 = (iVar3 + 1) * 0x10000 >> 0x10;
                    } while (iVar3 <= local_80.y);
                }
                iVar2 = (iVar2 + 1) * 0x10000 >> 0x10;
            } while (iVar2 <= local_80.x);
        }
    }
}

ARM unk32 MapManager::GetMapData_Unk_38() {
    return this->mMap->mUnk_038;
}

ARM s32 MapManager::func_ov00_020846a4() {
    s32 iVar1 = *(s32 *) ((s32) this->mMap->mUnk_144 + 4);
    if (iVar1 == 0xff) {
        switch (this->mCourse->mType) {
            case CourseType_Dungeon:
            case CourseType_TempleOfTheOceanKing:
            case CourseType_Battle: return 1;
            case CourseType_Sea: return 2;
            case CourseType_Normal:
            default: return 0;
        }
    }
    return iVar1;
}

ARM s32 MapManager::func_ov00_02084700(MapManager *pMapManager) {
    s32 iVar1;
    iVar1 = pMapManager->mMap->mUnk_034;
    if (iVar1 == -1) {
        iVar1 = pMapManager->mCourse->mUnk_0c4;
    }
    if ((iVar1 == 0x1b) && (gActorManager->mUnk_29 != false)) {
        iVar1 = 0x1c;
    }
    return iVar1;
}

unk8 MapManager::func_ov00_02084740() {
    bool bVar1;
    int iVar2;
    int iVar3;
    unk32 uVar4;
    unk32 uVar5;
    unk32 uVar6;
    unk32 uVar7;
    unk32 *puVar8;
    unk32 *puVar9;
    unk32 local_1c8;
    unk32 local_1c4;
    unk32 local_1c0;
    unk32 local_1bc[108];

    // iVar2 = this->func_ov00_02084700(?); // what param?
    // iVar3 = UnkStruct_027e0d38::FUN_overlay_d_0__02078b40(*(UnkStruct_027e0d38 **) PTR_PTR_overlay_d_0__020847d4);
    if (iVar3 != 2) {
        local_1c8 = *(unk32 *) gPlayerPos->x;
        local_1c4 = *(unk32 *) gPlayerPos->y;
        local_1c0 = *(unk32 *) gPlayerPos->z;
        // bVar1     = FUN_overlay_d_0__02083780(&local_1c8); // MapManager method?
        if (bVar1) {
            iVar2 = this->func_ov00_020847f0();
        }
    }
    puVar9 = local_1bc;
    iVar3  = 0x1b;
    // puVar8 = (unk32 *) PTR_DWORD_overlay_d_0__020d88f0_overlay_d_0__020847dc;
    do {
        uVar4     = *puVar8;
        uVar5     = puVar8[1];
        uVar6     = puVar8[2];
        uVar7     = puVar8[3];
        puVar8    = puVar8 + 4;
        *puVar9   = uVar4;
        puVar9[1] = uVar5;
        puVar9[2] = uVar6;
        puVar9[3] = uVar7;
        puVar9    = puVar9 + 4;
        iVar3     = iVar3 + -1;
    } while (iVar3 != 0);
    return local_1bc[iVar2];
}

unk32 MapManager::func_ov00_020847e0() {
    return *(s32 *) ((s32) this->mMap->mUnk_144 + 0xc);
}

unk8 MapManager::func_ov00_020847f0() {
    s32 iVar1;
    unk32 in_r1;

    iVar1 = this->mMap->FindTrigger(in_r1);
    if (iVar1 == 0) {
        // this->func_ov00_02084700(?);
        return;
    }
    if ((*(int *) (iVar1 + 0xc) != -1) && (*(int *) (iVar1 + 0xc) < 0x6c)) {
        return;
    }
    // this->func_ov00_02084700(?);
}

bool MapManager::func_ov00_02084838() {
    unk32 uVar1 = this->GetMapData_Unk_38();
    switch (uVar1) {
        case 0: return false;
        case 1: break;
        case 2: break;
        case 3: break;
        case 4: break;
        case 5: break;
        case 6: return false;
        case 7: return false;
        case 8: return false;
        case 9: return false;
        case 10: break;
        case 0xb: break;
        case 0xc: break;
        case 0xd: return false;
        case 0xe: return false;
        case 0xf: return false;
        case 0x10: return false;
        case 0x11: break;
        case 0x12: return false;
        case 0x13: break;
        case 0x14: break;
        case 0x15: break;
        case 0x16: break;
        default: return false;
    }
    return true;
}

bool MapManager::func_ov00_020848b8() {
    unk32 uVar1 = this->func_ov00_020846a4();
    switch (uVar1) {
        case 0: break;
        case 1: break;
        case 2: break;
        case 3: break;
        case 4: break;
        case 5: break;
        case 6: return true;
        case 7: break;
        case 8: break;
        case 9: break;
        case 10: break;
        case 0xb: break;
        case 0xc: return true;
        case 0xd: return true;
        case 0xe: break;
        case 0xf: return true;
        case 0x10: break;
        case 0x11: return true;
    }
    return false;
}

void MapManager::func_ov00_02084924(u32 param_2) {
    this->mMap->func_ov00_0208008c(param_2);
}

bool MapManager::func_ov00_02084934(s32 *param_2) {
    int iVar2;
    int iVar3;
    int iVar4;
    Vec3p local_20;

    iVar2      = this->GetMapCenterZ();
    iVar3      = param_2[2];
    iVar4      = param_2[1];
    local_20.x = this->GetMapCenterX();
    local_20.x = *param_2 - local_20.x;
    local_20.y = iVar4;
    local_20.z = iVar3 - iVar2;
    return this->mMap->IsInBounds(&local_20);
}

u8 MapManager::GetMapData_Unk_06() {
    return this->mMap->mUnk_006;
}

u8 MapManager::GetMapData_Unk_07() {
    return this->mMap->mUnk_007;
}

bool MapManager::func_ov00_0208499c() {
    s32 iVar2 = this->func_ov00_020849c0();
    if (iVar2 == 0) {
        return this->mCourse->IsCurrentMapInMainGrid();
    }
    return false;
}

bool MapManager::func_ov00_020849c0() {
    return this->mCourse->mUnk_008 == -2;
}

bool MapManager::func_ov00_020849dc() {
    return this->mCourse->mUnk_008 == -3;
}

bool MapManager::func_ov00_020849f8() {
    s32 iVar1; // = FUN_overlay_d_0__020a5e9c(*(s32 *) PTR_PTR_overlay_d_0__02084a4c + 0xc);
    if (iVar1 == 5) {
        return true;
    }
    iVar1 = this->GetMapData_Unk_06();
    if ((iVar1 != 0) && (iVar1 = this->func_ov00_020849c0(), iVar1 == 0)) {
        return true;
    }
    return false;
}

u8 MapManager::func_ov00_02084a50() {
    return this->mMap->mUnk_011;
}

void MapManager::SpawnNPC(Vec3p *param_2, unk32 param_3, unk32 param_4) {
    // astruct_16 aStack_3c;
    // Actor_UnkStruct_020((Actor_UnkStruct_020 *) &aStack_3c);
    // aStack_3c.field24_0x1c = 0xffffffff;
    // aStack_3c.field25_0x20 = 0xffffffff;
    // astruct_16::astruct_16(&aStack_3c);
    // aStack_3c.field26_0x24 = param_3;
    // aStack_3c.field27_0x28 = param_4;
    // spawnNpc(*(undefined4 *) PTR_DWORD_overlay_d_0__02084abc, s_CIVE_overlay_d_0__02084ac0, param_2, &aStack_3c,
    //         (ActorRef *) 0x0);
}

bool MapManager::func_ov00_02084ac4(u32 actorId) {
    Actor *iVar1;
    bool bVar1;

    iVar1 = gActorManager->FindActorById(actorId);
    if (iVar1 == NULL) {
        return false;
    }
    bVar1 = iVar1->mType == ActorTypeId_EVIC;
    if (bVar1) {
        iVar1->mAlive = false;
    }
    return bVar1;
}

void MapManager::SetNumKeys(unk32 keys) {
    this->mCourse->mNumKeys = keys;
}

unk32 MapManager::GetNumKeys() {
    return this->mCourse->mNumKeys;
}

void MapManager::SetBlueWarpOpen(bool state) {
    this->mCourse->mBlueWarpOpen = state;
}

bool MapManager::GetBlueWarpOpen() {
    return this->mCourse->mBlueWarpOpen;
}

unk8 MapManager::func_ov00_02084b38(unk32 param_2, unk32 param_3, unk32 param_4) {
    MapBase *pMVar1;
    bool value;

    if (param_2 != 0) {
        // value = SUB41(param_4, 0); // What is SUB41 and where is it defined?
        switch (param_3) {
            case 0: goto LAB_overlay_d_0__02084b60;
            case 1: this->mCourse->SetMapDataFlag0(param_2, value); return;
            case 2: this->mCourse->SetFlag0(param_2, value); return;
            case 3: this->mCourse->SetFlag1(param_2, value); return;
            default: return;
        }
    }
    return;
LAB_overlay_d_0__02084b60:
    pMVar1 = this->mMap;
    if (param_4 == 0) {
        pMVar1->mUnk_180[param_2 >> 5].mUnk_0 = pMVar1->mUnk_180[param_2 >> 5].mUnk_0 & ~(1 << (param_2 & 0x1f));
        return;
    }
    pMVar1->mUnk_180[param_2 >> 5].mUnk_0 = pMVar1->mUnk_180[param_2 >> 5].mUnk_0 | 1 << (param_2 & 0x1f);
    return;
}

bool MapManager::func_ov00_02084be0(u32 param_2, unk32 param_3) {
    bool bVar1;

    if (param_2 == 0) {
        return false;
    }
    switch (param_3) {
        case 0: return (this->mMap->mUnk_180[param_2 >> 5].mUnk_0 & 1 << (param_2 & 0x1f)) != 0;
        case 1: bVar1 = this->mCourse->GetMapDataFlag0(param_2); return bVar1;
        case 2: bVar1 = this->mCourse->GetFlag0(param_2); return bVar1;
        case 3: bVar1 = this->mCourse->SetFlag1(param_2); return bVar1;
        default: return false;
    }
}

void MapManager::SetMapDataFlag1(unk32 param_2, bool param_3) {
    this->mCourse->SetMapDataFlag1(param_2, param_3);
}

bool MapManager::GetMapDataFlag1(unk32 param_2) {
    return this->mCourse->GetMapDataFlag1(param_2);
}

void MapManager::func_ov00_02084c7c(unk32 param_2) {
    bool in_r2; // not defined.

    if (param_2 < 0) {
        return;
    }
    this->mCourse->SetMapDataFlag2(param_2, in_r2);
}

bool MapManager::func_ov00_02084c94(unk32 param_2) {
    bool bVar1;

    if (0 <= param_2) {
        bVar1 = this->mCourse->GetMapDataFlag2(param_2);
        return bVar1;
    }
    return false;
}

void MapManager::func_ov00_02084cb0(unk32 param_2) {
    bool in_r2; // not defined.

    if (param_2 < 0) {
        return;
    }
    this->mCourse->SetMapDataFlag3(param_2, in_r2);
}

bool MapManager::func_ov00_02084cc8(unk32 param_2) {
    bool bVar1;

    if (0 <= param_2) {
        bVar1 = this->mCourse->GetMapDataFlag3(param_2);
        return bVar1;
    }
    return false;
}

void MapManager::func_ov00_02084ce4(unk32 param_2) {
    unk32 in_r2; // not defined.

    if (param_2 < 0) {
        return;
    }
    this->mCourse->SetMapDataFlag4(param_2, in_r2);
}

bool MapManager::func_ov00_02084cfc(unk32 param_2) {
    bool bVar1;

    if (0 <= param_2) {
        bVar1 = this->mCourse->GetMapDataFlag4(param_2);
        return bVar1;
    }
    return false;
}

u8 MapManager::GetMapData_Unk_09() {
    return this->mMap->mUnk_009;
}

unk8 MapManager::func_ov00_02084d24(unk8 param_2, unk8 param_3, unk32 param_4) {
    unk8 local_8;
    unk8 local_7;
    unk16 uStack_6;

    uStack_6 = (unk16) ((u32) param_4 >> 0x10);
    // _local_8 = CONCAT11(param_3, param_2); // What is CONCAT11 ?
    // this->mMap->vfunc_90(&local_8, param_4); // Missing parameter ?
}

s32 MapManager::func_ov00_02084d4c(unk32 param_2, unk32 param_3, Vec3p *param_4) {
    unk32 *object; // undefined type
    unk32 *dtor; // undefined type
    unk32 *obj; // undefined type
    unk32 a; // dword
    int iVar1;
    int aiStack_3c[4];
    Vec3p VStack_2c;
    int iStack_20;
    int iStack_1c;
    int iStack_18;
    Vec3p VStack_14;

    iVar1 = func_ov000_0208df78(data_027e0f64 + 4, param_2, param_3, &VStack_14, &iStack_20);
    // object = PTR_DWORD_overlay_d_0__020e2510_overlay_d_0__02084ea8;
    if (iVar1 == -1) {
        return -1;
    }
    /*if ((*(u32 *) (PTR_DestructorChain_overlay_d_0_bss__020ec964_overlay_d_0__02084ea4 + 0x60) & 1) == 0) {
        aiStack_3c[1]                                                    = 0;
        aiStack_3c[3]                                                    = 0;
        aiStack_3c[2]                                                    = 0x1000;
        *(unk32 *) PTR_DWORD_overlay_d_0__020e2510_overlay_d_0__02084ea8 = 0;
        *(unk32 *) (object + 4)                                          = 0x1000;
        *(unk32 *) (object + 8)                                          = 0;
        obj  = PTR_DestructorChain_overlay_d_0_bss__020ec9c8_overlay_d_0__02084eb4;
        dtor = PTR_FUN_overlay_d_0__0207e968_overlay_d_0__02084eb0;
        *(unk32 *) (PTR_PTR_s_anc_overlay_d_0__020e24a0_overlay_d_0__020e24a4_overlay_d_0__02084eac + 0x78) = 0;
        __register_global_object(object, dtor, (DestructorChain *) obj);
        *(u32 *) (PTR_DestructorChain_overlay_d_0_bss__020ec964_overlay_d_0__02084ea4 + 0x60) =
            *(u32 *) (PTR_DestructorChain_overlay_d_0_bss__020ec964_overlay_d_0__02084ea4 + 0x60) | 1;
    }*/
    VStack_2c.x = iStack_20;
    VStack_2c.y = iStack_1c;
    VStack_2c.z = iStack_18;
    Vec3p_Sub(&VStack_2c, &VStack_14, &VStack_2c);
    // iVar1 = func_01ffe61c(PTR_DWORD_overlay_d_0__020e2510_overlay_d_0__02084ea8, &VStack_14, &VStack_2c, aiStack_3c);
    if (iVar1 != 0) {
        param_4->x = VStack_14.x;
        param_4->y = VStack_14.y;
        param_4->z = VStack_14.z;
        Vec3p_Axpy(aiStack_3c[0], &VStack_2c, param_4, param_4);
        a = 0x19a;
        if (aiStack_3c[0] < 0) {
            param_4->x = VStack_14.x;
            param_4->y = VStack_14.y;
            param_4->z = VStack_14.z;
            Vec3p_Axpy(a, &VStack_2c, param_4, param_4);
            return 1;
        }
        return 0;
    }
    return -1;
}

unk32 MapManager::func_ov00_02084ebc(Vec3p *param_2) {
    int *piVar1;
    int iVar2;
    unk32 dVar3; // dword
    Vec2b auStack_18[4]; // undefined type
    u32 uStack_14;

    this->func_ov00_02083a1c(auStack_18, this, param_2);
    piVar1 = (int *) this->MapData_vfunc_78(0);
    if (piVar1 != (int *) 0x0) {
        // iVar2 = (**(code **) (*piVar1 + 0x1c))();
        if (iVar2 < 0x39) {
            if ((iVar2 < 0x38) && (iVar2 != 1)) {
                return 0;
            }
        } else if (iVar2 < 0x5a) {
            if (iVar2 != 0x59) {
                return 0;
            }
        } else {
            if (iVar2 != 0x61) {
                return 0;
            }
            if (piVar1[2] == 2) {
                return 0;
            }
        }
    }
    iVar2 = this->func_ov00_02083e70(/*auStack_18*/);
    if (iVar2 != 0) {
        return 0;
    }
    iVar2 = this->MapData_vfunc_54(0);
    if (iVar2 < 0x47) {
        if (0x45 < iVar2) {
            return 0;
        }
        if (iVar2 < 0x2a) {
            switch (iVar2) {
                case 0: break;
                case 1: return 0;
                case 2: return 0;
                case 3: return 0;
                case 4: return 0;
                case 5: return 0;
                case 6: return 0;
                case 7: break;
                case 8: return 0;
                case 9: return 0;
                case 10: break;
                case 0xb: break;
                case 0xc: break;
                case 0xd: break;
                case 0xe: break;
                case 0xf: break;
                case 0x10: break;
                case 0x11: break;
                case 0x12: break;
                case 0x13: break;
                case 0x14: return 0;
                case 0x15: break;
                case 0x16: return 0;
                case 0x17: return 0;
                case 0x18: break;
                case 0x19: return 0;
                case 0x1a: break;
                case 0x1b: break;
                case 0x1c: break;
                case 0x1d: return 0;
                case 0x1e: return 0;
                case 0x1f: return 0;
                case 0x20: break;
                case 0x21: break;
                case 0x22: break;
                case 0x23: break;
                case 0x24: break;
                case 0x25: break;
                case 0x26: break;
                case 0x27: return 0;
                case 0x28: return 0;
                case 0x29: return 0;
            }
        } else if (iVar2 == 0x37) {
            return 0;
        }
    } else if (iVar2 < 0x49) {
        if (0x47 < iVar2) {
            return 0;
        }
        if (iVar2 == 0x47) {
            return 0;
        }
    } else if (iVar2 == 0x50) {
        return 0;
    }
    iVar2 = this->mMap->vfunc_58(auStack_18, 5);
    if (iVar2 != 0) {
        return 0;
    }
    // dVar3 = this->MapData_vfunc_70(); // Missing param.
    if (dVar3 != 0xffff) {
        func_ov000_02093a1c(&uStack_14, data_027e0f6c);
        if ((uStack_14 >> 5 & 3) != 1) {
            return 0;
        }
        return 1;
    }
    return 0;
}

s32 MapManager::func_ov00_02085108(s32 *param_2) {
    MapManager *puVar1;
    unk32 uVar2;
    int *piVar3;
    int iVar4;
    u32 uVar5;
    int iVar6;
    int iVar7;
    int iVar8;
    u32 local_44;
    u8 local_3a;
    u8 local_39;
    u8 local_38;
    u8 local_37;
    int local_34;
    int local_30;
    int local_2c;
    unk32 local_28;

    uVar2 = func_ov000_0208b180(data_027e0f64);
    func_ov000_02088130(&local_38, uVar2);
    local_44 = (u32) local_38;
    uVar2    = func_ov000_0208b180(data_027e0f64);
    func_ov000_02088144(&local_3a, uVar2);
    if (local_44 <= local_37) {
        do {
            puVar1 = gMapManager;
            uVar5  = (u32) local_39;
            if ((u32) local_3a <= (u32) local_39) {
                do {
                    piVar3 = (int *) puVar1->MapData_vfunc_78(0);
                    if ((piVar3 != (int *) 0x0) && ((piVar3[1] & 4U) != 0)) {
                        iVar7 = piVar3[7];
                        iVar6 = piVar3[6];
                        iVar8 = piVar3[8];
                        // iVar4    = (**(code **) (*piVar3 + 0x60))();
                        // local_28 = (**(code **) (*piVar3 + 0x5c))();
                        local_34 = iVar6;
                        local_30 = iVar7 + iVar4;
                        local_2c = iVar8;
                        // iVar4    = func_0202b8e4(&local_34, 2);
                        if (iVar4 != 0) {
                            *param_2   = piVar3[6];
                            param_2[1] = piVar3[7];
                            param_2[2] = piVar3[8];
                            return (int) *(char *) ((int) piVar3 + 0x12);
                        }
                    }
                    uVar5 = uVar5 - 1;
                } while ((int) (u32) local_3a <= (int) uVar5);
            }
            local_44 = local_44 + 1;
        } while ((int) local_44 <= (int) (u32) local_37);
    }
    return 0;
}

s32 MapManager::func_ov00_0208527c(MapManager *param_1, unk32 param_2, unk32 *param_3) {
    u32 uVar1;
    MapManager *puVar2;
    unk32 uVar3;
    int iVar4;
    int iVar5;
    u32 uVar6;
    u32 uVar7;
    u32 local_4c;
    u8 local_3e;
    u8 local_3d;
    u8 local_3c;
    u8 local_3b;
    unk32 local_38;
    unk32 local_34;
    unk32 local_30;
    unk32 local_2c;

    uVar3 = func_ov000_0208b180(data_027e0f64);
    func_ov000_02088130(&local_3c, uVar3);
    uVar7 = (u32) local_3c;
    uVar3 = func_ov000_0208b180(data_027e0f64);
    func_ov000_02088144(&local_3e, uVar3);
    local_4c = (u32) local_3e;
    uVar6    = (u32) local_3d;
    iVar4    = param_1->GetMapWidth();
    iVar5    = param_1->GetMapHeight();
    puVar2   = gMapManager;
    if (uVar7 == 0) {
        uVar7 = 0;
    }
    if (iVar4 <= (int) (u32) local_3b) {
        uVar7 = iVar4 - 1;
    }
    if (local_4c == 0) {
        local_4c = 0;
    }
    if (iVar5 <= (int) uVar6) {
        uVar6 = iVar5 - 1;
    }
    local_2c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    do {
        uVar1 = local_4c;
        if ((int) (u32) local_3b < (int) uVar7) {
            return 0;
        }
        for (; (int) uVar1 <= (int) uVar6; uVar1 = uVar1 + 1) {
            iVar4 = puVar2->MapData_vfunc_78(0);
            if (((iVar4 != 0) && ((*(u32 *) (iVar4 + 4) & 4) != 0)) &&
                (iVar5 = func_ov000_0208b73c(iVar4, param_2), iVar5 != 0))
            {
                *param_3   = *(unk32 *) (iVar4 + 0x18);
                param_3[1] = *(unk32 *) (iVar4 + 0x1c);
                param_3[2] = *(unk32 *) (iVar4 + 0x20);
                return (int) *(char *) (iVar4 + 0x12);
            }
        }
        uVar7 = uVar7 + 1;
    } while (true);
}

s32 MapManager::func_ov00_020853fc(MapManager *param_1, Vec3p *param_2, s32 *param_3) {
    u32 uVar1;
    unk32 uVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    u32 uVar6;
    int iVar7;
    u32 local_50;
    u32 local_48;
    u8 local_3e;
    u8 local_3d;
    u8 local_3c;
    u8 local_3b;
    unk32 local_38;
    unk32 local_34;
    unk32 local_30;
    unk32 local_2c;

    uVar2 = func_ov000_0208b180(data_027e0f64);
    func_ov000_02088130(&local_3c, uVar2);
    local_48 = (u32) local_3c;
    uVar2    = func_ov000_0208b180(data_027e0f64);
    func_ov000_02088144(&local_3e, uVar2);
    local_50 = local_3e;
    uVar6    = local_3d;
    iVar3    = param_1->GetMapWidth();
    iVar4    = param_1->GetMapHeight();
    iVar7    = 0;
    local_2c = 0;
    if (local_48 == 0) {
        local_48 = 0;
    }
    local_38 = 0;
    if (iVar3 <= (int) (u32) local_3b) {
        local_48 = iVar3 - 1;
    }
    local_34 = 0;
    if (local_50 == 0) {
        local_50 = 0;
    }
    if (iVar4 <= (int) uVar6) {
        uVar6 = iVar4 - 1;
    }
    local_30 = 0;
    for (; uVar1 = local_50, (int) local_48 <= (int) (u32) local_3b; local_48 = local_48 + 1) {
        for (; (int) uVar1 <= (int) uVar6; uVar1 = uVar1 + 1) {
            iVar3 = gMapManager->MapData_vfunc_78(0);
            if ((((iVar3 != 0) && ((*(u32 *) (iVar3 + 4) & 4) != 0)) &&
                 (iVar4 = Vec3p_Distance((Vec3p *) (iVar3 + 0x18), param_2), iVar4 < *param_3)) &&
                (iVar5 = func_ov000_0208b7d0(iVar3, param_2), iVar5 != 0))
            {
                *param_3 = iVar4;
                iVar7    = iVar3;
            }
        }
    }
    return iVar7;
}

unk32 MapManager::func_ov00_02085594(MapManager *param_1, Vec3p *param_2, unk32 param_3, unk32 param_4) {
    int *piVar1;
    int iVar2;
    unk32 dVar3; // dword
    unk32 uVar4;
    bool bVar5;
    unk32 uStack_2c;
    Vec2b local_28;
    u32 uStack_24;
    Vec3p VStack_20;

    param_1->func_ov00_02083a1c(&local_28, param_1, param_2);
    piVar1 = (int *) param_1->MapData_vfunc_78(0);
    bVar5  = true;
    if (piVar1 != (int *) 0x0) {
        param_2->x = piVar1[6];
        param_2->y = piVar1[7];
        param_2->z = piVar1[8];
        // iVar2      = (**(code **) (*piVar1 + 0x1c))();
        if (iVar2 < 0x43) {
            if (0x41 < iVar2) {
                return 2;
            }
            if (iVar2 < 2) {
                if (iVar2 != 1) {
                    return 0;
                }
            } else if (iVar2 != 0x38) {
                return 0;
            }
        } else if (iVar2 < 0x5a) {
            if (iVar2 != 0x59) {
                return 0;
            }
            bVar5 = piVar1[2] == 4;
        } else {
            if (iVar2 != 0x61) {
                return 0;
            }
            if (piVar1[2] == 2) {
                return 0;
            }
        }
    }
    iVar2 = param_1->func_ov00_020840a0(local_28.x, local_28.y, param_4);
    if (iVar2 < 0x47) {
        if (0x45 < iVar2) {
            return 0;
        }
        if (iVar2 < 0x2a) {
            switch (iVar2) {
                case 0: break;
                case 1: return 0;
                case 2: return 0;
                case 3: return 0;
                case 4: return 0;
                case 5: return 0;
                case 6: return 0;
                case 7: break;
                case 8: return 0;
                case 9: return 0;
                case 10: break;
                case 0xb: break;
                case 0xc: break;
                case 0xd: break;
                case 0xe: break;
                case 0xf: break;
                case 0x10: break;
                case 0x11: break;
                case 0x12: break;
                case 0x13: break;
                case 0x14: return 0;
                case 0x15: break;
                case 0x16: return 0;
                case 0x17: return 0;
                case 0x18: break;
                case 0x19: return 0;
                case 0x1a: break;
                case 0x1b: break;
                case 0x1c: break;
                case 0x1d: return 0;
                case 0x1e: return 0;
                case 0x1f: return 0;
                case 0x20: break;
                case 0x21: break;
                case 0x22: break;
                case 0x23: break;
                case 0x24: break;
                case 0x25: break;
                case 0x26: break;
                case 0x27: return 0;
                case 0x28: return 0;
                case 0x29: return 0;
            }
        } else if (iVar2 == 0x37) {
            return 0;
        }
    } else if (iVar2 < 0x49) {
        if (0x47 < iVar2) {
            return 0;
        }
        if (iVar2 == 0x47) {
            return 0;
        }
    } else if (iVar2 == 0x50) {
        return 0;
    }
    iVar2 = param_1->mMap->vfunc_58(&local_28, 5); // no params
    if (iVar2 != 0) {
        return 0;
    }
    // uStack_2c._0_2_ = CONCAT11(local_27, local_28);
    param_1->func_ov00_02083c7c(&VStack_20, uStack_2c);
    // dVar3 = param_1->MapData_vfunc_70();
    if (dVar3 != 0xffff) {
        func_ov000_02093a1c(&uStack_24, data_027e0f6c);
        if ((uStack_24 >> 5 & 3) != 1) {
            return 0;
        }
        if (bVar5) {
            uVar4 = 1;
        } else {
            uVar4 = 2;
        }
        return uVar4;
    }
    return 0;
}

void MapManager::func_ov00_0208583c(MapManager *param_1, Vec3p *param_2, unk32 param_3) {
    s32 *piVar1;
    unk8 auStack_10[4];

    // param_1->func_ov00_02083a1c(auStack_10, param_1, param_2); // Should auStack_10 be pointer type or not ?
    piVar1 = (s32 *) param_1->MapData_vfunc_78(0);
    if (piVar1 == (s32 *) 0x0) {
        return;
    }
    // if (*(s32 *) PTR_UnkStruct_027e077c_overlay_d_0__020858ac == 1) {
    //    if (*(s32 *) (PTR_UnkStruct_027e077c_overlay_d_0__020858ac + 4) == 1) {
    //        (**(code **) (*piVar1 + 0x30))(piVar1, param_3);
    //        return;
    //    }
    //    return;
    //}
}

unk8 MapManager::func_ov00_020858b0(MapManager *param_1, Vec3p *param_2, s32 param_3) {
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int *piVar5;
    int iVar6;
    int iVar7;
    unk32 local_38;
    Vec2b local_28; // x = originally 'local_28' ; y = originally 'local_27'

    if (param_3 == 1) {
        func_ov000_02088000(*(unk32 *) (*(int *) data_027e0f64 + 4), 7);
    } else {
        func_ov000_02088000(*(unk32 *) (*(int *) data_027e0f64 + 4), 6);
    }
    iVar2    = param_1->GetMapWidth();
    iVar3    = param_1->GetMapHeight();
    local_38 = 0xffffffff;
    param_1->func_ov00_02083a1c(&local_28, param_1, param_2);
    iVar6 = gPlayerPos->y; // *(int *) (PTR_gPlayerPos_overlay_d_0__02085a30 + 4);
    for (iVar7 = local_28.x - 1; iVar7 <= (int) (local_28.x + 1); iVar7 = iVar7 + 1) {
        if ((-1 < iVar7) && (iVar1 = local_28.y - 1, iVar7 < iVar2)) {
            for (; iVar1 <= (int) (local_28.y + 1); iVar1 = iVar1 + 1) {
                if ((-1 < iVar1) && (iVar1 < iVar3)) {
                    iVar4 = param_1->MapData_vfunc_60(0);
                    iVar4 = iVar4 - iVar6;
                    if (iVar4 < 0) {
                        iVar4 = -iVar4;
                    }
                    if ((iVar4 < 0xce) && (piVar5 = (int *) param_1->MapData_vfunc_78(0), piVar5 != (int *) 0x0)) {
                        // local_38 = (**(code **) (*piVar5 + 0x38))(piVar5, param_3);
                    }
                }
            }
        }
    }
    return local_38;
}

s32 MapManager::func_ov00_02085a34(Vec3p *param_2, s32 param_3) {
    int *piVar1;
    int iVar2;
    unk16 *puVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;
    unk32 uStack_2c;
    unk32 uStack_2b;
    Vec2b auStack_2a[2];
    Vec2b aVStack_28[2];
    unk16 auStack_24[4];
    unk32 auStack_1c[4];
    unk32 uStack_18;
    unk16 uStack_14;
    unk32 uStack_12;

    if (param_3 != 1) {
        if (param_3 != 2 && param_3 != 3) {
            return -1;
        }
        this->func_ov00_02083a1c(auStack_2a, this, param_2);
        piVar1 = (int *) this->MapData_vfunc_78(0);
        if (piVar1 == (int *) 0x0) {
            return -1;
        }
        // iVar2 = (**(code **) (*piVar1 + 0x1c))();
        if (iVar2 == 0x42) {
            // uStack_2b = *(undefined *) ((int) piVar1 + 0x15);
            // uStack_2c = *(undefined *) (piVar1 + 5);
            // this->mMap->func_ov00_02080d08(&uStack_2c);
        }
        // iVar2 = (**(code **) (*piVar1 + 0x3c))(piVar1, param_3);
        return iVar2;
    }
    this->func_ov00_02083a1c(aVStack_28, this, param_2);
    iVar2 = this->func_ov00_02084ebc(param_2);
    if (iVar2 == 0) {
        return -1;
    }
    piVar1 = (int *) this->MapData_vfunc_78(0);
    if (piVar1 != (int *) 0x0) {
        // iVar2 = (**(code **) (*piVar1 + 0x1c))();
        if (0x38 < iVar2) {
            if (iVar2 < 0x5a) {
                if (iVar2 == 0x59) {
                LAB_overlay_d_0__02085afc:
                    // iVar2 = (**(code **) (*piVar1 + 0x3c))(piVar1, 1); // What is this?
                    return iVar2;
                }
            } else if (iVar2 == 0x61)
                goto LAB_overlay_d_0__02085afc;
            return -1;
        }
        if ((iVar2 < 0x38) && (iVar2 != 1)) {
            return -1;
        }
        piVar1[1] = piVar1[1] & 0xfffffffe;
        this->func_ov00_020828f8(piVar1);
    }
    this->mMap->func_ov00_02080b24(aVStack_28);
    uStack_14 = 0xffff;
    uStack_18 = 0;
    uStack_12 = 1;
    uVar6     = 0;
    puVar3    = auStack_24;
    uVar4     = 0;
    do {
        uVar5         = uVar4 + 1;
        puVar3[uVar4] = 0;
        uVar4         = uVar5;
    } while (uVar5 < 4);
    do {
        *(unk32 *) (puVar3 + 4) = 0; // This is undefined, using unk32 as placeholder.
        uVar6                   = uVar6 + 1;
        *(unk32 *) (puVar3 + 5) = 0; // Same here.
        puVar3                  = (unk16 *) ((int) puVar3 + 1);
    } while (uVar6 < 2);
    // iVar2 = this->MapData_vfunc_7c(); <- This needs to return some value (not void).
    if (iVar2 == 0) {
        return -1;
    }
    iVar2 = MapData_vfunc_78(0); // Same here.
    if ((iVar2 != 0) && (0 < *(s16 *) (iVar2 + 0xe))) {
        return 1;
    }
    return 0;
}

unk8 MapManager::func_ov00_02085c60(Vec3p *param_2, unk32 *param_3, unk32 *param_4, u32 param_5) {
    s64 lVar1;
    s32 *puVar2;
    unk32 dVar3; // dword
    bool bVar4;
    bool bVar5;
    int iVar6;
    u32 uVar7;
    int iStack_10c;
    int iStack_108;
    int iStack_104;
    int iStack_100;
    Vec3p VStack_f0;
    Vec3p VStack_e4;
    Vec4p VStack_d8;
    Vec3p VStack_c8;
    Vec3p VStack_bc;
    Vec3p VStack_b0;
    Vec3p VStack_a4;
    Vec3p VStack_98;
    Vec3p aVStack_8c[3];
    unk16 uStack_68;
    unk16 uStack_66;
    unk16 uStack_64;
    unk16 uStack_62;
    unk16 uStack_60;
    unk32 uStack_3e;
    unk32 uStack_3d;
    unk32 uStack_3c;
    unk32 uStack_3b;
    unk32 uStack_34;
    unk32 uStack_33;
    unk32 uStack_32;
    unk32 uStack_31;
    unk32 uStack_30;
    unk32 uStack_2f;
    unk32 uStack_2c;
    unk32 uStack_28;

    if (param_5 == 0) {
        return 0;
    }
    func_ov000_020792a0(data_027e0d3c, 0, *param_3, param_3[1]);
    func_ov000_020792a0(data_027e0d3c, 0, *param_4, param_4[1]);
    VStack_b0.x = VStack_98.x;
    VStack_b0.y = VStack_98.y;
    VStack_b0.z = VStack_98.z;
    VStack_bc.x = VStack_a4.x;
    VStack_bc.y = VStack_a4.y;
    VStack_bc.z = VStack_a4.z;
    VStack_c8.x = VStack_98.x;
    VStack_c8.y = VStack_98.y;
    VStack_c8.z = VStack_98.z;
    Vec3p_Sub(&VStack_c8, &VStack_bc, &VStack_c8);
    lVar1 = (u64) param_5 * 0xc000 + 0x800;
    uVar7 = (u32) lVar1 >> 0xc | (int) ((u64) lVar1 >> 0x20) * 0x100000;
    iVar6 = Vec3p_Length(&VStack_c8);
    if ((int) uVar7 < iVar6) {
        Vec3p_Normalize(&VStack_c8, &VStack_c8);
        Vec3p_Scale(&VStack_c8, uVar7);
        VStack_98.x = VStack_a4.x;
        VStack_98.y = VStack_a4.y;
        VStack_98.z = VStack_a4.z;
        Vec3p_Add(&VStack_98, &VStack_c8, &VStack_98);
        VStack_b0.y = VStack_98.y;
        VStack_b0.x = VStack_98.x;
        VStack_b0.z = VStack_98.z;
    }
    VStack_c8.x = VStack_98.x;
    VStack_c8.y = VStack_98.y;
    VStack_c8.z = VStack_98.z;
    Vec3p_Sub(&VStack_c8, &VStack_a4, &VStack_c8);
    uVar7 = param_5 * 0x800 + 0x800 >> 0xc |
            ((((int) param_5 >> 0x1f) << 0xb | param_5 >> 0x15) + (u32) (0xfffff7ff < param_5 * 0x800)) * 0x100000;
    iVar6 = Vec3p_Length(&VStack_c8);
    if ((int) param_5 <= iVar6) {
        Vec3p_Normalize(&VStack_c8, &VStack_c8);
        Vec3p_Scale(&VStack_c8, uVar7);
        VStack_b0.x = VStack_bc.x;
        VStack_b0.y = VStack_bc.y;
        VStack_b0.z = VStack_bc.z;
        Vec3p_Add(&VStack_b0, &VStack_c8, &VStack_b0);
    }
    bVar5       = false;
    VStack_d8.y = param_5 << 1;
    VStack_d8.x = 0;
    VStack_d8.z = 0;
    VStack_d8.w = param_5;
    do {
        bVar4 = func_01ffbe78(param_2, &VStack_b0, &VStack_bc, &VStack_d8);
        if (bVar4) {
            VStack_e4.x = param_2->x;
            VStack_e4.y = param_2->y;
            VStack_e4.z = param_2->z;
            VStack_f0.x = param_2[1].x;
            VStack_f0.y = param_2[1].y;
            VStack_f0.z = param_2[1].z;
            Vec3p_Normalize(&VStack_f0, &VStack_f0);
            Vec3p_Scale(&VStack_f0, param_5);
            Vec3p_Add(&VStack_e4, &VStack_f0, &VStack_e4);
            dVar3      = 0xffff;
            param_2->x = VStack_e4.x;
            param_2->y = VStack_e4.y;
            param_2->z = VStack_e4.z;
            uStack_68  = (u16) dVar3;
            uStack_60  = 0;
            uStack_3e  = 0;
            uStack_3d  = 0;
            uStack_3c  = 0;
            uStack_3b  = 0;
            uStack_34  = 0;
            uStack_33  = 0;
            uStack_32  = 0;
            uStack_31  = 0;
            uStack_30  = 0;
            uStack_2f  = 0;
            uStack_2c  = 0xffffffff;
            uStack_28  = 0xffffffff;
            uStack_66  = uStack_68;
            uStack_64  = uStack_68;
            uStack_62  = uStack_68;
            bVar5      = func_01ffbe78(aVStack_8c, &VStack_e4, &VStack_e4, &VStack_d8);
            if (bVar5) {
                VStack_e4.x = aVStack_8c[0].x;
                VStack_e4.y = aVStack_8c[0].y;
                VStack_e4.z = aVStack_8c[0].z;
            }
            func_ov000_0207920c(data_027e0d3c, &VStack_e4, &iStack_104, 0);
            param_2[8].x = iStack_104;
            param_2[8].y = iStack_100;
            return 1;
        }
        VStack_bc.x = VStack_b0.x;
        VStack_bc.y = VStack_b0.y;
        VStack_bc.z = VStack_b0.z;
        // iVar6       = func_0202b2e8(&VStack_b0, &VStack_98, uVar7);
        puVar2 = data_027e0d3c;
        if (iVar6 != 0) {
            bVar5 = true;
        }
    } while (!bVar5);
    param_2->x = VStack_98.x;
    param_2->y = VStack_98.y;
    param_2->z = VStack_98.z;
    func_ov000_0207920c(puVar2, &VStack_98, &iStack_10c, 0);
    param_2[8].x = iStack_10c;
    param_2[8].y = iStack_108;
    return 0;
}

unk8 MapManager::func_ov00_02086044(Vec3p *param_2, Vec3p *param_3, unk32 param_4) {
    unk32 uVar1;
    unk32 uVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int iVar6;
    int iVar7;
    int iVar8;
    int *piVar9;
    Vec3p *pVVar10;
    int iVar11;
    Vec2b local_c6;
    unk32 auStack_c4[4];
    Vec3p iStack_c0;
    Vec3p local_b0;
    Vec3p local_a0;
    Vec3p local_94;
    Vec3p local_88;
    Vec3p VStack_7c;
    AABB AStack_70;
    Vec3p VStack_58;
    Vec3p local_4c;
    AABB local_40;

    local_40.min.x = param_3->x;
    local_40.min.y = param_3->y;
    local_40.min.z = param_3->z;
    local_40.max.x = param_3->x;
    local_40.max.y = param_3->y;
    local_40.max.z = param_3->z;
    local_88.x     = param_2->x;
    local_88.y     = param_2->y;
    local_88.z     = param_2->z;
    func_ov000_0208ed74(&local_40, &local_88);
    // AABB_Grow(&local_40, param_4);
    iVar3      = this->func_ov00_020839d4(local_40.min.x);
    iVar4      = this->func_ov00_020839f8(local_40.min.z);
    iVar5      = this->func_ov00_020839d4(local_40.max.x);
    iVar6      = this->func_ov00_020839f8(local_40.max.z);
    local_4c.x = param_3->x;
    local_4c.y = param_3->y;
    local_4c.z = param_3->z;
    local_94.x = param_2->x;
    local_94.y = param_2->y;
    local_94.z = param_2->z;
    pVVar10    = &local_a0;
    local_a0.x = param_3->x;
    local_a0.y = param_3->y;
    local_a0.z = param_3->z;
    Vec3p_Sub(&local_94, pVVar10, &VStack_58);
    uVar1 = this->func_ov00_020839d4(param_3->x);
    uVar2 = this->func_ov00_020839f8(param_3->z);
    // iVar7 = this->func_ov00_02083e34(uVar1, uVar2, pVVar10);
    do {
        if (iVar5 < iVar3) {
            return 0;
        }
        if (iVar4 <= iVar6) {
            iVar11 = iVar4;
            do {
                // iVar8 = this->func_ov00_02083e34((char) iVar3, (char) iVar11, pVVar10);
                if (iVar7 < iVar8) {
                    local_c6.x = (char) iVar3;
                    local_c6.y = (char) iVar11;
                    gMapManager->GetTileWorldBounds(&local_c6, &AStack_70);
                    Vec3p_Sub(param_2, param_3, &VStack_7c);
                    pVVar10 = (Vec3p *) auStack_c4;
                    iVar8   = func_ov000_0208e87c(&AStack_70, &local_b0, &VStack_7c);
                    if (iVar8 != 0) {
                        return 1;
                    }
                }
                piVar9 = (int *) this->MapData_vfunc_78(0);
                if ((piVar9 != (int *) 0x0) /*&& (iVar8 = (**(code **) (*piVar9 + 0x58))(), iVar8 != 0)*/) {
                    iStack_c0.x = param_3->x;
                    iStack_c0.y = param_3->y;
                    pVVar10     = (Vec3p *) param_3->z;
                    iStack_c0.z = (int) pVVar10;
                    iVar8       = func_ov000_0208b804(piVar9, &iStack_c0, &VStack_58);
                    if (iVar8 != 0) {
                        return 1;
                    }
                }
                iVar11 = iVar11 + 1;
            } while (iVar11 <= iVar6);
        }
        iVar3 = iVar3 + 1;
    } while (true);
}

bool MapManager::func_ov00_02086284(s32 *param_2, Vec3p *param_3, Vec3p *param_4, s32 param_5, u16 param_6, Vec3p *param_7,
                                    Vec3p *param_8) {
    bool bVar1;
    s32 iVar2;
    s32 iVar3;
    Vec3p local_d0;
    s32 local_c8;
    Vec3p local_c4;
    Vec3p local_b8;
    Vec3p local_ac;
    s32 local_a4;
    Vec3p local_a0;
    s32 local_98;
    s32 local_94;
    s32 local_90;
    s32 local_8c;
    Vec3p local_88;
    Vec3p local_7c;
    Vec3p local_70;
    s32 local_64;
    s32 local_60;
    s32 local_5c;
    s32 local_58;
    s32 local_54;
    Vec3p local_50;
    Vec3p local_44;
    Vec3p local_38;
    s32 local_2c;
    s32 iStack_28;
    s32 iStack_24;
    s32 local_20;

    // iVar2 = (**(code **) (*param_2 + 8))(); // What pointer address is contained in param_2?
    if (iVar2 == 0) {
        // (**(code **) (*param_2 + 0x24))(param_2, &local_2c);
        local_38.x = local_2c;
        local_38.y = iStack_28;
        local_38.z = iStack_24;
        iVar2      = Vec3p_Distance(param_3, &local_38);
        Vec3p_Sub(param_3, &local_38, &local_38);
        // bVar1 = Vec3p_Normalize(&local_38);
        if (!bVar1) {
            local_38.x = 0;
            local_38.y = 0;
            local_38.z = 0x1000;
        }
        Vec3p_Scale(&local_38, (local_20 + param_5) - iVar2);
        Vec3p_Add(param_3, &local_38, param_7);
        local_50.x = local_2c;
        local_50.y = iStack_28;
        local_50.z = iStack_24;
        Vec3p_Sub(param_4, &local_50, &local_44);
        // Vec3p_Normalize(&local_44);
        param_8->x = local_44.x;
        param_8->y = local_44.y;
        param_8->z = local_44.z;
        return false;
    }
    if (iVar2 == 1) {
        local_58 = 0;
        local_64 = 0;
        local_60 = 0;
        local_5c = 0;
        // (**(code **) (*param_2 + 0x28))(param_2, &local_64);
        local_70.y = param_3->y;
        local_70.x = local_64;
        local_70.z = local_5c;
        if ((((*(char *) ((int) param_2 + 5) != '\0') && ((param_6 & 0x80) != 0)) &&
             (iVar2 = Vec3p_Distance(&local_70, param_3), iVar2 <= local_58)) &&
            ((local_60 + local_54 <= param_4->y && (iVar2 = param_5 + local_60 + local_54, param_3->y <= iVar2))))
        {
            param_7->y = iVar2;
            param_8->x = 0;
            param_8->y = 0x1000;
            param_8->z = 0;
            return true;
        }
        iVar2 = Vec3p_Distance(param_3, &local_70);
        iVar3 = local_58 + param_5;
        Vec3p_Sub(param_3, &local_70, &local_70);
        // bVar1 = Vec3p_Normalize(&local_70);
        if (!bVar1) {
            local_70.x = 0;
            local_70.y = 0;
            local_70.z = 0x1000;
        }
        Vec3p_Scale(&local_70, iVar3 - iVar2);
        Vec3p_Add(param_3, &local_70, param_7);
        local_88.x = local_64;
        local_88.z = local_5c;
        local_88.y = param_4->y;
        Vec3p_Sub(param_4, &local_88, &local_7c);
        // Vec3p_Normalize(&local_7c);
        param_8->x = local_7c.x;
        param_8->y = local_7c.y;
        param_8->z = local_7c.z;
        return false;
    }
    if (iVar2 != 2) {
        return false;
    }
    // (**(code **) (*param_2 + 0x2c))(param_2, local_a0);
    func_ov000_0208e6b0(&local_a0, &local_ac);
    local_b8.y = param_3->y;
    local_b8.x = local_ac.x; // previously = local_ac[0] (of type s32)
    local_b8.z = local_a4;
    Vec3p_Sub(param_3, &local_b8, &local_b8);
    local_c4.x = local_b8.x;
    local_c4.y = local_b8.y;
    local_c4.z = local_b8.z;
    // bVar1      = Vec3p_Normalize(&local_c4);
    if (!bVar1) {
        local_c4.x = 0;
        local_c4.y = 0;
        local_c4.z = 0x1000;
    }
    if (((*(char *) ((int) param_2 + 5) != '\0') && ((param_6 & 0x80) != 0)) &&
        (((param_3->x < local_94 && (((local_a0.x <= param_3->x && (param_3->z < local_8c)) && (local_98 <= param_3->z)))) ||
          (local_90 + param_5 <= param_4->y))))
    {
        param_7->y = local_90 + param_5;
        param_8->x = 0;
        param_8->y = 0x1000;
        param_8->z = 0;
        return true;
    }
    func_ov000_0208e6b0(&local_a0, &local_d0);
    iVar2 = param_3->z;
    if (((iVar2 < local_8c) && (local_98 <= iVar2)) && ((param_3->x < local_94 && (local_a0.x <= param_3->x)))) {
        iVar2 = func_ov000_0208e6f0(&local_a0);
        iVar3 = func_ov000_0208e704(&local_a0);
        if (iVar2 == iVar3) {
            local_c8 = local_c8 - param_3->z;
            if (local_c8 < 0) {
                local_c8 = -local_c8;
            }
            local_d0.x = local_d0.x - param_3->x;
            if (local_d0.x < 0) {
                local_d0.x = -local_d0.x;
            }
            bVar1 = local_c8 < local_d0.x;
        } else {
            iVar2 = func_ov000_0208e6f0(&local_a0);
            iVar3 = func_ov000_0208e704(&local_a0);
            if (iVar2 < iVar3) {
                bVar1 = true;
            } else {
                bVar1 = false;
            }
        }
        if (bVar1) {
            if (local_c4.x < 0) {
                iVar2 = local_b8.x;
                if (local_b8.x < 0) {
                    iVar2 = -local_b8.x;
                }
                iVar3      = func_ov000_0208e6f0(&local_a0);
                param_7->x = param_7->x - ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = -0x1000;
                param_8->y = 0;
                param_8->z = 0;
            } else {
                iVar2 = local_b8.x;
                if (local_b8.x < 0) {
                    iVar2 = -local_b8.x;
                }
                iVar3      = func_ov000_0208e6f0(&local_a0);
                param_7->x = param_7->x + ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = 0x1000;
                param_8->y = 0;
                param_8->z = 0;
            }
        } else if (local_c4.z < 0) {
            iVar2 = local_b8.z;
            if (local_b8.z < 0) {
                iVar2 = -local_b8.z;
            }
            iVar3      = func_ov000_0208e704(&local_a0);
            param_7->z = param_7->z - ((param_5 + (iVar3 >> 1)) - iVar2);
            param_8->x = 0;
            param_8->y = 0;
            param_8->z = -0x1000;
        } else {
            iVar2 = local_b8.z;
            if (local_b8.z < 0) {
                iVar2 = -local_b8.z;
            }
            iVar3      = func_ov000_0208e704(&local_a0);
            param_7->z = param_7->z + ((param_5 + (iVar3 >> 1)) - iVar2);
            param_8->x = 0;
            param_8->y = 0;
            param_8->z = 0x1000;
        }
    } else {
        iVar3 = param_3->x;
        if ((iVar3 < local_94) && (local_a0.x <= iVar3)) {
            if (local_c4.z < 0) {
                iVar2 = local_b8.z;
                if (local_b8.z < 0) {
                    iVar2 = -local_b8.z;
                }
                iVar3      = func_ov000_0208e704(&local_a0);
                param_7->z = param_7->z - ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = 0;
                param_8->y = 0;
                param_8->z = -0x1000;
            } else {
                iVar2 = local_b8.z;
                if (local_b8.z < 0) {
                    iVar2 = -local_b8.z;
                }
                iVar3      = func_ov000_0208e704(&local_a0);
                param_7->z = param_7->z + ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = 0;
                param_8->y = 0;
                param_8->z = 0x1000;
            }
        } else if ((iVar2 < local_8c) && (local_98 <= iVar2)) {
            if (local_c4.x < 0) {
                iVar2 = local_b8.x;
                if (local_b8.x < 0) {
                    iVar2 = -local_b8.x;
                }
                iVar3      = func_ov000_0208e6f0(&local_a0);
                param_7->x = param_7->x - ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = -0x1000;
                param_8->y = 0;
                param_8->z = 0;
            } else {
                iVar2 = local_b8.x;
                if (local_b8.x < 0) {
                    iVar2 = -local_b8.x;
                }
                iVar3      = func_ov000_0208e6f0(&local_a0);
                param_7->x = param_7->x + ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = 0x1000;
                param_8->y = 0;
                param_8->z = 0;
            }
        } else {
            local_c8 = local_c8 - iVar2;
            if (local_c8 < 0) {
                local_c8 = -local_c8;
            }
            local_d0.x = local_d0.x - iVar3;
            if (local_d0.x < 0) {
                local_d0.x = -local_d0.x; // local_d0.x previously local_d0[0]
            }
            if (local_c8 < local_d0.x) {
                if (local_c4.x < 0) {
                    iVar2 = local_b8.x;
                    if (local_b8.x < 0) {
                        iVar2 = -local_b8.x;
                    }
                    iVar3      = func_ov000_0208e6f0(&local_a0);
                    param_7->x = param_7->x - ((param_5 + (iVar3 >> 1)) - iVar2);
                    param_8->x = -0x1000;
                    param_8->y = 0;
                    param_8->z = 0;
                } else {
                    iVar2 = local_b8.x;
                    if (local_b8.x < 0) {
                        iVar2 = -local_b8.x;
                    }
                    iVar3      = func_ov000_0208e6f0(&local_a0);
                    param_7->x = param_7->x + ((param_5 + (iVar3 >> 1)) - iVar2);
                    param_8->x = 0x1000;
                    param_8->y = 0;
                    param_8->z = 0;
                }
            } else if (local_c4.z < 0) {
                iVar2 = local_b8.z;
                if (local_b8.z < 0) {
                    iVar2 = -local_b8.z;
                }
                iVar3      = func_ov000_0208e704(&local_a0);
                param_7->z = param_7->z - ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = 0;
                param_8->y = 0;
                param_8->z = -0x1000;
            } else {
                iVar2 = local_b8.z;
                if (local_b8.z < 0) {
                    iVar2 = -local_b8.z;
                }
                iVar3      = func_ov000_0208e704(&local_a0);
                param_7->z = param_7->z + ((param_5 + (iVar3 >> 1)) - iVar2);
                param_8->x = 0;
                param_8->y = 0;
                param_8->z = 0x1000;
            }
        }
    }
    return false;
}

bool MapManager::func_ov00_02086a84(s32 *param_2, Vec3p *param_3, Vec3p *param_4, s32 param_5, s32 param_6, unk32 param_7,
                                    Vec3p *param_8, Vec3p *param_9) {
    bool bVar1;
    int iVar2;
    Vec3p VStack_a0;
    unk32 auStack_94[24];
    Vec3p local_7c;
    int local_70[5];
    Vec3p local_5c;
    Vec3p local_50;
    Vec3p local_44;
    Vec3p local_38;
    int local_2c;
    Vec3p VStack_28;

    Vec3p_Sub(param_3, param_4, &VStack_28);
    // iVar2 = (**(code **) (*param_2 + 8))();
    if (iVar2 == 0) {
        //(**(code **) (*param_2 + 0x24))(param_2, &local_38);
        if (param_6 == 0) {
            local_44.x = local_38.x;
            local_44.y = local_38.y;
            local_44.z = local_38.z;
            iVar2      = Vec3p_Distance(param_3, &local_44);
            Vec3p_Sub(param_3, &local_38, &local_44);
            // bVar1 = Vec3p_Normalize(&local_44);   // This function needs to be declared and defined separately to the other
            // Vec3p_Normalize with the return type as bool.
            if (!bVar1) {
                local_44.x = 0;
                local_44.y = 0;
                local_44.z = 0x1000;
            }
            Vec3p_Scale(&local_44, (local_2c + param_5) - iVar2);
            Vec3p_Add(param_3, &local_44, param_8);
        } else {
            Vec3p_Scale(&VStack_28, param_6);
            Vec3p_Add(param_4, &VStack_28, param_8);
        }
        local_5c.x = local_38.x;
        local_5c.y = local_38.y;
        local_5c.z = local_38.z;
        Vec3p_Sub(param_4, &local_5c, &local_50);
        // Vec3p_Normalize(&local_50);
        param_9->x = local_50.x;
        param_9->y = local_50.y;
        param_9->z = local_50.z;
        return false;
    }
    if (iVar2 != 1) {
        if (iVar2 != 2) {
            return false;
        }
        //(**(code **) (*param_2 + 0x2c))(param_2, auStack_94);
        // func_ov000_0208e6b0(auStack_94, &VStack_a0);
        Vec3p_Scale(&VStack_28, param_6);
        Vec3p_Add(param_4, &VStack_28, param_8);
        Vec3p_Sub(param_4, &VStack_a0, param_9);
        // Vec3p_Normalize(param_9);
        return false;
    }
    local_70[3] = 0;
    local_70[0] = 0;
    local_70[1] = 0;
    local_70[2] = 0;
    // (**(code **) (*param_2 + 0x28))(param_2, local_70);
    Vec3p_Scale(&VStack_28, param_6);
    Vec3p_Add(param_4, &VStack_28, param_8);
    local_7c.x = local_70[0];
    local_7c.z = local_70[2];
    local_7c.y = param_4->y;
    Vec3p_Sub(param_4, &local_7c, param_9);
    // Vec3p_Normalize(param_9);
    return false;
}
