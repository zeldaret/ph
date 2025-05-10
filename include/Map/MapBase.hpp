#pragma once

#include <vector>

#include "global.h"
#include "types.h"

#include "nds/math.h"

#include "Map/CameraViewpoint.hpp"
#include "Map/Course.hpp"
#include "Map/Entrance.hpp"
#include "Map/Exit.hpp"
#include "Map/TriggerBase.hpp"
#include "System/SysNew.hpp"

#define MAX_ENTRANCES 0x40
#define MAX_TRIGGERS 0x40
#define MAX_EXITS 0x40
#define MAX_VIEWPOINTS 8
#define MAX_MAP_UNK_130 0x20

struct MapBase_Unk_180 {
    /* 0 */ unk32 mUnk_0;
    /* 4 */

    ~MapBase_Unk_180();
    MapBase_Unk_180();
};

struct MapBase_Unk1 {
    /* 00 */ s32 mUnk_00;
    /* 04 */ Exit mExit_04;
    /* 1c */ Exit mExit_1c;
    /* 34 */

    void func_ov00_02080324(s32 param_2, s32 param_3, s32 param_4);
};

struct MapBase_Unk2 {
    /* 00 */ TriggerBase **mTrigger;
    /* 04 */ Vec3p mVec;
    /* 10 */

    void func_ov00_02080ad0(TriggerBase **param_2, TriggerBase **param_3);
};

class MapBase : public SysObject {
public:
    /* 000 (vtable) */
    /* 004 */ unk8 mUnk_004;
    /* 005 */ unk8 mUnk_005;
    /* 006 */ unk8 mUnk_006;
    /* 007 */ unk8 mUnk_007;
    /* 008 */ unk8 mUnk_008;
    /* 009 */ unk8 mUnk_009;
    /* 00a */ unk8 mUnk_00a;
    /* 00b */ unk8 mUnk_00b;
    /* 00c */ unk8 mUnk_00c;
    /* 00d */ unk8 mUnk_00d;
    /* 00e */ unk8 mUnk_00e;
    /* 00f */ unk8 mUnk_00f;
    /* 010 */ unk8 mUnk_010;
    /* 011 */ unk8 mUnk_011;
    /* 012 */ unk8 mUnk_012;
    /* 013 */ unk8 mUnk_013;
    /* 014 */ unk8 mUnk_014;
    /* 015 */ unk8 mUnk_015;
    /* 016 */ unk8 mCurrViewpointId[2];
    /* 018 */ unk8 mUnk_018[2];
    /* 01a */ unk8 mUnk_01a;
    /* 01b */ unk8 mUnk_01b;
    /* 01c */ unk8 mUnk_01c;
    /* 01d */ unk8 mUnk_01d;
    /* 01e */ unk8 mUnk_01e;
    /* 01f */ unk8 mUnk_01f;
    /* 020 */ unk32 mUnk_020;
    /* 024 */ unk32 mUnk_024;
    /* 028 */ s16 mWidth;
    /* 02a */ s16 mHeight;
    /* 02c */ unk16 mUnk_02c;
    /* 02e */ unk16 mUnk_02e;
    /* 030 */ s16 mUnk_030;
    /* 032 */ unk8 mUnk_032[2];
    /* 034 */ unk32 mUnk_034;
    /* 038 */ unk32 mUnk_038;
    /* 03c */ unk32 mUnk_03c;
    /* 040 */ unk32 mUnk_040;
    /* 044 */ unk32 mUnk_044;
    /* 048 */ u32 mUnk_048;
    /* 04c */ unk32 mUnk_04c;
    /* 050 */ unk8 mUnk_050[0x80];
    /* 0d0 */ Vec3p mCenter;
    /* 0dc */ AABB mBounds;
    /* 0f4 */ Vec3p mUnk_0f4;
    /* 100 */ std::vector<Entrance> mEntrances;
    /* 10c */ std::vector<TriggerBase *> mTriggers;
    /* 118 */ std::vector<Exit> mExits;
    /* 124 */ std::vector<CameraViewpoint> mViewpoints;
    /* 130 */ std::vector<TriggerBase *> mUnk_130;
    /* 13c */ unk32 mUnk_13c;
    /* 140 */ unk32 mUnk_140;
    /* 144 */ void *mUnk_144;
    /* 148 */ s32 mUnk_148;
    /* 14c */ s32 mUnk_14c;
    /* 150 */ unk32 mUnk_150;
    /* 154 */ unk32 mUnk_154;
    /* 158 */ unk8 mUnk_158[8];
    /* 160 */ unk32 mUnk_160;
    /* 164 */ unk8 mUnk_164[0x1c];
    /* 180 */ MapBase_Unk_180 mUnk_180[2];
    /* 188 */ unk8 mUnk_188[0x14];
    /* 19c */ unk32 mUnk_19c;
    /* 1a0 */ Vec3p mUnk_1a0;
    /* 1ac */ s16 mUnk_1ac;
    /* 1b0 */

