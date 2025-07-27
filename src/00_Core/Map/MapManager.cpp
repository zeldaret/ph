// TODO: Make sure every function has either ARM or THUMB
// TODO: Optimise functions' bodies as much as possible (without affecting asm)
// Clear these comments when done

#include "Map/MapManager.hpp"
#include "Actor/Actor.hpp"
#include "Actor/ActorManager.hpp"
#include "Actor/ActorSpawner.hpp"
#include "DTCM/UnkStruct_027e077c.hpp"
#include "DTCM/UnkStruct_027e0c68.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "DTCM/UnkStruct_027e0f6c.hpp"
#include "DTCM/UnkStruct_027e0f78.hpp"
#include "DTCM/UnkStruct_027e0fd4.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/PlayerBase.hpp"
#include "Save/AdventureFlags.hpp"
#include "Unknown/UnkStruct_02037750.hpp"
#include "Unknown/UnkStruct_020eec68.hpp"

#include <stdio.h>

extern bool func_01ffbe78(Vec3p *param1, Vec3p *param2, Vec3p *param3, Vec4p *param4);

extern u32 func_ov000_02078bc4(unk32 param_1);
extern s32 func_ov000_02078fe8(s32 *param_1);
extern void func_ov000_0207920c(s32 *param_1, Vec3p *param_2, s32 *param_3, s32 *param_4);
extern void func_ov000_020792a0(s32 *param_1, s32 param_2, unk32 param_3, unk32 param_4);
extern void func_ov000_02079898(unk32 *param_1, unk32 param_2, unk32 param_3);
extern void func_ov000_020798bc(s32 *param_1, s32 param_2);
extern void func_ov000_02088000(UnkStruct_027e0f64_04 *param_1, s32 param_2);
extern void func_ov000_02088130(u8 *param_1, unk32 param_2);
extern void func_ov000_02088144(u8 *param_1, unk32 param_2);

extern s32 func_ov000_0208b73c(s32 param_1, unk32 param_2);
extern s32 func_ov000_0208b7d0(s32 param_1, Vec3p *param_2);
extern s32 func_ov000_0208b804(s32 *param_1, Vec3p *param_2, Vec3p *param_3);
extern s32 func_ov000_0208df78(s32 *param_1, unk32 param_, unk32 param_3, Vec3p *param_4, s32 *param_5);
extern void func_ov000_0208e6b0(Vec3p *param_1, Vec3p *param_2);
extern s32 func_ov000_0208e6f0(Vec3p *param_1);
extern s32 func_ov000_0208e704(Vec3p *param_1);
extern s32 func_ov000_0208e87c(AABB *param_1, Vec3p *param_2, Vec3p *param_3);
extern void func_ov000_0208ed74(AABB *param_1, Vec3p *param_2);
extern void func_ov000_02093a1c(u32 *param_1, unk32 *param_2, unk32 param_3);
extern void func_ov000_02096324(unk32 *param_1, unk32 *param_2);
extern s32 *func_ov000_02096418(s32 *param_1);
extern void func_ov015_021849a4(unk32 *param_1);

// extern MapBase *func_ov018_0215b4a0(MapBase *param_1, unk32 param_2, unk32 param_3);

struct astruct_16 {
    /* 00 */ Actor_UnkStruct_020 *mUnk_00;
    /* 04 */ unk8 mUnk_08[0x10];
    /* 14 */ unk16 mAngle;
    /* 16 */ unk8 mUnk_16;
    /* 17 */ unk8 mUnk_17;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2c */
}; // What is this struct?

class UnkStruct_0212b358 : public MapBase {
public:
    char pad[0x790 - 0x1B0];
    UnkStruct_0212b358(u32 param1, u32 param2);
    virtual ~UnkStruct_0212b358() override;
};

class UnkStruct_02128dd8 : public MapBase {
public:
    UnkStruct_02128dd8(u32 param1, u32 param2);
    virtual ~UnkStruct_02128dd8() override;
};

class UnkStruct_0215b4a0 : public MapBase {
public:
    char pad[0x1DC - 0x1B0];
    UnkStruct_0215b4a0(u32 param1, u32 param2);
    virtual ~UnkStruct_0215b4a0() override;
};

class UnkStruct_0215b4e8 : public MapBase {
public:
    char pad[0x790 - 0x1B0];
    UnkStruct_0215b4e8(u32 param1, u32 param2);
    virtual ~UnkStruct_0215b4e8() override;
};

struct UnkStruct_02084740 {
    /* 00 */ unk32 mUnk_00[0x6c];
    /* 68 */
};

class UnkStruct_02085594 {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ Vec3p mUnk_04;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ Vec3p mUnk_14;
    /* 20 */ unk32 mUnk_20;

    virtual void vfunc_00();
    virtual void vfunc_04();
    virtual void vfunc_08();
    virtual void vfunc_0c();
    virtual void vfunc_10();
    virtual void vfunc_14();
    virtual void vfunc_18();
    virtual unk8 vfunc_1c();
    virtual void vfunc_20();
    virtual void vfunc_24();
    virtual void vfunc_28();
    virtual void vfunc_2c();
    virtual unk32 vfunc_30(unk32 param_2);
    virtual void vfunc_34();
    virtual unk32 vfunc_38(unk32 param_2);
    virtual unk32 vfunc_3c(unk32 param_2);
};

struct UnkStruct_027e0f68 {
    void func_ov000_0208cc88();
    void func_ov000_0208d620();
    void func_ov000_0208d680();
    void func_ov004_02102b28();
};

extern u32 *data_027e0ce0[];
extern UnkStruct_0202e894 *data_027e0ce4;
extern unk32 *data_027e0d3c;
extern UnkStruct_027e0f68 *data_027e0f68;
extern unk32 *data_027e0f70;
extern unk32 data_ov000_020e24b4;
extern unk32 data_ov015_02190458;

