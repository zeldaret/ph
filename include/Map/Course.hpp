#pragma once

#include "global.h"
#include "types.h"

#include "Map/Course_Unk_c8.hpp"
#include "Map/MapData.hpp"
#include "Physics/AABB.hpp"
#include "System/SysNew.hpp"

#define MAX_KEYS 8

typedef unk32 CourseType;
enum CourseType_ {
    CourseType_Normal               = 0,
    CourseType_Dungeon              = 1,
    CourseType_Sea                  = 2,
    CourseType_TempleOfTheOceanKing = 3,
    CourseType_Battle               = 4,
};

struct CourseProgress {
    /* 0 */ unk32 flags;
    /* 4 */ s8 numKeys;
    /* 5 */ bool blueWarpOpen;
    /* 6 */
};

class Course : public SysObject {
public:
    /* 000 */ s32 mIndex;
    /* 004 */ CourseType mType;
    /* 008 */ unk32 mUnk_008;
    /* 00c */ char mName[0x10];
    /* 01c */ Vec2b mCurrMapPos; // position in the map grid
    /* 01e */ unk8 mUnk_01e;
    /* 01f */ unk8 mUnk_01f;
    /* 020 */ u8 mMapGrid[10][10];
    /* 084 */ Vec2b mMainGrid; // part of the grid where you can walk off screen to another map
    /* 086 */ Vec2b mMainGridSize;
    /* 088 */ s32 mScreenMapOffsetX;
    /* 08c */ s32 mScreenMapOffsetY;
    /* 090 */ unk32 mUnk_090;
    /* 094 */ unk32 mUnk_094;
    /* 098 */ AABB mBounds;
    /* 0b0 */ u8 mNumMaps;
    /* 0b1 */ u8 mUnk_0b1;
    /* 0b2 */ unk8 mUnk_0b2;
    /* 0b3 */ unk8 mUnk_0b3;
    /* 0b4 */ unk32 mUnk_0b4;
    /* 0b8 */ unk32 mUnk_0b8;
    /* 0bc */ unk32 mUnk_0bc;
    /* 0c0 */ unk32 mUnk_0c0;
    /* 0c4 */ unk32 mUnk_0c4;
    /* 0c8 */ Course_Unk_c8 *mUnk_0c8;
    /* 0cc */ MapData *mMapData[100];
    /* 25c */ bool mUnk_25c;
    /* 25d */ bool mBlueWarpOpen;
    /* 25e */ unk8 mUnk_25e;
    /* 25f */ unk8 mUnk_25f;
    /* 260 */ unk32 mNumKeys;
    /* 264 */ unk32 mFlags0[1];
    /* 268 */ unk32 mFlags1[1]; // knows which doors are open in a dungeon
    /* 26c */

    void GetDungeonProgress(CourseProgress *param_2);
    void func_ov00_0207ca28(s32 param_2, unk32 param_3, unk32 param_4);
    char *SetCourseName(char *src);
    void func_ov00_0207ca78(unk32 param_2, unk8 param_3, unk32 param_4);
    bool func_ov00_0207caa8(s32 param_2, unk32 *param_3, unk8 *param_4);
    unk32 func_ov00_0207cb30(s32 param_2);
    static void FindMapGridPos(Vec2b *pos, Course *param_2, u32 map);
    Vec3p *FindMapCenter(unk32 map);
    void func_ov00_0207cbe8(s32 param_2);
    unk8 func_ov00_0207cc24(s32 param_2);
    unk32 FindMapData_Unk_08(unk32 map);
    void GetMCSFilePath(unk32 buf, s32 fileIndex, unk32 fileType);
    void GetMRCFilePath(unk32 param_2, unk32 buf, unk32 param_4);
    void func_ov00_0207ce20(unk32 param_2, unk32 param_3, char *param_4, unk32 param_5);
    void func_ov00_0207ce4c(s32 param_2, s32 param_3, unk32 param_4, char *param_5, unk32 param_6);
    bool func_ov00_0207d404(s32 param_2, unk32 param_3, unk32 param_4, unk32 param_5);
    bool IsCurrentMapInMainGrid();
    bool IsInMainGrid(s32 x, s32 y);
    bool IsMapInMainGrid(u32 map);
    bool GetMapScreenPos(s32 map, s32 *x, s32 *y);
    u32 GetScreenMapCellSizeX();
    u32 GetScreenMapCellSizeY();
    unk32 Get_Unk_c8_00();
    unk32 Get_Unk_c8_04();
    bool IsAdjacentMapOnMainGrid(unk32 dir);
    bool HasGridMap(s32 x, s32 y);
    unk8 GetAdjacentMap(unk32 dir);
    u32 GetAdjacentMapX(s32 ir);
    u32 GetAdjacentMapY(s32 dir);
    u16 FindCurrentMapData_Unk_04();
    u32 FindMapData_Unk_04(unk32 param_2);
    unk32 FindMapData_Unk_0c(unk32 map);
    void func_ov00_0207d7bc();
    void SetFlag0(u32 index, bool value);
    bool GetFlag0(u32 index);
    void SetFlag1(u32 index, bool value);
    bool SetFlag1(u32 index);
    void SetMapDataFlag0(unk32 index, bool value);
    bool GetMapDataFlag0(unk32 param_2);
    void SetMapDataFlag1(unk32 param_2, bool param_3);
    bool GetMapDataFlag1(unk32 param_2);
    void SetMapDataFlag2(unk32 param_2, bool param_3);
    bool GetMapDataFlag2(unk32 param_2);
    void SetMapDataFlag3(unk32 param_2, bool param_3);
    bool GetMapDataFlag3(unk32 param_2);
    void SetMapDataFlag4(unk32 param_2, bool param_3);
    bool GetMapDataFlag4(unk32 param_2);
    MapData *FindMapData(u32 map);
    MapData *FindCurrentMapData();

    Course();
    ~Course();
    bool func_ov004_0210ee84(char *param1);
    unk32 func_ov004_0210ef90(unk32 param1);
    void func_ov004_0210f010();
    void LoadMapData(u8 *map, s32 x, s32 y, char param4, unk32 param5);
    bool func_ov004_0210f0fc(unk32 param1, unk16 *param2, s32 param3);
    void func_ov004_0210f140(s32 param1);
};