    /* 00 */ virtual ~MapBase();
    /* 08 */ virtual void vfunc_08(u32 param_2, u32 param_3, Course *param_4);
    /* 0c */ virtual void vfunc_0c(Course *param_2);
    /* 10 */ virtual void vfunc_10();
    /* 14 */ virtual void vfunc_14();
    /* 18 */ virtual void vfunc_18();
    /* 1c */ virtual void vfunc_1c(bool param_2);
    /* 20 */ virtual void vfunc_20(s32 param_2);
    /* 24 */ virtual void vfunc_24();
    /* 28 */ virtual void vfunc_28(s32 param_2);
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30(s32 param_2);
    /* 34 */ virtual bool vfunc_34(char *param_2);
    /* 38 */ virtual void vfunc_38();
    /* 3c */ virtual void vfunc_3c();
    /* 40 */ virtual void vfunc_40();
    /* 44 */ virtual void vfunc_44();
    /* 48 */ virtual void vfunc_48();
    /* 4c */ virtual s32 vfunc_4c();
    /* 50 */ virtual unk32 vfunc_50();
    /* 54 */ virtual unk32 vfunc_54(Vec2b *param_1);
    /* 58 */ virtual unk32 vfunc_58(Vec2b *param_1, int param_2);
    /* 5c */ virtual unk32 vfunc_5c();
    /* 60 */ virtual unk32 vfunc_60(Vec2b *param_1);
    /* 64 */ virtual unk32 vfunc_64();
    /* 68 */ virtual unk32 vfunc_68(Vec3p *param_1, bool param_2);
    /* 6c */ virtual unk8 vfunc_6c(unk32 param_2, unk32 param_3, unk32 param_4);
    /* 70 */ virtual unk32 vfunc_70(Vec3p *param_2);
    /* 74 */ virtual s32 *vfunc_74(Vec3p *param_2);
    /* 78 */ virtual unk32 *vfunc_78(Vec2b *param_1);
    /* 7c */ virtual s32 vfunc_7c(s32 param_1, unk32 *param_2, s32 param_3, short param_4[4]);
    /* 80 */ virtual unk32 vfunc_80();
    /* 84 */ virtual void vfunc_84(unk32 param_2);
    /* 88 */ virtual unk32 vfunc_88();
    /* 8c */ virtual unk32 vfunc_8c();
    /* 90 */ virtual unk8 vfunc_90(Vec2b *param_2, unk32 param_3);
    /* 94 */ virtual void vfunc_94();
    /* 98 */ virtual void vfunc_98(unk32 param_2, unk32 param_3, unk32 param_4);
    /* 9c */ virtual void vfunc_9c();
    /* a0 */ virtual void vfunc_a0();
    /* a4 */ virtual unk32 vfunc_a4(unk8 *param_1);
    /* a8 */ virtual void vfunc_a8();
    /* ac */ virtual void vfunc_ac();
    /* b0 */ virtual void vfunc_b0(unk32 param_2, unk32 param_3);
    /* b4 */ virtual void vfunc_b4();
    /* b8 */ virtual unk32 vfunc_b8();
    /* bc */ virtual void vfunc_bc();
    /* c0 */ virtual void vfunc_c0();
    /* c4 */