static char *sShipParts[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

MapManager::MapManager() {
    /*MapManager_Unk1 *object;
    undefined *destructor;
    undefined *chain;

    DWORD_arm9_ov000__020e24c4 = 0x5fff;
    data_ov000_020e24c8.field0_0x0 = 0;
    data_ov000_020e24c8.field1_0x4 = 0x60;
    __register_global_object
              (&data_ov000_020e24c8,func_ov000_02086cd0,(DestructorChain *)(undefined *)0x20ec964);
    data_ov000_020e24d0.field0_0x0 = 0;
    data_ov000_020e24d0.field1_0x4 = 0;
    __register_global_object
              (&data_ov000_020e24d0,func_ov000_02086cd0,(DestructorChain *)(undefined *)0x20ec970);
    data_ov000_020e24d8.field0_0x0 = 0x80;
    data_ov000_020e24d8.field1_0x4 = 0x60;
    __register_global_object
              (&data_ov000_020e24d8,func_ov000_02086cd0,(DestructorChain *)(undefined *)0x20ec97c);
    data_ov000_020e24e0.field0_0x0 = 0x80;
    data_ov000_020e24e0.field1_0x4 = 0;
    __register_global_object
              (&data_ov000_020e24e0,func_ov000_02086cd0,(DestructorChain *)(undefined *)0x20ec988);
    data_ov000_020e24e8.field0_0x0 = 0xfff80000;
    data_ov000_020e24e8.field1_0x4 = 0xfffa0000;
    __register_global_object
              (&data_ov000_020e24e8,MapManager_Unk2::~MapManager_Unk2,
               (DestructorChain *)(undefined *)0x20ec994);
    data_ov000_020e24f0.field0_0x0 = 0xfff80000;
    data_ov000_020e24f0.field1_0x4 = 0xfffa0000;
    __register_global_object
              (&data_ov000_020e24f0,MapManager_Unk2::~MapManager_Unk2,
               (DestructorChain *)(undefined *)0x20ec9a0);
    data_ov000_020e24f8.field0_0x0 = 0xfff80000;
    data_ov000_020e24f8.field1_0x4 = 0xfffa0000;
    __register_global_object
              (&data_ov000_020e24f8,MapManager_Unk2::~MapManager_Unk2,
               (DestructorChain *)(undefined *)0x20ec9ac);
    data_ov000_020e2500.field0_0x0 = 0xfff80000;
    data_ov000_020e2500.field1_0x4 = 0xfffa0000;
    __register_global_object
              (&data_ov000_020e2500,MapManager_Unk2::~MapManager_Unk2,
               (DestructorChain *)(undefined *)0x20ec9b8);
    return;*/
}

static const MapManager_Unk3 data_ov000_020e24c4(0x5fff);
static const MapManager_Unk1 data_ov000_020e24c8[4] = {
    MapManager_Unk1(0, 0x60),
    MapManager_Unk1(0, 0),
    MapManager_Unk1(0x80, 0x60),
    MapManager_Unk1(0x80, 0),
};
static const MapManager_Unk2 data_ov000_020e24e8[4] = {
    MapManager_Unk2(-FLOAT_TO_Q20(128.0), -FLOAT_TO_Q20(96.0)),
    MapManager_Unk2(-FLOAT_TO_Q20(128.0), -FLOAT_TO_Q20(96.0)),
    MapManager_Unk2(-FLOAT_TO_Q20(128.0), -FLOAT_TO_Q20(96.0)),
    MapManager_Unk2(-FLOAT_TO_Q20(128.0), -FLOAT_TO_Q20(96.0)),
};

MapManager::~MapManager() {}

ARM void MapManager::GetCourseDungeonProgress(CourseProgress *param_2) {
    this->mCourse->GetDungeonProgress(param_2);
}

ARM void MapManager::func_ov00_020820fc(s32 param_2, unk32 param_3, unk32 param_4) {
    this->mCourse->func_ov00_0207ca28(param_2, param_3, param_4);
}

ARM void MapManager::func_ov00_0208210c(unk32 param_2, UnkStruct_0208210c_param3 *param_3) {
    FlagsUnk2 local_28;
    FlagsUnk2 local_40;

    local_28.mUnk_00.mUnk_00   = 0x47;
    local_28.mUnk_04.mUnk_00.x = 0;
    local_28.mUnk_04.mUnk_00.y = 0;
    local_28.mUnk_04.mUnk_00.z = -2;
    local_28.mUnk_04.mUnk_0c   = 0x0000;
    local_28.mUnk_04.mUnk_0e   = -1;
    local_28.mUnk_04.mUnk_0f   = 0;
    local_28.mUnk_04.mUnk_10   = 0;
    local_28.mUnk_04.mUnk_11   = 0;

    if (param_2 != 0) {
        param_3->mUnk_00 = 0xb;
        param_3->mUnk_04 = 2;
        param_3->mUnk_05 = 4;
    } else {
        this->func_ov00_02082348(&local_28);
        param_3->mUnk_00 = local_28.mUnk_00.func_ov000_020a5e9c();
        param_3->mUnk_04 = local_28.mUnk_04.mUnk_0e;
        param_3->mUnk_05 = local_28.mUnk_04.mUnk_0f;
    }

    param_3->mUnk_08 = data_027e0d38->mUnk_28->mUnk_1c.func_ov000_020a5e9c();
    param_3->mUnk_10 = data_027e0d38->mUnk_28->mUnk_2e;
    param_3->mUnk_14 = data_027e0d38->mUnk_28->mUnk_36;
    param_3->mUnk_18 = data_027e0d38->mUnk_28->mUnk_38;
    param_3->mUnk_0c = data_027e0d38->mUnk_28->mUnk_44.func_ov000_020a5e9c();
    param_3->mUnk_11 = data_027e0d38->mUnk_28->mUnk_56;
    param_3->mUnk_24 = data_027e0d38->mUnk_28->mUnk_5c.mUnk_00;
    param_3->mUnk_16 = data_027e0d38->mUnk_28->mUnk_5c.mUnk_0c;

    UnkStruct_027e0d38_Unk28 *pUVar4 = data_027e0d38->mUnk_28;
    local_40.mUnk_00                 = pUVar4->mUnk_70.mUnk_00;
    local_40.mUnk_04.mUnk_00         = pUVar4->mUnk_70.mUnk_04.mUnk_00;
    local_40.mUnk_04.mUnk_0c         = pUVar4->mUnk_70.mUnk_04.mUnk_0c;
    local_40.mUnk_04.mUnk_0e         = pUVar4->mUnk_70.mUnk_04.mUnk_0e;
    local_40.mUnk_04.mUnk_0f         = pUVar4->mUnk_70.mUnk_04.mUnk_0f;
    local_40.mUnk_04.mUnk_10         = pUVar4->mUnk_70.mUnk_04.mUnk_10;
    local_40.mUnk_04.mUnk_11         = pUVar4->mUnk_70.mUnk_04.mUnk_11;

    param_3->mUnk_1c0 = local_40.mUnk_00.func_ov000_020a5e9c();
    param_3->mUnk_1be = local_40.mUnk_04.mUnk_0e;
    param_3->mUnk_1bf = local_40.mUnk_04.mUnk_0f;
    func_ov000_02096324(data_027e0f70, (unk32 *) param_3);
    data_027e0f7c->func_ov000_0209d6e8((unk32 *) param_3);

    if (this->mCourse->mType != CourseType_TempleOfTheOceanKing) {
        param_3->mUnk_07  = this->mUnk_08;
        param_3->mUnk_1bc = this->mUnk_09;
    }
}

ARM void MapManager::func_ov00_0208230c(FlagsUnk2 *param_2) {
    param_2->mUnk_00.mUnk_00 = this->mCourse->mIndex;

    Course *course           = this->mCourse;
    param_2->mUnk_04.mUnk_0e = course->mMapGrid[course->mCurrMapPos.x][course->mCurrMapPos.y];
    param_2->mUnk_04.mUnk_0f = this->mUnk_0c;
}

ARM void MapManager::func_ov00_02082348(FlagsUnk2 *param_2) {
    FlagsUnk2 unkStruct;

    unkStruct.mUnk_00.mUnk_00   = 0x47;
    unkStruct.mUnk_04.mUnk_00.x = 0;
    unkStruct.mUnk_04.mUnk_00.y = 0;
    unkStruct.mUnk_04.mUnk_00.z = -2;
    unkStruct.mUnk_04.mUnk_0c   = 0;
    unkStruct.mUnk_04.mUnk_0e   = -1;
    unkStruct.mUnk_04.mUnk_0f   = 0;
    unkStruct.mUnk_04.mUnk_10   = 0;
    unkStruct.mUnk_04.mUnk_11   = 0;

    this->func_ov00_0208230c(&unkStruct);
    unkStruct.func_ov000_02078bf0(param_2);
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
    if (this->mMap->vfunc_4c() == 2) {
        return this->mMap->func_ov015_02129c14(); // MapBase::GetUnk_19c_Unk_28 according to Ghidra
    }

    return 0;
}

ARM bool MapManager::func_ov00_02082454(Vec3p *param_2, Vec3p *param_3) {
    if (this->mMap->vfunc_4c() == 2) {
        return this->mMap->func_ov015_02129c24(param_2, param_3);
    }

    return false;
}

ARM bool MapManager::func_ov00_02082494(s32 param_2) {
    if (this->mMap->vfunc_4c() == 2) {
        return this->mMap->func_ov015_02129c34(param_2);
    }

    return false;
}

ARM bool MapManager::func_ov00_020824cc(s32 param_2) {
    if (this->mMap->vfunc_4c() == 2) {
        return this->mMap->func_ov015_02129c44(param_2);
    }

    return false;
}

ARM s32 MapManager::func_ov00_02082504() {
    if (this->mMap->vfunc_4c() == 2) {
        return this->mMap->mUnk_1ac;
    }

    return 0;
}

ARM Vec3p *MapManager::func_ov00_02082538() {
    Vec3p var0;

    if (this->mMap->vfunc_4c() == 2) {
        return &this->mMap->mUnk_1a0;
    }

    //! @bug: returning pointer to local variable (fake match?)
    var0 = gPlayerPos;
    return &var0;
}

ARM void MapManager::func_ov00_02082594() {
    data_027e0f68->func_ov000_0208d620();
}

ARM void MapManager::func_ov00_020825ac() {
    data_027e0f68->func_ov000_0208d680();
}

ARM s32 MapManager::GetCourseFilePath(char *courseName, char *buf) {
    return sprintf(buf, "Map/%s/course.bin", courseName);
}

ARM void MapManager::func_ov00_020825e4(unk32 param_2, char *buf) {
    this->GetCourseFilePath(data_027e0f7c->func_ov000_0209d71c(param_2), buf);
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

ARM void MapManager::func_ov00_020826a0(unk32 param_2, unk32 param_3) {
    this->mMap->vfunc_98(param_2, 7, param_3);
}

ARM void MapManager::CreateMap(unk32 mapType, unk32 param_3, unk32 param_4) {
    if (this->mMap == NULL) {
        switch (mapType) {
            case 4:
                this->mMap = new(data_027e0ce0[1], 4) UnkStruct_0212b358(param_3, param_4);
                break;
            case 2:
                this->mMap = new(data_027e0ce0[1], 4) UnkStruct_02128dd8(param_3, param_4);
                break;
            case 0:
                this->mMap = new(data_027e0ce0[1], 4) UnkStruct_0215b4a0(param_3, param_4);
                break;
            case 1:
            case 3:
            default:
                this->mMap = new(data_027e0ce0[1], 4) UnkStruct_0215b4e8(param_3, param_4);
                break;
        }
    }
}

ARM void MapManager::DestroyMap() {
    if (this->mMap != NULL) {
        delete this->mMap;
        this->mMap = NULL;
    }
}

ARM void MapManager::MapData_vfunc_44() {
    this->mMap->vfunc_44();
}

ARM void MapManager::func_ov00_02082808(bool param_2) {
    int iVar1;

    if (data_027e0d38->mUnk_14 == 1) {
        return;
    }

    iVar1 = this->func_ov00_02084740();

    if (param_2) {
        if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 0) {
            func_ov015_021849a4(&data_ov015_02190458);
        }

        data_ov000_020eec68.func_ov000_020d70a4(iVar1, 0, 127);
    } else {
        if (iVar1 == data_ov000_020eec68.func_ov000_020d7424()) {
            return;
        }

        data_ov000_020eec68.func_ov000_020d70a4(iVar1, 0, 127);
    }

    if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 0) {
        return;
    }

    data_ov000_020eec68.func_ov000_020d72b8();
}

