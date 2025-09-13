#pragma once

#include "flags.h"
#include "global.h"
#include "types.h"

#include "Cutscene/CutsceneHandler.hpp"
#include "Render/FadeControl.hpp"
#include "System/SysNew.hpp"

typedef u32 AdventureFlag;
enum AdventureFlag_ {
    /* 0x0009 */ AdventureFlag_SWSeaChart = FLAG(0, 9),
    /* 0x000A */ AdventureFlag_NWSeaChart = FLAG(0, 10),
    /* 0x000B */ AdventureFlag_SESeaChart = FLAG(0, 11),
    /* 0x000C */ AdventureFlag_NESeaChart = FLAG(0, 12),
    /* 0x0013 */ AdventureFlag_Hourglass  = FLAG(0, 19),
    /* 0x0016 */ AdventureFlag_SunKey     = FLAG(0, 22),
    /* 0x0017 */ AdventureFlag_Unk_23     = FLAG(0, 23),
    /* 0x001D */ AdventureFlag_Unk_29     = FLAG(0, 29),
    /* 0x001E */ AdventureFlag_Unk_30     = FLAG(0, 30),
    /* 0x001F */ AdventureFlag_Unk_31     = FLAG(0, 31),

    /* 0x002B */ AdventureFlag_FishingRod    = FLAG(1, 11),
    /* 0x0030 */ AdventureFlag_Cannon        = FLAG(1, 16),
    /* 0x0033 */ AdventureFlag_RegalNecklace = FLAG(1, 19),

    /* 0x007A */ AdventureFlag_CourageCrest = FLAG(3, 26),
    /* 0x007D */ AdventureFlag_Azurine      = FLAG(3, 29),
    /* 0x007E */ AdventureFlag_Crimsonine   = FLAG(3, 30),
    /* 0x007F */ AdventureFlag_Aquanine     = FLAG(3, 31),

    /* 0x0080 */ AdventureFlag_Unk_128    = FLAG(4, 0),
    /* 0x008C */ AdventureFlag_SalvageArm = FLAG(4, 12),

    /* 0x00A2 */ AdvantureFlag_HerosNewClothes    = FLAG(5, 2),
    /* 0x00A3 */ AdvantureFlag_Kaleidoscope       = FLAG(5, 3),
    /* 0x00A4 */ AdventureFlag_GuardNotebook      = FLAG(5, 4),
    /* 0x00A7 */ AdventureFlag_WoodHeart          = FLAG(5, 7),
    /* 0x00B6 */ AdventureFlag_SpawnFinalPhantoms = FLAG(5, 22),

    /* 0x0126 */ AdventureFlag_ReceivedGoldenChimney  = FLAG(9, 6),
    /* 0x0127 */ AdventureFlag_ReceivedGoldenHandrail = FLAG(9, 7),
    /* 0x0128 */ AdventureFlag_ReceivedGoldenCannon   = FLAG(9, 8),
    /* 0x0129 */ AdventureFlag_ReceivedGoldenHull     = FLAG(9, 9),
    /* 0x0137 */ AdventureFlag_FrogGlyph_MercayIsland = FLAG(9, 23),
    /* 0x0138 */ AdventureFlag_FrogGlyph_MolidaIsland = FLAG(9, 24),
    /* 0x0139 */ AdventureFlag_FrogGlyph_BannanIsland = FLAG(9, 25),
    /* 0x013A */ AdventureFlag_FrogGlyph_DeeEssIsland = FLAG(9, 26),
    /* 0x013B */ AdventureFlag_FrogGlyph_IsleOfFrost  = FLAG(9, 27),
    /* 0x013C */ AdventureFlag_FrogGlyph_NorthEast    = FLAG(9, 28),

    /* 0x0187 */ AdventureFlag_COUNT = FLAG(12, 7),
};

struct UnkStruct_027e0d38_UnkC {
    /* 00 */ unk32 mUnk_00;

    s32 func_ov000_020a5e9c(void);
};

class UnkStruct_02082348_04 {
public:
    /* 00 */ Vec3p mUnk_00; // pos?
    /* 0c */ unk16 mUnk_0c; // angle?
    /* 0e */ u8 mUnk_0e; // some id?
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

    //~FlagsUnk2();
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
    /* 40 */ u16 mUnk_40;
    /* 42 */ u16 mUnk_42;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ u8 mUnk_48;
    /* 49 */ u8 mUnk_49;
    /* 4a */ u8 mUnk_4a;
    /* 4b */ unk8 mUnk_4b;
    /* 4c */

    ~FlagsUnk();
    void func_ov000_020980f8();
};

struct FlagsData {
    /* 00 */ u32 data[16];
    /* 40 */
};

struct astruct_23 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk8 mUnk_14;
    /* 15 */ unk8 mUnk_15;
    /* 16 */ bool mUnk_16;
    /* 17 */ unk8 mUnk_17;
    /* 18 */ unk8 mUnk_18;
    /* 19 */ unk8 mUnk_19;
    /* 1a */ unk16 mUnk_1a;
    /* 1c */ unk16 mUnk_1c;
    /* 1e */ unk8 mUnk_1e;
    /* 1f */ unk8 mUnk_1f;
    /* 20 */ unk8 mUnk_20[0x94 - 0x20];
    /* 94 */ unk32 mUnk_94;
    /* 98 */ unk16 mUnk_98;
    /* 9a */ unk16 mUnk_9a;
    /* 9c */ unk16 mUnk_9c;
    /* 9e */ unk8 mUnk_9e;
    /* 9f */ unk8 mUnk_9f;
    /* a0 */ unk32 mUnk_a0;
    /* a4 */ unk32 mUnk_a4;
    /* a8 */ unk32 mUnk_a8;
    /* ac */ unk32 mUnk_ac;
    /* b0 */

    astruct_23();
    ~astruct_23();
};

struct AdventureFlags_44 {
    void func_ov000_02099024();
    bool func_ov000_02098c48(s32 param1);
    bool func_ov000_02098c68();
    bool func_ov000_02098d20();
    bool func_ov000_02098fa4(s32 param1);
    bool func_ov000_020990a4(astruct_23 *param1);
    s32 func_ov000_0209907c();
};

class AdventureFlags : public SysObject {
public:
    /* 00 */ FlagsData mFlags;
    /* 40 */ CutsceneHandler *mCutsceneHandler;
    /* 44 */ AdventureFlags_44 *mUnk_44;
    /* 48 */

    static bool Exists();
    void CopyTo(FlagsData *flags);
    void func_ov00_02097674();
    s32 func_ov00_02097684(unk32 param1, unk32 param2, void **param3);
    void Load();
    void func_ov00_020976c8();
    void func_ov00_02097700();
    bool func_ov00_02097738();
    bool func_ov00_02097750();
    bool Get(AdventureFlag flag);
    void Set(AdventureFlag flag, bool value);
    void func_ov00_02097810(s32 param1, astruct_23 *param2);
    unk32 func_ov00_02097968(unk32 param1);
    unk32 func_ov00_02097a44(unk32 param1, s32 param2);
    bool func_ov00_02097b9c(s32 param1);
    bool func_ov00_02097bac();
    bool func_ov00_02097bbc();
    bool func_ov00_02097bcc(s32 param1);
    bool func_ov00_02097bcc(astruct_23 *param1);
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
    void func_ov004_021046d4(s32 param1);
};

extern AdventureFlags *gAdventureFlags;
