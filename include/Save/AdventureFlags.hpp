#pragma once

#include "global.h"
#include "types.h"

#include "Cutscene/CutsceneHandler.hpp"
#include "Render/FadeControl.hpp"
#include "System/SysNew.hpp"

typedef u32 AdventureFlag;
enum AdventureFlag_ {
    /* 0x09 */ AdventureFlag_SWSeaChart = 9,
    /* 0x0a */ AdventureFlag_NWSeaChart = 10,
    /* 0x0b */ AdventureFlag_SESeaChart = 11,
    /* 0x0c */ AdventureFlag_NESeaChart = 12,

    /* 0x13 */ AdventureFlag_Hourglass = 19,

    /* 0x16 */ AdventureFlag_SunKey = 22,
    /* 0x17 */ AdventureFlag_Unk_23 = 23,

    /* 0x2b */ AdventureFlag_FishingRod = 43,

    /* 0x30 */ AdventureFlag_Cannon = 48,

    /* 0x33 */ AdventureFlag_RegalNecklace = 51,

    /* 0x7a */ AdventureFlag_CourageCrest = 122,

    /* 0x7d */ AdventureFlag_Azurine    = 125,
    /* 0x7e */ AdventureFlag_Crimsonine = 126,
    /* 0x7f */ AdventureFlag_Aquanine   = 127,
    /* 0x80 */ AdventureFlag_Unk_128    = 128,

    /* 0x8c */ AdventureFlag_SalvageArm = 140,

    /* 0xa2 */ AdvantureFlag_HerosNewClothes = 162,
    /* 0xa3 */ AdvantureFlag_Kaleidoscope    = 163,
    /* 0xa4 */ AdventureFlag_GuardNotebook   = 164,

    /* 0xa7 */ AdventureFlag_WoodHeart = 167,

    /* 0xb6 */ AdventureFlag_SpawnFinalPhantoms = 182,

    /* 0x126 */ AdventureFlag_ReceivedGoldenChimney  = 294,
    /* 0x127 */ AdventureFlag_ReceivedGoldenHandrail = 295,
    /* 0x128 */ AdventureFlag_ReceivedGoldenCannon   = 296,
    /* 0x129 */ AdventureFlag_ReceivedGoldenHull     = 297,

    /* 0x137 */ AdventureFlag_FrogGlyph_MercayIsland = 311,
    /* 0x138 */ AdventureFlag_FrogGlyph_MolidaIsland = 312,
    /* 0x139 */ AdventureFlag_FrogGlyph_BannanIsland = 313,
    /* 0x13a */ AdventureFlag_FrogGlyph_DeeEssIsland = 314,
    /* 0x13b */ AdventureFlag_FrogGlyph_IsleOfFrost  = 315,
    /* 0x13c */ AdventureFlag_FrogGlyph_NorthEast    = 316,

    /* 0x187 */ AdventureFlag_COUNT = 391,
};

struct UnkStruct_027e0d38_UnkC {
    /* 00 */ unk32 mUnk_00;

    s32 func_ov000_020a5e9c(void);
};

class UnkStruct_02082348_04 {
public:
    /* 00 */ unk32 mUnk_00;
    /* 00 */ unk32 mUnk_04;
    /* 00 */ unk32 mUnk_08;
    /* 0c */ unk16 mUnk_0c;
    /* 0e */ u8 mUnk_0e;
    /* 0f */ u8 mUnk_0f;
    /* 10 */ u8 mUnk_10;
    /* 11 */ u8 mUnk_11;
    /* 12 */ u8 mUnk_12;
    /* 13 */ u8 mUnk_13;
    /* 14 */
};

struct FlagsUnk2 {
    /* 00 */ UnkStruct_027e0d38_UnkC mUnk_00;
    /* 04 */ UnkStruct_02082348_04 mUnk_04;
    /* 18 */