ARM s32 MapManager::MapData_vfunc_7c(s32 param_1, unk32 *param_2, s32 param_3, short param_4[4]) {
    return this->mMap->vfunc_7c(param_1, param_2, param_3, param_4);
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
    q20 iVar3;
    q20 iVar4;
    int iVar5;
    Vec3p pVar1;
    Entrance local_30;

    int local_48;
    int local_50;

    switch (param_2) {
        case 0xfa: // temp correction
            Entrance local_30(*(Entrance *) ((s32) data_027e0d38->mUnk_28 + 0x5c));
            iVar3 = this->mMap->AddEntrance(&local_30);
            return iVar3;
        case 0xfb:
        case 0xfc:
        case 0xfd:
        case 0xfe:
            break;
        default:
            return this->mCourse->mIndex;
    }

    Entrance local_44;

    pVar1 = data_027e0d38->mUnk_28->mUnk_38;
    iVar3 = FLOAT_TO_Q20(2.0);
    iVar4 = FLOAT_TO_Q20(2.0);
    iVar5 = 0xfd;
    if (this->mCourse->mType == CourseType_Sea) {
        iVar3 = this->mMap->vfunc_88() + 0xa000;
        iVar4 = this->mMap->vfunc_8c() + 0xa000;
        iVar5 = 0xfe;
    }

    local_44.mAngle = 0;

    switch (param_2) {
        case 0xfb:
            pVar1.z         = this->GetMapMaxZ() - iVar4;
            local_44.mAngle = 0x8000;
            break;
        case 0xfc:
            pVar1.z         = iVar4 + this->GetMapMinZ();
            local_44.mAngle = 0;
            break;
        case 0xfd:
            pVar1.x         = GetMapMaxX() - iVar3;
            local_44.mAngle = 0xc000;
            break;
        case 0xfe:
            pVar1.x         = iVar3 + GetMapMinX();
            local_44.mAngle = 0x4000;
            break;
    }

    local_44.mId  = param_2;
    local_44.mPos = pVar1;
    return this->mMap->AddEntrance(&local_44);
}

ARM void MapManager::func_ov00_02082acc() {
    this->mCourse->func_ov00_0207d7bc();
}

ARM s32 *MapManager::func_ov00_02082adc() {
    return func_ov000_02096418(data_027e0f70);
}

ARM void MapManager::func_ov00_02082af4() {
    data_027e0f68->func_ov000_0208cc88();
    this->mMap->vfunc_48();
    this->func_ov00_02082808(false);
    this->mUnk_0a = true;
    this->mUnk_0b = false;
}

ARM bool MapManager::func_ov00_02082b3c(FlagsUnk2 *param_2) {
    u8 entranceId;
    bool cmp;
    ActorManager *actorManager;
    u16 var1;
    u32 var2;

    TilePos mapGridPos = this->mCourse->FindMapGridPos(param_2->mUnk_04.mUnk_0e);

    if (mapGridPos.x != this->GetCurrentMapPosX() || mapGridPos.y != this->GetCurrentMapPosY() ||
        (param_2->mUnk_04.mUnk_00.y == 1 && data_027e0d38->mUnk_14 == 1) || param_2->mUnk_04.mUnk_11 != 0) {
        gAdventureFlags->func_ov00_020976c8();
        data_027e0f64->func_ov000_0208b13c();
        actorManager = gActorManager;
        actorManager->func_ov004_02105608(mapGridPos.x, mapGridPos.y, this->func_ov00_02082d08());
        this->mMap->vfunc_2c();
        data_027e0f68->func_ov004_02102b28();
        data_027e0f6c->func_ov004_02102770();
        data_027e0f78->func_ov004_02102e3c();
        entranceId = param_2->mUnk_04.mUnk_0e;
        cmp        = false;
        var1       = this->mCourse->FindCurrentMapData_Unk_04();
        var2       = this->mCourse->FindMapData_Unk_04(entranceId);
        if (var1 != var2) {
            cmp = true;
        }
        this->mCourse->mCurrMapPos.x = mapGridPos.x;
        this->mCourse->mCurrMapPos.y = mapGridPos.y;
        this->func_ov004_021024c4(param_2, cmp, false);
        gActorManager->func_ov004_02105578(param_2->mUnk_04.mUnk_0e);
        data_027e103c->func_ov000_020cfcec();
    } else {
        gAdventureFlags->func_ov00_020976c8();
        this->mUnk_0c = param_2->mUnk_04.mUnk_0f;
        gPlayer->TeleportToEntrance(param_2->mUnk_04.mUnk_0f, false);
        gMessageManager.func_ov004_02106db8();
        this->mMap->vfunc_18();
    }
    return true;
}

ARM u8 MapManager::func_ov00_02082d08() {
    Course *course = this->mCourse;
    return course->mMapGrid[course->mCurrMapPos.x][course->mCurrMapPos.y];
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
            return this->mCourse->mMapGrid[this->mCourse->mCurrMapPos.x][this->mCourse->mCurrMapPos.y];
        default:
            break;
    }

    return this->mCourse->mUnk_0b1;
}

ARM u32 MapManager::func_ov00_02082d74(unk32 param_2) {
    return func_ov000_02078bc4(param_2);
}

ARM void MapManager::func_ov00_02082d84(TilePos *param_2, s32 *param_3, s32 *param_4) {
    s32 mapWidth  = this->GetMapWidth();
    u32 uVar3     = CoDivide64By32(0x100000, mapWidth << 0xc);
    s32 mapHeight = this->GetMapHeight();
    u32 uVar4     = CoDivide64By32(0xc0000, mapHeight << 0xc);
    // something related to x or width
    s64 lVar1 = (s64) ((u8) param_2->x << 0xc) * (s32) uVar3 + 0x800;
    *param_3  = (s32) (((s32) (lVar1 >> 0xc)) + ((s32) uVar3 >> 1) + 0x800) >> 0xc;
    // something related to y or height
    lVar1    = (s64) ((u8) param_2->y << 0xc) * (s32) uVar4 + 0x800;
    *param_4 = (s32) (((s32) (lVar1 >> 0xc)) + ((s32) uVar4 >> 1) + 0x800) >> 0xc;
}

