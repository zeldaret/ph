#pragma once

#include "global.h"
#include "types.h"

#include "nds/math.h"

#include "Map/Course.hpp"
#include "Map/MapBase.hpp"
#include "Physics/AABB.hpp"
#include "System/SysNew.hpp"

struct MapManager_Unk1 {
    /* 0 */ unk32 mUnk_0;
    /* 4 */ unk32 mUnk_4;
    /* 8 */

    ~MapManager_Unk1();
};

struct MapManager_Unk2 {
    /* 0 */ unk32 mUnk_0;
    /* 4 */ unk32 mUnk_4;
    /* 8 */

    ~MapManager_Unk2();
};

class MapManager : public SysObject {
public:
    /* 00 */ Course *mCourse;
    /* 04 */ MapBase *mMap;
    /* 08 */ unk8 mUnk_08;
    /* 09 */ unk8 mUnk_09;
    /* 0a */ unk8 mUnk_0a;
    /* 0b */ unk8 mUnk_0b;
    /* 0c */ unk8 mUnk_0c;
    /* 0d */ unk8 mUnk_0d;
    /* 0e */ unk8 mUnk_0e;
    /* 0f */ unk8 mUnk_0f;
    /* 10 */

    bool func_01ffbe78(Vec3p *param1, Vec3p *param2, Vec3p *param3, Vec4p *param4);
    bool func_01ffbf5c(struct UnkStruct *param1, Vec3p *param2, Vec3p *param3, s32 length);
    bool func_01ffc118(s32 *param1, Vec3p *param2, Vec3p *param3, s32 param4, s32 *param5, u32 param6, s32 *param7);
    bool func_01ffd1e0(s32 *param1, Vec3p *param2, Vec3p *param3, s32 param4, s32 *param5, u32 param6, s32 *param7);