    void SetBounds(unk32 map, unk32 course);
    void GetMapFilePath(char *courseName, unk32 num1, unk32 buf);
    void func_ov00_0207ddf8(bool param_2);
    void func_ov00_0207de68(unk32 param_2);
    void func_ov00_0207de88();
    void func_ov00_0207dea0(bool param_2);
    bool func_ov00_0207e08c(s32 *param_2, s32 param_3);
    s32 func_ov00_0207e0f0(s32 param_2);
    s32 func_ov00_0207e28c(s32 param_2);
    static unk8 func_ov00_0207e940(unk8 *param_1);
    static unk8 func_ov00_0207e968();
    static unk8 func_ov00_0207e96c();
    static unk8 func_ov00_0207f100();
    bool func_ov00_0207f104(unk32 param_2, unk32 param_3);
    unk32 func_ov00_0207f1f4(Vec3p *param_2, unk32 *param_3);
    bool func_ov00_0207f38c(s32 *param_2);
    void func_ov00_0207f4a4(Vec2s *param_2, unk32 param_3);
    static void func_ov00_0207f53c(Vec2s *param_1, MapBase *param_2, Vec3p *param_3);
    static void func_ov00_0207f588(Vec2s *param_1, MapBase *param_2, Vec2b *param_3, unk32 param_4);
    void func_ov00_0207f630(Vec2s *param_2, Vec3p *param_3);
    unk8 GetTileStartX(unk32 x);
    unk8 GetTileStartZ(unk32 z);
    s32 GetTileEndX(unk32 x);
    s32 GetTileEndZ(unk32 z);
    void GetTileBounds(Vec2b *tilePos, AABB *bounds);
    s32 GetClampedTileX(s32 worldX);
    s32 GetClampedTileY(s32 worldZ);
    unk8 GetTileX(s32 worldX);
    unk8 GetTileY(s32 worldZ);
    bool IsInBounds(Vec3p *tileWorldPos);
    s32 AddEntrance(Entrance *param_2);
    Entrance *FindEntrance(unk32 id);
    void func_ov00_0207f924(s32 param_2);
    unk8 func_ov00_0207f934();
    unk8 func_ov00_0207f948(unk32 param_2);
    void AddTrigger(TriggerParams *param_2);
    s32 GetTriggerBoundingBox(s32 param_2, AABB *param_3);
    s32 GetTriggerBoundingBoxes(s32 param_2, AABB *param_3, s32 param_4);
    bool GetOverlappingTrigger(Vec3p *param_2);
    unk8 FindTrigger(unk32 type);
    unk8 GetOverlappingTriggers(Vec3p *param_2, TriggerBase **triggers, unk32 capacity);
    bool IsTriggerTypeOverlapped(unk32 type, Vec3p *param_3);
    bool AnyTrigger_func_0c(unk32 type);
    unk8 Trigger_vfunc_08();
    bool AddTrigger(unk32 param_2);
    bool func_ov00_0207ff88(s32 param_2);
    void func_ov00_0208005c(s32 param_2, s32 param_3, unk32 param_4);
    void func_ov00_0208006c(unk32 param_2, s32 param_3);
    void func_ov00_0208007c(s32 param_2, s32 param_3);
    void func_ov00_0208008c(u32 param_2);
    unk8 AddExit(Exit *param_2);
    char func_ov00_02080140(Exit *param_2);
    bool FindExit(u32 param_2, Exit *param_3);
    unk8 AddCameraViewpoint(CameraViewpoint *param_2);
    bool FindViewpoint_Unk_4(unk8 id, CameraViewpoint *param_3);
    bool FindViewpoint_Unk_0(s32 param_2, CameraViewpoint *param_3);
    void GetCurrentViewpoint(CameraViewpoint *param_2, s32 param_3);
    unk32 GetCurrentViewpoint_Unk_00(s32 param_2);
    bool func_ov00_02080824(u32 param_2, unk8 *param_3);
    bool AddUnk_130(s32 param_2);
    bool func_ov00_020809b8(s32 param_2);
    unk8 func_ov00_02080a78(Vec3p *param_2);
    unk8 func_ov00_02080b24(Vec2b *param_2);
    void func_ov00_02080d08(unk32 param_2);
    bool TriggerOfType_vfunc_10(unk32 type);
    void func_ov00_02080de4();
    unk8 func_ov00_02080de8(unk32 param_2);
    void func_ov00_02080edc();

    MapBase(u32 param1, u32 param2);
    void func_ov004_0210c118();
    void func_ov004_0210cb1c();
    void func_ov004_0210cb38();
    void func_ov004_0210cc20(Course *course);
    void func_ov004_0210cc58(Course *course, u32 map);
};