ARM bool MapManager::func_ov00_02082e1c(s32 *param_2, s32 *param_3) {
    Vec2p mapScreenPos;
    u8 uVar8;
    Vec3p local_28;
    Vec3p local_4c;
    Course *course;
    bool bVar1;

    if (this->mCourse->mUnk_25c) {
        if (!this->mCourse->IsCurrentMapInMainGrid()) {
            mapScreenPos.x = -256;
            mapScreenPos.y = -256;
            bVar1          = this->mMap->mUnk_01a;

            if (!data_027e0d38->func_ov000_02078b40()) {
                uVar8 = data_027e0d38->mUnk_28->mUnk_9a;
            } else {
                uVar8 = data_027e0d38->mUnk_28->mUnk_2e;
            }

            if (uVar8 == 0xff) {
                course = this->mCourse;
                uVar8  = course->mMapGrid[course->mUnk_01e.x][course->mUnk_01e.y];
            }

            if (!data_027e0d38->func_ov000_02078b40()) {
                local_28 = data_027e0d38->mUnk_28->mUnk_38;
            } else {
                local_28 = data_027e0d38->mUnk_28->mUnk_a0;
            }

            long long lVar3;

            if (!this->mCourse->GetMapScreenPos(bVar1, &mapScreenPos.x, &mapScreenPos.y)) {
                this->mCourse->GetMapScreenPos(uVar8, &mapScreenPos.x, &mapScreenPos.y);
                TilePos local_4a = this->mCourse->FindMapGridPos(uVar8);
                local_4a         = this->func_ov00_02083a54(&local_28, local_4a.x, local_4a.y);
                uVar8            = this->mCourse->GetScreenMapCellSizeX();
                lVar3            = (int) ((u32) local_4c.x << 0xc) * (int) uVar8 + 0x800;
                *param_2 = mapScreenPos.y + ((int) (((u32) lVar3 >> 0xc | (int) (lVar3 >> 0x20) * 0x100000) + 0x800) >> 0xc);
                uVar8    = this->mCourse->GetScreenMapCellSizeY();
            } else {
                uVar8      = this->mCourse->GetScreenMapCellSizeX();
                lVar3      = (int) ((u32) (char) this->mMap->mUnk_01b << 0xc) * (int) uVar8 + 0x800;
                *param_2   = mapScreenPos.y + ((int) (((u32) lVar3 >> 0xc | (int) (lVar3 >> 0x20) * 0x100000) + 0x800) >> 0xc);
                uVar8      = this->mCourse->GetScreenMapCellSizeY();
                local_4c.y = this->mMap->mUnk_01c;
            }

            // probably an optimized div? or another operator like that
            /*
            s64 lVar1 = (s64) ((u8) param_2->x << 0xc) * (s32) uVar3 + 0x800;
            *param_3  = (s32) (((s32) (lVar1 >> 0xc)) + ((s32) uVar3 >> 1) + 0x800) >> 0xc;
            */
            lVar3    = (local_4c.y << 0xc) * uVar8 + 0x800;
            *param_3 = mapScreenPos.x + ((int) (((u32) lVar3 >> 0xc | (int) (lVar3 >> 0x20) * 0x100000) + 0x800) >> 0xc);
            return true;
        } else {
            param_2[0] = 0x80;
            param_3[0] = 0x80;
            return false;
        }
    } else {
        param_2[0] = 0xC0;
        param_3[0] = 0xC0;
        return false;
    }
}

ARM void MapManager::func_ov00_0208306c(s32 *param_2, s32 *param_3) {
    TilePos auStack_2c[18];
    Vec3p local_1c;
    Vec3p local_28;
    unk32 pMVar1;
    UnkStruct_027e0d38_Unk28 *iVar2;
    unk32 pMVar3;

    pMVar3 = this->mCourse->mUnk_008;
    pMVar1 = -3;
    if (pMVar3 != -3) {
        pMVar1 = -2;
    }

    local_1c      = gPlayerPos;
    auStack_2c[0] = this->func_ov00_02083a1c(&local_1c);
    this->func_ov00_02082d84(auStack_2c, param_2, param_3);

    if (pMVar3 == -3 || pMVar3 == pMVar1) {
        iVar2    = data_027e0d38->mUnk_28;
        local_28 = iVar2->mUnk_5c.mUnk_00;
        this->func_ov00_02083244(iVar2->mUnk_56, &local_28, param_2, param_3);
        return;
    }
    if (pMVar3 != -1) {
        *param_2 = this->mCourse->mUnk_0b4;
        *param_3 = this->mCourse->mUnk_0b8;
        return;
    }
}

ARM void MapManager::func_ov00_0208315c(s32 *param_2, s32 *param_3) {
    s32 *piVar2;
    s32 *piVar4;
    Vec3p playerPos;
    Vec3p local_2c;

    *piVar4 = this->mCourse->mUnk_008;
    *piVar2 = *param_2;

    if (*piVar4 != -3) {
        *piVar2 = -2;
    }

    playerPos = gPlayerPos;
    this->func_ov00_02083298(this->func_ov00_02082d08(), &playerPos, param_2, param_3);

    if (*piVar4 != -3 && piVar4 != piVar2) {
        local_2c = data_027e0d38->mUnk_28->mUnk_5c.mUnk_00;
        this->func_ov00_02083298(data_027e0d38->mUnk_28->mUnk_56, &local_2c, param_2, param_3);
        return;
    }

    if (*piVar4 != -1) {
        *param_2 = this->mCourse->mUnk_0bc;
        *param_3 = this->mCourse->mUnk_0c0;
        return;
    }
}

ARM void MapManager::func_ov00_02083244(u32 param_2, Vec3p *param_3, s32 *param_4, s32 *param_5) {
    if (param_2 >= 4) {
        param_2 = 0;
    }

    *param_4 = (param_3->x - data_ov000_020e24e8[param_2].mUnk_0) + 0x800 >> 0xc;
    *param_5 = (param_3->z - data_ov000_020e24e8[param_2].mUnk_4) + 0x800 >> 0xc;
}

ARM void MapManager::func_ov00_02083298(u32 param_2, Vec3p *param_3, s32 *param_4, s32 *param_5) {
    if (param_2 >= 4) {
        param_2 = 0;
    }

    *param_4 = data_ov000_020e24c8[param_2].mUnk_0 + ((param_3->x - data_ov000_020e24e8[param_2].mUnk_0 >> 1) + 0x800 >> 0xc);
    *param_5 = data_ov000_020e24c8[param_2].mUnk_4 + ((param_3->z - data_ov000_020e24e8[param_2].mUnk_4 >> 1) + 0x800 >> 0xc);
}

ARM bool MapManager::GetCourseData_Unk_25c() {
    return this->mCourse->mUnk_25c;
}

ARM bool MapManager::IsMapInMainGrid(u32 map) {
    return this->mCourse->IsMapInMainGrid(map);
}

ARM bool MapManager::func_ov00_02083328() {
    return this->mCourse->IsMapInMainGrid(this->func_ov00_02082d08());
}

ARM u8 MapManager::GetCourseMainGridSizeX() {
    return this->mCourse->mMainGridSize.x;
}

ARM u8 MapManager::GetCourseMainGridSizeY() {
    return this->mCourse->mMainGridSize.y;
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
    param_2->min.x = this->GetMapMinX();
    param_2->min.z = this->GetMapMinZ();

    param_2->max.x = this->GetMapMaxX();
    param_2->max.z = this->GetMapMaxZ();

    param_2->max.y = FLOAT_TO_Q20(1.2);
    param_2->min.y = 0;
}

ARM void MapManager::func_ov00_020834bc(Vec3p *param_2, unk32 param_3, unk32 param_4) {
    Vec3p *mapCenter = this->mCourse->FindMapCenter(this->mCourse->mMapGrid[param_3][param_4]);

    param_2->x = mapCenter->x;
    param_2->y = mapCenter->y;
    param_2->z = mapCenter->z;

    param_2->x = param_2->x - (this->func_ov00_02083374() >> 1);
    param_2->z = param_2->z - (this->func_ov00_02083384() >> 1);
}

ARM void MapManager::func_ov00_02083524(Vec3p *param_2, unk32 param_3, unk32 param_4) {
    Vec3p *mapCenter = this->mCourse->FindMapCenter(this->mCourse->mMapGrid[param_3][param_4]);
    param_2->x       = mapCenter->x;
    param_2->y       = mapCenter->y;
    param_2->z       = mapCenter->z;
}

ARM TilePos MapManager::func_ov00_02083560(u32 param_3) {
    return this->mCourse->FindMapGridPos(param_3);
}