    void func_ov00_020820ec(unk32 *param_2);
    void func_ov00_020820fc(s32 param_2, unk32 param_3, unk32 param_4);
    unk8 func_ov00_0208210c(unk32 param_2, unk32 param_3);
    unk8 func_ov00_0208230c(unk32 param_2);
    unk8 func_ov00_02082348(unk32 param_2);
    void func_ov00_020823a4(unk32 param_2);
    unk8 func_ov00_020823b4();
    bool func_ov00_020823c4(unk32 *param_2, s32 param_3);
    s32 func_ov00_020823d4(s32 param_2);
    s32 func_ov00_020823e4(s32 param_2);
    unk8 MapData_vfunc_b4();
    unk8 MapData_vfunc_9c();
    s32 func_ov00_02082424();
    unk8 func_ov00_02082454(unk32 param_2, unk32 param_3);
    unk8 func_ov00_02082494(unk32 param_2);
    unk8 func_ov00_020824cc(unk32 param_2);
    unk8 func_ov00_02082504();
    unk8 *func_ov00_02082538();
    void func_ov00_02082594();
    void func_ov00_020825ac();
    s32 GetCourseFilePath(char *courseName, char *buf);
    unk8 func_ov00_020825e4(unk32 param_2, unk32 param_3);
    unk8 func_ov00_02082614(unk32 param_2, unk32 param_3);
    unk8 MapData_vfunc_b0();
    void func_ov00_02082650(s32 param_2, s32 param_3, unk32 param_4);
    void func_ov00_02082660(s32 param_2, s32 param_3);
    void func_ov00_02082670(unk32 param_2, s32 param_3);
    void func_ov00_02082680(unk32 param_2, unk32 param_3);
    unk8 func_ov00_020826a0(unk32 param_2, unk32 param_3, unk32 param_4);
    unk8 CreateMap(unk32 mapType, unk32 param_3, unk32 param_4);
    unk8 DestroyMap();
    unk8 MapData_vfunc_44();
    static unk8 func_ov00_02082808();
    unk8 MapData_vfunc_7c();
    unk8 MapData_vfunc_84();
    bool func_ov00_020828f8(s32 *param_2);
    unk8 GetCourseData_Unk_b0();
    s32 func_ov00_02082914(unk32 param_2);
    unk8 func_ov00_02082acc();
    unk32 *func_ov00_02082adc();
    unk8 func_ov00_02082af4();
    bool func_ov00_02082b3c(s32 param_2);
    unk8 func_ov00_02082d08();
    unk8 GetCourseData_Unk_1c();
    unk8 GetCourseData_Unk_1d();
    unk8 func_ov00_02082d40();
    u32 func_ov00_02082d74(unk32 param_2);
    static unk8 func_ov00_02082d84();
    bool func_ov00_02082e1c(s32 *param_2, s32 *param_3);
    static unk8 func_ov00_0208306c();
    void func_ov00_0208315c(s32 *param_2, s32 *param_3);
    void func_ov00_02083244(u32 param_2, s32 *param_3, s32 *param_4, s32 *param_5);
    void func_ov00_02083298(u32 param_2, s32 *param_3, s32 *param_4, s32 *param_5);
    unk8 GetCourseData_Unk_25c();
    bool func_ov00_02083318(unk32 param_2);
    static unk8 func_ov00_02083328();
    unk8 GetCourseData_Unk_86();
    unk8 GetCourseData_Unk_87();
    unk8 Get_MapData_Unk28();
    unk8 Get_MapData_Unk2a();
    static unk8 func_ov00_02083374();
    static unk8 func_ov00_02083384();
    unk8 GetCourseMinX();
    unk8 GetCourseMinZ();
    unk8 GetCourseMaxX();
    unk8 GetCourseMaxZ();
    unk8 func_ov00_020833c4();
    unk8 func_ov00_020833d0();
    unk8 func_ov00_020833dc();
    unk8 func_ov00_020833e8();
    unk8 Get_MapData_Unk_d0();
    unk8 Get_MapData_Unk_d8();
    unk8 GetMapData_Unk_dc(Vec3p *param_2);
    unk8 GetMapData_Unk_e8(Vec3p *param_2);
    unk8 GetMapData_Unk_d0(Vec3p *param_2);
    unk8 func_ov00_0208346c(AABB *param_2);
    unk8 func_ov00_020834bc(Vec3p *param_2, unk32 param_3, unk32 param_4);
    unk8 func_ov00_02083524(Vec3p *param_2, unk32 param_3, unk32 param_4);
    static void func_ov00_02083560(unk32 param_1, MapManager *param_2, u32 param_3);
    unk8 func_ov00_02083570(unk32 param_2, unk32 param_3);
    unk32 func_ov00_02083588();
    unk32 func_ov00_020835a4();
    unk32 func_ov00_020835b4();
    unk8 func_ov00_020835c4(unk32 param_2, unk32 param_3);
    bool func_ov00_020835e4(s32 param_2, unk32 *param_3, unk32 *param_4);
    unk32 func_ov00_020835f4(s32 param_2);
    void func_ov00_02083604(s32 param_2);
    unk8 func_ov00_02083614(s32 param_2);
    bool GetEntrancePos(Vec3p *param_2, unk32 entranceId);
    bool func_ov00_02083664(Vec3p *param_2, unk32 entranceId);
    s32 func_ov00_020836bc(u32 param_2, unk32 *param_3);
    s32 GetTriggerBoundingBoxes(u32 param_2, AABB *param_3, u32 param_4);
    unk8 func_ov00_020836dc(unk32 param_2, unk32 param_3);
    bool func_ov00_02083770(u32 param_2, unk32 param_3);
    bool func_ov00_02083780(unk32 param_2);
    bool func_ov00_02083790(unk32 param_2);
    unk8 func_ov00_02083840(unk32 param_2);
    bool func_ov00_020838c8(s32 param_2);
    bool func_ov00_020838d8(s32 param_2);
    bool func_ov00_020838e8(u32 param_2, unk32 *param_3);
    char func_ov00_020838f8(unk32 *param_2);
    bool func_ov00_02083908(char param_2, unk32 *param_3);
    void func_ov00_02083918(s32 param_2, s32 *param_3);
    void func_ov00_02083928(unk8 *param_2, s32 param_3);
    unk32 func_ov00_02083938(s32 param_2);
    unk8 Set_MapData_Unk_16(unk8 value, unk32 index);
    void func_ov00_02083958(s32 param_2);
    void func_ov00_02083968(u32 param_2, unk8 *param_3);
    bool func_ov00_02083978(unk32 param_2, Vec3p *param_3);
    bool func_ov00_020839b4(s32 param_2);
    bool func_ov00_020839c4(s32 param_2);
    static unk8 func_ov00_020839d4();
    static unk8 func_ov00_020839f8();
    static void func_ov00_02083a1c(unk32 param_1, MapManager *param_2, Vec3p *param_3);
    static unk8 func_ov00_02083a54(unk32 param_1, MapManager *param_2, unk32 param_3, unk32 param_4, unk32 param_5);
    static unk8 func_ov00_02083b84();
    static unk8 func_ov00_02083bac();
    static unk8 func_ov00_02083bd4();
    static unk8 func_ov00_02083bfc();
    unk8 func_ov00_02083c24(unk32 param_2);
    unk8 func_ov00_02083c50(unk32 param_2);
    unk8 func_ov00_02083c7c(Vec3p *param_2, unk32 param_3);
    static unk8 func_ov00_02083ce8(unk8 param_1, unk8 param_2, unk8 param_3, unk8 param_4, unk32 param_5);
    unk8 func_ov00_02083e34(unk8 param_2, unk8 param_3, unk32 param_4);
    unk8 MapData_vfunc_60();
    static unk8 func_ov00_02083e70();
    unk8 MapData_vfunc_68();
    s32 func_ov00_02083ef8(Vec3p *param_2, Vec3p *param_3, unk32 param_4);
    void func_ov00_02083f44(Vec3p *param_2);
    unk8 MapData_vfunc_6c();
    unk8 MapData_vfunc_70();
    static unk8 func_ov00_02083fb0(u32 *param_1, MapManager *param_2, Vec3p *param_3);
    void GetTileWorldBounds(Vec2b *tile, AABB *tileBounds);
    unk8 MapData_vfunc_54();
    unk8 func_ov00_020840a0(unk8 param_2, unk8 param_3, unk32 param_4);
    unk8 MapData_vfunc_78();
    static unk8 func_ov00_020840dc();
    static unk8 func_ov00_02084100(unk32 param_1, MapManager *param_2);
    unk8 GetMapData_Unk_48();
    unk8 GetMapData_Unk_4c();
    unk32 func_ov00_0208412c();
    void func_ov00_0208413c(unk32 param_2);
    unk8 MapData_vfunc_58();
    static unk8 func_ov00_02084164();
    unk8 GetMapData_Unk_0a();
    unk8 GetMapData_Unk_0b();
    unk8 MapData_vfunc_a4();
    unk8 func_ov00_0208433c(Vec3p *param_2, unk32 param_3);
    static unk8 func_ov00_0208439c();
    void func_ov00_020843ec(s32 *param_2);
    unk8 GetMapData_Unk_38();
    unk8 func_ov00_020846a4();
    static unk8 func_ov00_02084700();
    unk8 func_ov00_02084740();
    unk8 func_ov00_020847e0();
    unk8 func_ov00_020847f0();
    bool func_ov00_02084838();
    bool func_ov00_020848b8();
    void func_ov00_02084924(u32 param_2);
    static unk8 func_ov00_02084934();
    unk8 GetMapData_Unk_06();
    unk8 GetMapData_Unk_07();
    unk8 func_ov00_0208499c();
    unk8 func_ov00_020849c0();
    unk8 func_ov00_020849dc();
    static bool func_ov00_020849f8(unk32 param_1);
    unk8 func_ov00_02084a50();
    void SpawnNPC(Vec3p *param_2, unk32 param_3, unk32 param_4);
    bool func_ov00_02084ac4(u32 actorId);
    unk8 SetNumKeys(unk32 keys);
    unk8 GetNumKeys();
    unk8 SetCourseData_Unk_25c(unk8 param_2);
    unk8 GetCourseData_Unk_25d();
    unk8 func_ov00_02084b38(unk32 param_2, unk32 param_3, unk32 param_4);
    bool func_ov00_02084be0(unk32 param_2, unk32 param_3);
    void func_ov00_02084c5c(unk32 param_2, unk32 param_3);
    bool func_ov00_02084c6c(unk32 param_2);
    unk8 func_ov00_02084c7c(unk32 param_2);
    unk8 func_ov00_02084c94(unk32 param_2);
    unk8 func_ov00_02084cb0(unk32 param_2);
    unk8 func_ov00_02084cc8(unk32 param_2);
    unk8 func_ov00_02084ce4(unk32 param_2);
    unk8 func_ov00_02084cfc(unk32 param_2);
    unk8 GetMapData_Unk_09();
    unk8 func_ov00_02084d24(unk8 param_2, unk8 param_3, unk32 param_4);
    s32 func_ov00_02084d4c(unk32 param_2, unk32 param_3, Vec3p *param_4);
    unk8 func_ov00_02084ebc(unk32 param_2);
    s32 func_ov00_02085108(s32 *param_2);
    static unk8 func_ov00_0208527c();
    static unk8 func_ov00_020853fc();
    static unk8 func_ov00_02085594();
    static void func_ov00_0208583c(unk32 param_1, Vec3p *param_2, unk32 param_3);
    static unk8 func_ov00_020858b0(MapManager *param_1, Vec3p *param_2, s32 param_3);
    s32 func_ov00_02085a34(unk32 param_2, unk32 param_3);
    unk8 func_ov00_02085c60(unk32 param_2, unk32 param_3, unk32 param_4, unk32 param_5);
    unk8 func_ov00_02086044(unk32 param_2, unk32 param_3, unk32 param_4);
    bool func_ov00_02086284(s32 *param_2, Vec3p *param_3, Vec3p *param_4, s32 param_5, u16 param_6, Vec3p *param_7,
                            Vec3p *param_8);
    bool func_ov00_02086a84(s32 *param_2, Vec3p *param_3, Vec3p *param_4, s32 param_5, s32 param_6, unk32 param_7,
                            Vec3p *param_8, Vec3p *param_9);

    MapManager();
    ~MapManager();
    static void Create();
    static void Destroy();
    static void LoadMapTexSprites(s32 param1);
    void func_ov004_02102260();
    void func_ov004_02102264(unk32 *param1, char *param2);
    void func_ov004_021024c4(s32 param1, unk32 param2, unk32 param3);
    void func_ov004_021025d8();
};

extern MapManager *gMapManager;
