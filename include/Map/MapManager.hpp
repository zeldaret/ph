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
    /* 09 */ u8 mUnk_09;
    /* 0a */ bool mUnk_0a;
    /* 0b */ bool mUnk_0b;
    /* 0c */ u8 mUnk_0c;
    /* 0d */ unk8 mUnk_0d;
    /* 0e */ unk8 mUnk_0e;
    /* 0f */ unk8 mUnk_0f;
    /* 10 */

    bool func_01ffbe78(Vec3p *param1, Vec3p *param2, Vec3p *param3, Vec4p *param4);
    bool func_01ffbf5c(s32 param1, Vec3p *param2, Vec3p *param3, s32 length);
    bool func_01ffc118(s32 *param1, Vec3p *param2, Vec3p *param3, s32 param4, s32 *param5, u32 param6, s32 *param7);
    bool func_01ffd1e0(s32 *param1, Vec3p *param2, Vec3p *param3, s32 param4, s32 *param5, u32 param6, s32 *param7);

    void GetCourseDungeonProgress(CourseProgress *param_2);
    void func_ov00_020820fc(s32 param_2, unk32 param_3, unk32 param_4);
    void func_ov00_0208210c(unk32 param_2, unk32 *param_3);
    void func_ov00_0208230c(s32 *param_2);
    void func_ov00_02082348(unk32 *param_2);
    void func_ov00_020823a4(unk32 param_2);
    void func_ov00_020823b4();
    bool func_ov00_020823c4(unk32 *param_2, s32 param_3);
    s32 func_ov00_020823d4(s32 param_2);
    s32 func_ov00_020823e4(s32 param_2);
    void MapData_vfunc_b4();
    void MapData_vfunc_9c();
    s32 func_ov00_02082424();
    bool func_ov00_02082454(Vec3p *param_2, Vec3p *param_3);
    bool func_ov00_02082494(s32 param_2);
    bool func_ov00_020824cc(s32 param_2);
    s32 func_ov00_02082504();
    Vec3p *func_ov00_02082538();
    void func_ov00_02082594();
    void func_ov00_020825ac();
    s32 GetCourseFilePath(char *courseName, char *buf);
    void func_ov00_020825e4(unk32 param_2, char *buf);
    void func_ov00_02082614(char *param_2, unk32 param_3);
    void MapData_vfunc_b0(unk32 param_2, unk32 param_3);
    void func_ov00_02082650(s32 param_2, s32 param_3, unk32 param_4);
    void func_ov00_02082660(s32 param_2, s32 param_3);
    void func_ov00_02082670(unk32 param_2, s32 param_3);
    void func_ov00_02082680(unk32 param_2, unk32 param_3);
    void func_ov00_020826a0(unk32 param_2, unk32 param_3);
    void CreateMap(unk32 mapType, unk32 param_3, unk32 param_4);
    void DestroyMap();
    void MapData_vfunc_44();
    void func_ov00_02082808(bool param_2);
    s32 MapData_vfunc_7c(s32 param_1, unk32 *param_2, s32 param_3, short param_4[4]);
    void MapData_vfunc_84(unk32 param_2);
    bool func_ov00_020828f8(s32 *param_2);
    u8 GetNumMaps();
    s32 func_ov00_02082914(unk32 param_2);
    void func_ov00_02082acc();
    unk32 *func_ov00_02082adc();
    void func_ov00_02082af4();
    bool func_ov00_02082b3c(unk32 *param_2);
    u8 func_ov00_02082d08();
    u8 GetCurrentMapPosX();
    u8 GetCurrentMapPosY();
    u8 func_ov00_02082d40();
    u32 func_ov00_02082d74(unk32 param_2);
    void func_ov00_02082d84(Vec2b *param_2, s32 *param_3, s32 *param_4);
    bool func_ov00_02082e1c(s32 *param_2, s32 *param_3);
    void func_ov00_0208306c(s32 *param_2, s32 *param_3);
    void func_ov00_0208315c(s32 *param_2, s32 *param_3);
    void func_ov00_02083244(u32 param_2, Vec3p *param_3, s32 *param_4, s32 *param_5);
    void func_ov00_02083298(u32 param_2, Vec3p *param_3, s32 *param_4, s32 *param_5);
    bool GetCourseData_Unk_25c();
    bool IsMapInMainGrid(u32 map);
    bool func_ov00_02083328();
    u8 GetCourseMainGridSizeX();
    u8 GetCourseMainGridSizeY();
    u16 GetMapWidth();
    u16 GetMapHeight();
    s32 func_ov00_02083374();
    s32 func_ov00_02083384();
    q20 GetCourseMinX();
    q20 GetCourseMinZ();
    q20 GetCourseMaxX();
    q20 GetCourseMaxZ();
    q20 GetMapMinX();
    q20 GetMapMinZ();
    q20 GetMapMaxX();
    q20 GetMapMaxZ();
    q20 GetMapCenterX();
    q20 GetMapCenterZ();
    void GetMapMinBounds(Vec3p *param_2);
    void GetMapMaxBounds(Vec3p *param_2);
    void GetMapCenter(Vec3p *param_2);
    void func_ov00_0208346c(AABB *param_2);
    void func_ov00_020834bc(Vec3p *param_2, unk32 param_3, unk32 param_4);
    void func_ov00_02083524(Vec3p *param_2, unk32 param_3, unk32 param_4);
    static void func_ov00_02083560(Vec2b *param_1, MapManager *param_2, u32 param_3);
    u8 func_ov00_02083570(u8 param_2, u8 param_3);
    unk32 func_ov00_02083588();
    unk32 func_ov00_020835a4();
    unk32 func_ov00_020835b4();
    bool func_ov00_020835c4(s32 param_2, unk32 param_3);
    bool func_ov00_020835e4(s32 param_2, unk32 *param_3, unk8 *param_4);
    unk32 func_ov00_020835f4(s32 param_2);
    void func_ov00_02083604(s32 param_2);
    unk8 func_ov00_02083614(s32 param_2);
    bool GetEntrancePos(Entrance *param_2, unk32 entranceId);
    bool func_ov00_02083664(Entrance *param_2, unk32 entranceId);
    s32 GetTriggerBoundingBox(s32 param_2, AABB *param_3);
    s32 GetTriggerBoundingBoxes(s32 param_2, AABB *param_3, s32 param_4);
    bool func_ov00_020836dc(u32 param_2, u32 actorId);
    bool IsTriggerTypeOverlapped(u32 param_2, Vec3p *param_3);
    bool GetOverlappingTrigger(Vec3p *param_2);
    bool func_ov00_02083790(s32 param_2);
    bool func_ov00_02083840(s32 param_2);
    bool AddTrigger(s32 param_2);
    bool func_ov00_020838d8(s32 param_2);
    bool FindExit(u32 param_2, Exit *param_3);
    char func_ov00_020838f8(Exit *param_2);
    bool func_ov00_02083908(char param_2, CameraViewpoint *param_3);
    void func_ov00_02083918(s32 param_2, CameraViewpoint *param_3);
    void GetCurrentViewpoint(CameraViewpoint *param_2, s32 param_3);
    unk32 func_ov00_02083938(s32 param_2);
    void SetCurrentViewpointId(unk8 value, s32 index);
    void func_ov00_02083958(s32 param_2);
    void func_ov00_02083968(u32 param_2, unk8 *param_3);
    bool func_ov00_02083978(Vec3p *param_2, Vec3p *param_3);
    bool func_ov00_020839b4(s32 param_2);
    bool func_ov00_020839c4(s32 param_2);
    s32 func_ov00_020839d4(s32 param_2);
    s32 func_ov00_020839f8(s32 param_2);
    static void func_ov00_02083a1c(Vec2b *param_1, MapManager *param_2, Vec3p *param_3);
    static void func_ov00_02083a54(u8 *param_1, MapManager *param_2, s32 *param_3, s32 param_4, s32 *param_5);
    s32 GetTileStartX(unk32 x);
    s32 GetTileStartZ(unk32 z);
    s32 GetTileEndX(unk32 x);
    s32 GetTileEndZ(unk32 z);
    s32 func_ov00_02083c24(unk32 x);
    s32 func_ov00_02083c50(unk32 z);
    void func_ov00_02083c7c(Vec3p *param_2, Vec2b *param_3);
    static void func_ov00_02083ce8(MapManager *param_1, s32 *param_2, u32 param_3, s32 param_4, u32 param_5);
    s32 func_ov00_02083e34(unk8 param_2, unk8 param_3, unk32 param_4);
    unk32 MapData_vfunc_60(Vec2b *param_1);
    bool func_ov00_02083e70(Vec2b *param_2);
    unk32 MapData_vfunc_68(Vec3p *param_1, bool param_2);
    s32 func_ov00_02083ef8(Vec3p *param_2, Vec3p *param_3, bool param_4);
    unk32 func_ov00_02083f44(Vec3p *param_2, bool param_3);
    unk8 MapData_vfunc_6c(unk32 param_2, unk32 param_3, unk32 param_4);
    unk32 MapData_vfunc_70(Vec3p *param_2);
    static void func_ov00_02083fb0(u32 *param_1, MapManager *param_2, Vec3p *param_3);
    void GetTileWorldBounds(Vec2b *tile, AABB *tileBounds);
    unk32 MapData_vfunc_54(Vec2b *a);
    unk32 func_ov00_020840a0(unk8 param_2, unk8 param_3, unk16 param_4);
    unk32 *MapData_vfunc_78(Vec2b *param_1);
    unk32 func_ov00_020840dc(Vec2b *param_1);
    static unk8 func_ov00_02084100(unk32 *param_1, MapManager *param_2);
    u32 GetMapData_Unk_48();
    unk32 GetMapData_Unk_4c();
    unk32 func_ov00_0208412c();
    void func_ov00_0208413c(unk32 param_2);
    unk8 MapData_vfunc_58(Vec2b *param_1, int param_2);
    s32 func_ov00_02084164(Vec2b *param_2);
    u8 GetMapData_Unk_0a();
    u8 GetMapData_Unk_0b();
    unk8 MapData_vfunc_a4(unk8 *param_1);
    void func_ov00_0208433c(Vec3p *param_2, Vec2s *param_3);
    unk8 func_ov00_0208439c(Vec2s *param_2, Vec3p *param_3);
    void func_ov00_020843ec(s32 *param_2);
    unk32 GetMapData_Unk_38();
    s32 func_ov00_020846a4();
    static s32 func_ov00_02084700(MapManager *pMapManager);
    unk32 func_ov00_02084740();
    unk32 func_ov00_020847e0();
    unk8 func_ov00_020847f0();
    bool func_ov00_02084838();
    bool func_ov00_020848b8();
    void func_ov00_02084924(u32 param_2);
    bool func_ov00_02084934(Vec3p *param_2);
    u8 GetMapData_Unk_06();
    u8 GetMapData_Unk_07();
    bool func_ov00_0208499c();
    bool func_ov00_020849c0();
    bool func_ov00_020849dc();
    bool func_ov00_020849f8();
    u8 func_ov00_02084a50();
    void SpawnNPC(Vec3p *param_2, unk32 param_3, unk32 param_4);
    bool func_ov00_02084ac4(u32 actorId);
    void SetNumKeys(unk32 keys);
    unk32 GetNumKeys();
    void SetBlueWarpOpen(bool state);
    bool GetBlueWarpOpen();
    unk8 func_ov00_02084b38(unk32 param_2, unk32 param_3, bool param_4);
    bool func_ov00_02084be0(u32 param_2, unk32 param_3);
    void SetMapDataFlag1(unk32 param_2, bool param_3);
    bool GetMapDataFlag1(unk32 param_2);
    void func_ov00_02084c7c(unk32 param_2, bool param_3);
    bool func_ov00_02084c94(unk32 param_2);
    void func_ov00_02084cb0(unk32 param_2, bool param_3);
    bool func_ov00_02084cc8(unk32 param_2);
    void func_ov00_02084ce4(unk32 param_2, bool param_3);
    bool func_ov00_02084cfc(unk32 param_2);
    u8 GetMapData_Unk_09();
    void func_ov00_02084d24(unk8 param_2, unk8 param_3, unk16 param_4);
    s32 func_ov00_02084d4c(unk32 param_2, unk32 param_3, Vec3p *param_4);
    unk32 func_ov00_02084ebc(Vec3p *param_2);
    s32 func_ov00_02085108(s32 *param_2);
    static s32 func_ov00_0208527c(MapManager *param_1, unk32 param_2, unk32 *param_3);
    static s32 func_ov00_020853fc(MapManager *param_1, Vec3p *param_2, s32 *param_3);
    static unk32 func_ov00_02085594(MapManager *param_1, Vec3p *param_2, unk32 param_3, unk32 param_4);
    static void func_ov00_0208583c(MapManager *param_1, Vec3p *param_2, unk32 param_3);
    static unk8 func_ov00_020858b0(MapManager *param_1, Vec3p *param_2, s32 param_3);
    s32 func_ov00_02085a34(Vec3p *param_2, unk32 param_3);
    unk8 func_ov00_02085c60(Vec3p *param_2, unk32 *param_3, unk32 *param_4, u32 param_5);
    unk8 func_ov00_02086044(Vec3p *param_2, Vec3p *param_3, unk32 param_4);
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
    void func_ov004_021024c4(unk32 *param1, unk32 param2, bool param3);
    void func_ov004_021025d8();
};

extern MapManager *gMapManager;