ARM u8 MapManager::func_ov00_02083570(u8 param_2, u8 param_3) {
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

ARM bool MapManager::func_ov00_020835c4(s32 param_1, unk32 param_2) {
    return this->mCourse->func_ov00_0207d404(param_1, 0, param_2, 3);
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
    *param_1           = *entrance;
    return true;
}

ARM bool MapManager::func_ov00_02083664(Entrance *param_2, unk32 entranceId) {
    Entrance entrance;
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

    switch (actorId) {
        case 0:
        case 1:
            q20 y       = gPlayerPos.y;
            playerPos.x = gPlayerPos.x;
            playerPos.y = y;
            playerPos.z = gPlayerPos.z;
            break;
        default:
            actor = gActorManager->FindActorById(actorId);
            if (actor == NULL) {
                return false;
            }
            playerPos.x = actor->mPos.x;
            playerPos.y = actor->mPos.y;
            playerPos.z = actor->mPos.z;
            break;
    }
    return this->IsTriggerTypeOverlapped(type, &playerPos);
}

ARM bool MapManager::IsTriggerTypeOverlapped(u32 type, Vec3p *pos) {
    return this->mMap->IsTriggerTypeOverlapped(type, pos);
}

ARM unk8 MapManager::GetOverlappingTrigger(Vec3p *param_2) {
    return this->mMap->GetOverlappingTrigger(param_2);
}

ARM bool MapManager::func_ov00_02083790(s32 param_2) {
    int aiStack_14;
    int iStack_18;

    if (param_2 == 0) {
        return true;
    }

    data_027e0f64->mUnk_8->mUnk_1b4 = param_2;
    data_027e0f64->mUnk_4->mUnk_1b4 = param_2;

    if (data_027e0d38->func_ov000_02078b40() != 0 && !this->func_ov00_02082e1c(&aiStack_14, &iStack_18)) {
        func_ov000_02079898(data_027e0d3c, param_2, 0x10);
        gActorManager->func_ov00_020c3ce8(param_2, true);
    }

    return this->mMap->AnyTrigger_func_0c(param_2);
}

ARM bool MapManager::func_ov00_02083840(s32 param_2) {
    if (param_2 == 0) {
        return true;
    }

    data_027e0f64->mUnk_8->mUnk_1b4 = -1;
    data_027e0f64->mUnk_4->mUnk_1b4 = -1;

    if (func_ov000_02078fe8(data_027e0d3c) >= 0) {
        func_ov000_020798bc(data_027e0d3c, 0x10);
        gActorManager->func_ov00_020c3ce8(param_2, false);
    }

    return this->mMap->TriggerOfType_vfunc_10(param_2);
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

ARM TilePos MapManager::func_ov00_02083a1c(Vec3p *param_3) {
    s8 y = this->func_ov00_020839f8(param_3->z);
    s8 x = this->func_ov00_020839d4(param_3->x);
    return TilePos(x, y);
}

ARM TilePos MapManager::func_ov00_02083a54(Vec3p *param_3, s32 param_4, unk32 param_5) {
    Vec3p VStack_20;
    u32 uVar5;
    Vec3p local_2c;
    Vec3p local_38;

    if (this->GetCourseData_Unk_25c() != 0) {
        uVar5 = (param_4 == -1 || param_5 == 0xffffffff) ? this->func_ov00_02082d08()
                                                         : uVar5 = this->mCourse->mMapGrid[param_4][param_5];

        if (this->IsMapInMainGrid(uVar5)) {
            this->func_ov00_02083524(&VStack_20, param_4, param_5);
            local_38 = *param_3;
            Vec3p_Sub(&local_38, &VStack_20, &local_2c);
            return TilePos(this->mMap->GetClampedTileX(local_2c.x), this->mMap->GetClampedTileY(local_2c.z));
        }
        return TilePos(this->func_ov00_020839d4(param_3->x), this->func_ov00_020839f8(param_3->z));
    }
    return TilePos(this->func_ov00_020839d4(param_3->x), this->func_ov00_020839f8(param_3->z));
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

ARM void MapManager::func_ov00_02083c7c(Vec3p *param_2, TilePos param_3) {
    Vec3p local_28;

    param_2->x = this->func_ov00_02083c24(param_3.x);
    param_2->z = this->func_ov00_02083c50(param_3.y);
    local_28   = *param_2;
    param_2->y = this->MapData_vfunc_68(&local_28, true);
}

ARM void MapManager::func_ov00_02083ce8(Vec3p *param_2, TilePos param_3, s32 param_4, u32 param_5) {
    u32 uVar2;
    u8 uVar3;
    u8 uVar4;
    Vec3p local_2c;
    Vec3p local_38;
    TilePos local_8;

    if (GetCourseData_Unk_25c()) {
        if (param_4 == -1 || param_5 == -1) {
            uVar2 = this->func_ov00_02082d08();
        } else {
            uVar2 = this->mCourse->mMapGrid[param_4][param_5];
        }

        if (this->IsMapInMainGrid(uVar2)) {
            func_ov00_02083524(&local_2c, param_4, param_5);
            param_2->x = local_2c.x + this->mMap->GetTileStartX(param_3.x) + 0x800;
            param_2->z = local_2c.z + this->mMap->GetTileStartZ(param_3.y) + 0x800;
        } else {
            param_2->x = this->mMap->GetTileStartX(param_3.x) + 0x800;
            param_2->z = this->mMap->GetTileStartZ(param_3.y) + 0x800;
        }
    } else {
        param_2->x = this->mMap->GetTileStartX(param_3.x) + 0x800;
        param_2->z = this->mMap->GetTileStartZ(param_3.y) + 0x800;
    }

    local_38   = *param_2;
    param_2->y = MapData_vfunc_68(&local_38, true);
}

ARM s32 MapManager::func_ov00_02083e34(unk8 param_2, unk8 param_3, unk32 param_4) {
    TilePos local_8;
    local_8.x = param_2;
    local_8.y = param_3;
    return this->mMap->vfunc_60(&local_8);
}

ARM unk32 MapManager::MapData_vfunc_60(TilePos *param_1) {
    return this->mMap->vfunc_60(param_1);
}

ARM bool MapManager::func_ov00_02083e70(TilePos *param_2) {
    switch (this->MapData_vfunc_54(param_2)) {
        case 0x1b:
        case 0x2b:
        case 0x4e:
        case 0x4f:
            return true;
    }

    return this->MapData_vfunc_60(param_2) >= this->GetMapData_Unk_48();
}

ARM unk32 MapManager::MapData_vfunc_68(Vec3p *param_1, bool param_2) {
    return this->mMap->vfunc_68(param_1, param_2);
}

ARM s32 MapManager::func_ov00_02083ef8(Vec3p *param_2, Vec3p *param_3, bool param_4) {
    Vec3p local_18 = *param_2;

    if (param_3->y > local_18.y) {
        local_18.y = param_3->y;
    }

    return this->mMap->vfunc_68(&local_18, param_4);
}

ARM unk32 MapManager::func_ov00_02083f44(Vec3p *param_2, bool param_3) {
    q20 x          = param_2->x;
    q20 z          = param_2->z;
    Vec3p local_18 = {x, data_ov000_020e24c4.mUnk_0, z};
    return this->func_ov00_02083ef8(param_2, &local_18, param_3);
}

unk8 MapManager::MapData_vfunc_6c(Vec3p *param_2, unk32 *param_3, Vec3p *param_4) {
    this->mMap->vfunc_6c(param_2, param_3, param_4);
}

ARM unk32 MapManager::MapData_vfunc_70(Vec3p *param_2) {
    return this->mMap->vfunc_70(param_2);
}

ARM void MapManager::func_ov00_02083fb0(u32 *param_1, MapManager *param_2, Vec3p *param_3) {
    unk32 *iVar1; // find type with field that exists at offset 0xc
    s32 dVar2;

    iVar1 = (unk32 *) param_2->mMap->vfunc_74(param_3);
    if (iVar1 != NULL) {
        *param_1 = *(u32 *) ((unk32 *) iVar1 + 0x3); // offset 0xc
        return;
    }

    dVar2 = param_2->MapData_vfunc_70(param_3);
    if (dVar2 != 0xffff) {
        func_ov000_02093a1c(param_1, (unk32 *) data_027e0f6c, dVar2);
        return;
    }

    *param_1 = 0;
}

void MapManager::GetTileWorldBounds(TilePos *tile, AABB *tileBounds) {
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

unk32 MapManager::MapData_vfunc_54(TilePos *param_1) {
    return this->mMap->vfunc_54(param_1);
}

ARM unk32 MapManager::func_ov00_020840a0(u8 param_2, u8 param_3) {
    // Correct param types?
    TilePos vec;
    vec.x = param_2;
    vec.y = param_3;
    return this->mMap->vfunc_54(&vec);
}

// Returns UnkStruct_02085594*
unk32 *MapManager::MapData_vfunc_78(TilePos *param_1) {
    return this->mMap->vfunc_78(param_1);
}

unk32 MapManager::func_ov00_020840dc(TilePos *param_1) {
    UnkStruct_02037750 *piVar1; // placeholder struct until I can find the real struct

    piVar1 = (UnkStruct_02037750 *) this->MapData_vfunc_78(param_1);
    if (piVar1 != NULL) {
        return piVar1->vfunc_1c();
    }

    return -1;
}

unk8 MapManager::func_ov00_02084100(unk32 *param_1, MapManager *param_2) {
    unk32 uVar1 = param_2->mMap->mUnk_040;
    *param_1    = param_2->mMap->mUnk_044;
    param_1[1]  = uVar1;
}

unk32 MapManager::GetMapData_Unk_48() {
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

unk8 MapManager::MapData_vfunc_58(TilePos *param_1, int param_2) {
    this->mMap->vfunc_58(param_1, param_2);
}

ARM s32 MapManager::func_ov00_02084164(TilePos *param_2) {
    if (this->mMap->vfunc_58(param_2, 7) != 0) {
        return 0;
    }

    switch (this->MapData_vfunc_54(param_2)) {
        case 0:
        case 8:
        case 9:
        case 0xb:
        case 0xc:
        case 0xd:
        case 0xe:
        case 0xf:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x15:
        case 0x16:
        case 0x18:
        case 0x1a:
        case 0x20:
        case 0x21:
        case 0x22:
        case 0x23:
        case 0x25:
        case 0x26:
        case 0x27:
        case 0x28:
        case 0x29:
        case 0x2a:
        case 0x2c:
        case 0x2d:
        case 0x2e:
        case 0x2f:
        case 0x31:
        case 0x32:
        case 0x35:
        case 0x36:
        case 0x38:
        case 0x39:
        case 0x3a:
        case 0x3b:
        case 0x3c:
        case 0x3d:
        case 0x3e:
        case 0x3f:
        case 0x41:
        case 0x42:
        case 0x43:
        case 0x44:
        case 0x45:
        case 0x4d:
        case 0x51:
        case 0x52:
        case 0x53:
        case 0x54:
            return 1;
        default:
            break;
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

ARM void MapManager::func_ov00_0208433c(Vec3p *param_2, Vec2s *param_3) {
    Vec3p local_18 = *param_2;
    Vec3p VStack_24;
    Vec2s local_28;

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
    iVar1      = this->MapData_vfunc_68(param_3, true);
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

    // uVar1 = (**(code **) (*param_2 + 8))();
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
        // this->mMap->vfunc_2c(/*&local_58*/); // No args?
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
            case CourseType_Battle:
                return 1;
            case CourseType_Sea:
                return 2;
            case CourseType_Normal:
            default:
                return 0;
        }
    }
    return iVar1;
}

ARM s32 MapManager::func_ov00_02084700() {
    s32 iVar1 = this->mMap->mUnk_034;

    if (iVar1 == -1) {
        iVar1 = this->mCourse->mUnk_0c4;
    }

    if (iVar1 == 0x1b && gActorManager->mUnk_29) {
        iVar1 = 0x1c;
    }

    return iVar1;
}

unk32 MapManager::func_ov00_02084740() {
    unk32 bVar1;
    int iVar2;
    int iVar3;
    unk32 uVar4;
    unk32 uVar5;
    unk32 uVar6;
    unk32 uVar7;
    Vec3p local_1c8;
    UnkStruct_02084740 local_1bc;

    static const UnkStruct_02084740 data_ov000_020d88f0 = {
        .mUnk_00 =
            {
                0x51, 0x6e, 0x65, 0x50, 0x30, 0x74, 0x49, 0x50, 0x51, 0x54, 0x52, 0x53, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a,
                0x5f, 0x60, 0x61, 0x5c, 0x5b, 0x5e, 0x62, 0x63, 0x64, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x5d,
                0x31, 0x39, 0x3a, 0x3b, 0x3c, 0x32, 0x33, 0x34, 0x35, 0x38, 0x3d, 0xd9, 0xdc, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5,
                0xa6, 0x6f, 0x72, 0x75, 0x78, 0x79, 0x7a, 0x7b, 0x7f, 0x83, 0x87, 0x7c, 0x80, 0x84, 0x00, 0x88, 0x89, 0x8a,
                0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0x9b, 0x9d,
                0x9e, 0x9f, 0xa0, 0x70, 0x71, 0x73, 0x76, 0x77, 0x7d, 0x7e, 0x81, 0x82, 0x86, 0x9c, 0x36, 0x37, // 0xd0, 0xd1,
                                                                                                                // 0xcd, 0x19a
            },
    };

    iVar2 = this->func_ov00_02084700();
    iVar3 = data_027e0d38->func_ov000_02078b40();
    if (iVar3 != 2) {
        local_1c8 = gPlayerPos;
        bVar1     = this->GetOverlappingTrigger(&local_1c8);
        if (bVar1 > 0) {
            iVar2 = this->func_ov00_020847f0(bVar1);
        }
    }
    // 4-member structs? Or just 4 byte values? Since it's 1/4 of 108.

    local_1bc = data_ov000_020d88f0;

    return local_1bc.mUnk_00[iVar2];
    /*static const s32 data_ov000_020d88f0[] = {
        // Map IDs?
        0x51, 0x6e, 0x65, 0x50, 0x30, 0x74, 0x49, 0x50, 0x51, 0x54, 0x52, 0x53, 0x55, 0x56, 0x57,  0x58, 0x59, 0x5a, 0x5f,
        0x60, 0x61, 0x5c, 0x5b, 0x5e, 0x62, 0x63, 0x64, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45,  0x46, 0x5d, 0x31, 0x39,
        0x3a, 0x3b, 0x3c, 0x32, 0x33, 0x34, 0x35, 0x38, 0x3d, 0xd9, 0xdc, 0xa1, 0xa2, 0xa3, 0xa4,  0xa5, 0xa6, 0x6f, 0x72,
        0x75, 0x78, 0x79, 0x7a, 0x7b, 0x7f, 0x83, 0x87, 0x7c, 0x80, 0x84, 0x0,  0x88, 0x89, 0x8a,  0x8b, 0x8c, 0x8d, 0x8e,
        0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0x9b, 0x9d, 0x9e,  0x9f, 0xa0, 0x70, 0x71,
        0x73, 0x76, 0x77, 0x7d, 0x7e, 0x81, 0x82, 0x86, 0x9c, 0x36, 0x37, 0xd0, 0xd1, 0xcd, 0x19a,
    };
    unk32 bVar1;
    int iVar2;
    int iVar3;
    unk32 uVar4;
    unk32 uVar5;
    unk32 uVar6;
    unk32 uVar7;
    Vec3p local_1c8;
    unk32 local_1bc[108];

    iVar2 = this->func_ov00_02084700();
    iVar3 = data_027e0d38->func_ov000_02078b40();
    if (iVar3 != 2) {
        local_1c8 = gPlayerPos;
        bVar1     = this->GetOverlappingTrigger(&local_1c8);
        if (bVar1 > 0) {
            iVar2 = this->func_ov00_020847f0(bVar1);
        }
    }
    iVar3         = 0x1b; //((sizeof(data_ov000_020d88f0) / 4) - 2) / 4;
    unk32 *array  = (unk32 *) &data_ov000_020d88f0;
    unk32 *array2 = local_1bc;
    while (iVar3 != 0) {
        array[0] = array2[0];
        array[1] = array2[1];
        array[2] = array2[2];
        array[3] = array2[3];

        *array += 4;
        *array2 += 4;
        iVar3--;
    }

    return local_1bc[iVar2];*/
}

unk32 MapManager::func_ov00_020847e0() {
    return *(s32 *) ((s32) this->mMap->mUnk_144 + 0xc);
}

ARM unk32 MapManager::func_ov00_020847f0(unk32 type) {
    TriggerBase *triggerBase = this->mMap->FindTrigger(type);

    if (triggerBase == NULL) {
        return this->func_ov00_02084700();
    }

    if ((triggerBase->mUnk_0c != -1) && ((int) triggerBase->mUnk_0c < 0x6c)) {
        return triggerBase->mUnk_0c;
    }

    return this->func_ov00_02084700();
}

bool MapManager::func_ov00_02084838() {
    switch (this->GetMapData_Unk_38()) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 10:
        case 0xb:
        case 0xc:
        case 0x11:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
            return true;
        default:
            break;
    }

    return false;
}

bool MapManager::func_ov00_020848b8() {
    switch (this->func_ov00_020846a4()) {
        case 6:
        case 0xc:
        case 0xd:
        case 0xf:
        case 0x11:
            return true;
        default:
            break;
    }

    return false;
}

void MapManager::func_ov00_02084924(u32 param_2) {
    this->mMap->func_ov00_0208008c(param_2);
}

ARM bool MapManager::func_ov00_02084934(Vec3p *param_2) {
    Vec3p local_20;

    q20 mapCenterZ = this->GetMapCenterZ();
    q20 y          = param_2->y;
    q20 zDiff      = param_2->z - mapCenterZ;
    local_20.x     = param_2->x - this->GetMapCenterX();
    local_20.y     = y;
    local_20.z     = zDiff;
    return this->mMap->IsInBounds(&local_20);
}

u8 MapManager::GetMapData_Unk_06() {
    return this->mMap->mUnk_006;
}

u8 MapManager::GetMapData_Unk_07() {
    return this->mMap->mUnk_007;
}

bool MapManager::func_ov00_0208499c() {
    if (!this->func_ov00_020849c0()) {
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

ARM bool MapManager::func_ov00_020849f8() {
    switch (data_027e0d38->mUnk_0c.func_ov000_020a5e9c()) {
        case 5:
            return true;
        default:
            if (this->GetMapData_Unk_06() != 0 && !this->func_ov00_020849c0()) {
                return true;
            }
            break;
    }

    return false;
}

u8 MapManager::func_ov00_02084a50() {
    return this->mMap->mUnk_011;
}

void MapManager::SpawnNPC(Vec3p *pos, unk32 param_3, unk32 param_4) {
    ActorSpawnOptions actorSpawnOptions;
    actorSpawnOptions.mUnk_24 = param_3;
    actorSpawnOptions.mUnk_28 = param_4;
    gActorSpawner->Spawn(ActorTypeId_EVIC, pos, &actorSpawnOptions, NULL);
}

ARM bool MapManager::func_ov00_02084ac4(u32 actorId) {
    Actor *iVar1 = gActorManager->FindActorById(actorId);

    if (iVar1 == NULL) {
        return false;
    }

    if (iVar1->mType != ActorTypeId_EVIC) {
        return false;
    }

    iVar1->mAlive = false;
    return true;
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

ARM void MapManager::func_ov00_02084b38(u32 param_2, unk32 param_3, bool param_4) {
    MapBase *pMVar1;

    if (param_2 == 0) {
        return;
    }

    switch (param_3) {
        case 0:
            pMVar1 = this->mMap;
            if (param_4) {
                pMVar1->mUnk_180[param_2 >> 5].mUnk_0 |= 1 << (param_2 & 0x1f);
                break;
            }
            pMVar1->mUnk_180[param_2 >> 5].mUnk_0 &= ~(1 << (param_2 & 0x1f));
            break;
        case 1:
            this->mCourse->SetMapDataFlag0(param_2, param_4);
            break;
        case 2:
            this->mCourse->SetFlag0(param_2, param_4);
            break;
        case 3:
            this->mCourse->SetFlag1(param_2, param_4);
            break;
        default:
            break;
    }
}

bool MapManager::func_ov00_02084be0(u32 param_2, unk32 param_3) {
    if (param_2 == 0) {
        return false;
    }

    switch (param_3) {
        case 0:
            return (this->mMap->mUnk_180[param_2 >> 5].mUnk_0 & 1 << (param_2 & 0x1f)) != 0;
        case 1:
            return this->mCourse->GetMapDataFlag0(param_2);
        case 2:
            return this->mCourse->GetFlag0(param_2);
        case 3:
            return this->mCourse->SetFlag1(param_2);
        default:
            break;
    }

    return false;
}

void MapManager::SetMapDataFlag1(unk32 param_2, bool param_3) {
    this->mCourse->SetMapDataFlag1(param_2, param_3);
}

bool MapManager::GetMapDataFlag1(unk32 param_2) {
    return this->mCourse->GetMapDataFlag1(param_2);
}

void MapManager::func_ov00_02084c7c(unk32 param_2, bool param_3) {
    if (param_2 < 0) {
        return;
    }

    this->mCourse->SetMapDataFlag2(param_2, param_3);
}

bool MapManager::func_ov00_02084c94(unk32 param_2) {
    if (param_2 >= 0) {
        return this->mCourse->GetMapDataFlag2(param_2);
    }

    return false;
}

void MapManager::func_ov00_02084cb0(unk32 param_2, bool param_3) {
    if (param_2 < 0) {
        return;
    }

    this->mCourse->SetMapDataFlag3(param_2, param_3);
}

bool MapManager::func_ov00_02084cc8(unk32 param_2) {
    if (param_2 >= 0) {
        return this->mCourse->GetMapDataFlag3(param_2);
    }

    return false;
}

void MapManager::func_ov00_02084ce4(unk32 param_2, bool param_3) {
    if (param_2 < 0) {
        return;
    }

    this->mCourse->SetMapDataFlag4(param_2, param_3);
}

bool MapManager::func_ov00_02084cfc(unk32 param_2) {
    if (param_2 >= 0) {
        return this->mCourse->GetMapDataFlag4(param_2);
    }

    return false;
}

u8 MapManager::GetMapData_Unk_09() {
    return this->mMap->mUnk_009;
}

ARM void MapManager::func_ov00_02084d24(unk8 param_2, unk8 param_3, unk16 param_4) {
    // Matches, but param types unsure.
    // param_2 and param_3 aren't both part of a TilePos *
    // param_4 short or int?
    TilePos vec;
    vec.x = param_2;
    vec.y = param_3;
    this->mMap->vfunc_90(&vec, param_4);
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

    iVar1 = func_ov000_0208df78((s32 *) data_027e0f64->mUnk_4, param_2, param_3, &VStack_14, &iStack_20);
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
    TilePos auStack_18[4]; // undefined type
    u32 uStack_14;

    auStack_18[0] = this->func_ov00_02083a1c(param_2);
    piVar1        = (int *) this->MapData_vfunc_78(auStack_18);
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
    iVar2 = this->func_ov00_02083e70(auStack_18);
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
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 0x14:
                case 0x16:
                case 0x17:
                case 0x19:
                case 0x1d:
                case 0x1e:
                case 0x1f:
                case 0x27:
                case 0x28:
                case 0x29:
                    return 0;
                default:
                    break;
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
        func_ov000_02093a1c(&uStack_14, (unk32 *) data_027e0f6c, dVar3);
        if ((uStack_14 >> 5 & 3) != 1) {
            return 0;
        }
        return 1;
    }
    return 0;
}

s32 MapManager::func_ov00_02085108(Vec3p *param_2) {
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

    uVar2 = data_027e0f64->func_ov000_0208b180();
    func_ov000_02088130(&local_38, uVar2);
    local_44 = (u32) local_38;
    uVar2    = data_027e0f64->func_ov000_0208b180();
    func_ov000_02088144(&local_3a, uVar2);
    if (local_44 <= local_37) {
        do {
            puVar1 = gMapManager;
            uVar5  = (u32) local_39;
            if ((u32) local_3a <= (u32) local_39) {
                do {
                    // piVar3 = (int *) puVar1->MapData_vfunc_78();
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
                            param_2->x = piVar3[6];
                            param_2->y = piVar3[7];
                            param_2->z = piVar3[8];
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

s32 MapManager::func_ov00_0208527c(MapManager *param_1, unk32 param_2, Vec3p *param_3) {
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

    uVar3 = data_027e0f64->func_ov000_0208b180();
    func_ov000_02088130(&local_3c, uVar3);
    uVar7 = (u32) local_3c;
    uVar3 = data_027e0f64->func_ov000_0208b180();
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
            UnkStruct_0208210c_param3 *var = (UnkStruct_0208210c_param3 *) puVar2->MapData_vfunc_78(0);
            if (((var != NULL) && ((*(u32 *) var->mUnk_04 & 4) != 0)) &&
                (iVar5 = func_ov000_0208b73c(iVar4, param_2), iVar5 != 0)) {
                *param_3 = var->mUnk_18;
                return var->mUnk_12;
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

    uVar2 = data_027e0f64->func_ov000_0208b180();
    func_ov000_02088130(&local_3c, uVar2);
    local_48 = (u32) local_3c;
    uVar2    = data_027e0f64->func_ov000_0208b180();
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
        for (; (int) uVar1 <= (int) uVar6; uVar1++) {
            // iVar3 = gMapManager->MapData_vfunc_78();
            if ((((iVar3 != 0) && ((*(u32 *) (iVar3 + 4) & 4) != 0)) &&
                 (iVar4 = Vec3p_Distance((Vec3p *) (iVar3 + 0x18), param_2), iVar4 < *param_3)) &&
                (iVar5 = func_ov000_0208b7d0(iVar3, param_2), iVar5 != 0)) {
                *param_3 = iVar4;
                iVar7    = iVar3;
            }
        }
    }
    return iVar7;
}

ARM unk32 MapManager::func_ov00_02085594(Vec3p *param_2) {
    UnkStruct_02085594 *piVar1;
    unk32 dVar3;
    unk32 uVar4;
    bool bVar5;
    u32 uStack_24;
    Vec3p VStack_20;

    TilePos local_28 = this->func_ov00_02083a1c(param_2);
    piVar1           = (UnkStruct_02085594 *) this->MapData_vfunc_78(&local_28);
    bVar5            = true;
    if (piVar1 != NULL) {
        *param_2 = piVar1->mUnk_14;
        switch (piVar1->vfunc_1c()) {
            case 0x61:
                if (piVar1->mUnk_04.x != 2) {
                    break;
                }
                return 0;
            case 0x59:
                bVar5 = piVar1->mUnk_04.x == 4;
                break;
            case 0x42:
                return 2;
            case 0x1:
            case 0x38:
                break;
            default:
                return 0;
        }
    }
    switch (this->func_ov00_020840a0(local_28.x, local_28.y)) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 8:
        case 9:
        case 0x14:
        case 0x16:
        case 0x17:
        case 0x19:
        case 0x1d:
        case 0x1e:
        case 0x1f:
        case 0x27:
        case 0x28:
        case 0x29:
        case 0x37:
        case 0x46:
        case 0x47:
        case 0x48:
        case 0x50:
            return 0;
    }
    if (this->mMap->vfunc_58(&local_28, 5) != 0) {
        return 0;
    }
    this->func_ov00_02083c7c(&VStack_20, local_28);
    dVar3 = this->MapData_vfunc_70(&VStack_20);
    if (dVar3 == 0xffff) {
        return 0;
    }
    func_ov000_02093a1c(&uStack_24, (unk32 *) data_027e0f6c, dVar3);
    if ((uStack_24 >> 5 & 3) == 1) {
        return bVar5 ? 1 : 2;
    }

    return 0;
}

ARM unk32 MapManager::func_ov00_0208583c(MapManager *param_1, Vec3p *param_2, unk32 param_3) {
    UnkStruct_02085594 *piVar1;

    TilePos auStack_10 = param_1->func_ov00_02083a1c(param_2);
    piVar1             = (UnkStruct_02085594 *) param_1->MapData_vfunc_78(&auStack_10);
    if (piVar1 == NULL) {
        return -1;
    }
    if (data_027e077c.mUnk_0 != 1) {
        return -1;
    }
    if (data_027e077c.mUnk_0 == data_027e077c.mUnk_4) {
        return piVar1->vfunc_30(param_3);
    }
    return -1;
}

unk32 MapManager::func_ov00_020858b0(MapManager *param_1, Vec3p *param_2, unk32 param_3) {
    int mapWidth;
    int mapHeight;
    int iVar4;
    UnkStruct_02085594 *piVar5;
    int playerPosY;
    unk32 local_38;
    TilePos local_28;

    if (param_3 == 1) {
        func_ov000_02088000(data_027e0f64->mUnk_4, 7);
    } else {
        func_ov000_02088000(data_027e0f64->mUnk_4, 6);
    }
    mapWidth   = param_1->GetMapWidth();
    mapHeight  = param_1->GetMapHeight();
    local_38   = -1;
    local_28   = param_1->func_ov00_02083a1c(param_2);
    playerPosY = gPlayerPos.y;
    for (u8 x = local_28.x - 1; x <= (int) (local_28.x + 1); x++) {
        if ((x > -1) && (x < mapWidth)) {
            for (u8 y = local_28.y - 1; y <= (int) (local_28.y + 1); y++) {
                if ((y > -1) && (y < mapHeight)) {
                    iVar4 = param_1->MapData_vfunc_60(&local_28) - playerPosY;
                    if (iVar4 < 0) {
                        iVar4 = -iVar4;
                    }
                    if ((iVar4 <= 0xcd) &&
                        (piVar5 = (UnkStruct_02085594 *) param_1->MapData_vfunc_78(&local_28), piVar5 != NULL)) {
                        local_38 = piVar5->vfunc_38(param_3);
                    }
                }
            }
        }
    }
    return local_38;
}

s32 MapManager::func_ov00_02085a34(Vec3p *param_2, s32 param_3) {
    UnkStruct_02085594 *piVar1;
    int iVar2;
    unk16 *puVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;
    TilePos uStack_2c;
    TilePos auStack_2a[2];
    TilePos aVStack_28[2];
    unk16 auStack_24[4];
    unk32 auStack_1c[4];
    unk32 uStack_18;
    unk16 uStack_14;
    unk32 uStack_12;

    if (param_3 != 1) {
        if (param_3 != 2 && param_3 != 3) {
            return -1;
        }
        auStack_2a[0] = this->func_ov00_02083a1c(param_2);
        piVar1        = (UnkStruct_02085594 *) this->MapData_vfunc_78(auStack_2a);
        if (piVar1 == NULL) {
            return -1;
        }

        iVar2 = piVar1->vfunc_1c();
        if (iVar2 == 0x42) {
            uStack_2c.y = piVar1->mUnk_14.y;
            uStack_2c.x = piVar1->mUnk_04.y;
            this->mMap->func_ov00_02080d08(&uStack_2c);
        }
        iVar2 = piVar1->vfunc_38(param_3);
        return iVar2;
    }
    aVStack_28[0] = this->func_ov00_02083a1c(param_2);
    iVar2         = this->func_ov00_02084ebc(param_2);
    if (iVar2 == 0) {
        return -1;
    }
    piVar1 = (UnkStruct_02085594 *) this->MapData_vfunc_78(aVStack_28);
    if (piVar1 != NULL) {
        iVar2 = piVar1->vfunc_1c();
        if (0x38 < iVar2) {
            if (iVar2 < 0x5a) {
                if (iVar2 == 0x59) {
                LAB_overlay_d_0__02085afc:
                    iVar2 = piVar1->vfunc_3c(1);
                    return iVar2;
                }
            } else if (iVar2 == 0x61) {
                goto LAB_overlay_d_0__02085afc;
            }
            return -1;
        }
        if ((iVar2 < 0x38) && (iVar2 != 1)) {
            return -1;
        }
        piVar1->mUnk_04.x &= -2;
        this->func_ov00_020828f8((s32 *) piVar1);
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
    // iVar2 = this->MapData_vfunc_7c();
    if (iVar2 == 0) {
        return -1;
    }
    // iVar2 = MapData_vfunc_78();
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
    Vec2p iStack_104;
    Vec3p VStack_f0;
    Vec3p VStack_e4;
    Sphere VStack_d8;
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
    unk8 uStack_3e;
    unk8 uStack_3d;
    unk8 uStack_3c;
    unk8 uStack_3b;
    unk8 uStack_34;
    unk8 uStack_33;
    unk8 uStack_32;
    unk8 uStack_31;
    unk8 uStack_30;
    unk8 uStack_2f;
    unk32 uStack_2c;
    unk32 uStack_28;

    if (param_5 == 0) {
        return 0;
    }
    func_ov000_020792a0(data_027e0d3c, 0, *param_3, param_3[1]);
    func_ov000_020792a0(data_027e0d3c, 0, *param_4, param_4[1]);
    VStack_b0 = VStack_98;
    VStack_bc = VStack_a4;
    VStack_c8 = VStack_98;
    Vec3p_Sub(&VStack_98, &VStack_a4, &VStack_c8);
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
    bVar5            = false;
    VStack_d8.pos.y  = param_5 << 1;
    VStack_d8.pos.x  = 0;
    VStack_d8.pos.z  = 0;
    VStack_d8.radius = param_5;
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
            func_ov000_0207920c(data_027e0d3c, &VStack_e4, (unk32 *) &iStack_104, 0);
            param_2[8].x = iStack_104.x;
            param_2[8].y = iStack_104.y;
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
    TilePos local_c6;
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
                piVar9 = (int *) this->MapData_vfunc_78(&local_c6);
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
    Vec3p local_2c;
    s32 local_20;

    // iVar2 = (**(code **) (*param_2 + 8))(); // What pointer address is contained in param_2?
    if (iVar2 == 0) {
        // (**(code **) (*param_2 + 0x24))(param_2, &local_2c);
        local_38.x = local_2c.x;
        local_38.y = local_2c.y;
        local_38.z = local_2c.z;
        iVar2      = Vec3p_Distance(param_3, &local_38);
        Vec3p_Sub(param_3, &local_38, &local_38);
        Vec3p_Normalize(&local_38, &local_2c);
        if (!bVar1) {
            local_38.x = 0;
            local_38.y = 0;
            local_38.z = 0x1000;
        }
        Vec3p_Scale(&local_38, (local_20 + param_5) - iVar2);
        Vec3p_Add(param_3, &local_38, param_7);
        local_50.x = local_2c.x;
        local_50.y = local_2c.y;
        local_50.z = local_2c.z;
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
            ((local_60 + local_54 <= param_4->y && (iVar2 = param_5 + local_60 + local_54, param_3->y <= iVar2)))) {
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
          (local_90 + param_5 <= param_4->y)))) {
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