    ~FlagsUnk2();
    void func_ov000_02078bf0(FlagsUnk2 *param_2);
    void func_ov004_02100ae0();
};

struct FlagsUnk {
    /* 00 */ FlagsUnk2 mUnk_00;
    /* 18 */ FlagsUnk2 mUnk_18;
    /* 30 */ unk32 mUnk_30;
    /* 34 */ unk32 mUnk_34;
    /* 38 */ unk32 mUnk_38;
    /* 3c */ unk16 mUnk_3c;
    /* 3e */ unk16 mUnk_3e;
    /* 40 */ unk16 mUnk_40;
    /* 42 */ unk16 mUnk_42;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ unk8 mUnk_48;
    /* 49 */ unk8 mUnk_49;
    /* 4a */ unk8 mUnk_4a;
    /* 4b */ unk8 mUnk_4b;
    /* 4c */

    ~FlagsUnk();

    void func_ov000_020980f8();
};

class AdventureFlags : public SysObject {
public:
    /* 00 */ unk32 mFlags[16];
    /* 40 */ CutsceneHandler *mCutsceneHandler;
    /* 44 */ void *mUnk_44;
    /* 48 */

    static bool Exists();
    void CopyTo(unk32 *flags);
    void func_ov00_02097674();
    s32 func_ov00_02097684();
    void Load();
    void func_ov00_020976c8();
    void func_ov00_02097700();
    bool func_ov00_02097738();
    unk8 func_ov00_02097750();
    bool Get(AdventureFlag flag);
    void Set(AdventureFlag flag, bool value);
    void func_Ov00_02097810(s32 param1);
    unk32 func_ov00_02097968(unk32 param1);
    unk32 func_ov00_02097a44(unk32 param1, s32 param2);
    bool func_ov00_02097b9c(s32 param1);
    bool func_ov00_02097bac();
    bool func_ov00_02097bbc();
    bool func_ov00_02097bcc();
    bool func_ov00_02097bcc(s32 param2);
    s32 func_ov00_02097c08();
    bool Get_FlagsUnk_30_Flag(s32 index);
    u8 Get_FlagsUnk_49(s32 index);
    u8 Get_FlagsUnk_48(s32 index);
    u8 Get_FlagsUnk_4a(s32 index);
    u16 Get_FlagsUnk_42(s32 index);
    u16 Get_FlagsUnk_40(s32 index);
    unk32 Get_FlagsUnk_38(s32 index);
    unk32 Get_FlagsUnk_34(s32 index);
    unk32 Get_FlagsUnk_44(s32 index);
    static unk32 Get_FlagsUnk_30(s32 index);
    static bool Get_FlagsUnk_00(s32 index, FlagsUnk2 *result);
    bool Get_FlagsUnk_18(s32 index, FlagsUnk2 *result);
    FlagsUnk *Get_FlagsUnk(s32 index);
    bool func_ov00_02097e6c();
    bool func_ov00_02097e7c();
    bool func_ov00_02097ea4();
    static unk32 func_ov00_02097ecc();
    void *func_ov00_02097f8c();
    void *func_ov00_02097fac();
    void *func_ov00_02097fd0();
    void func_ov00_02097ff4(bool param1, bool param2);
    unk32 func_ov00_02098058();
    bool func_ov00_02098064(unk32 param1);
    bool func_ov00_02098074(unk32 param1, unk16 param2, unk32 param3, unk32 param4, bool param5);
    bool func_ov00_0209809c();
    bool func_ov00_020980ac();
    void func_ov00_020980bc(s32 param1);

    AdventureFlags();
    ~AdventureFlags();
    static void Create();
    static void Destroy();
    void func_ov004_021044f8(s32 param1);
    void func_ov004_0210453c();
    bool func_ov004_0210455c(s32 param1);
    void func_ov004_021046c8(unk32 param1);
    void func_ov004_021046d4();
};

extern AdventureFlags *gAdventureFlags;
