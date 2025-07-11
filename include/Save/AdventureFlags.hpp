#pragma once

#include "global.h"
#include "types.h"

#include "Cutscene/CutsceneHandler.hpp"
#include "Render/FadeControl.hpp"
#include "System/SysNew.hpp"

/**
 * Adventure Flags value format:
 *     - 0x001F: 0000 0000 0001 1111 -> the shift value to read or write the flag's bit
 *     - 0xFFE0: 1111 1111 1110 0000 -> index of the value in `FlagsData.data` (see `FlagsData` struct below)
 *
 * `FlagsData.data` is an array of 32-bits values, the `FlagIndex` enum below represents the index to that array
 * and `FlagSlot` is the shift value to access the actual flag's bit.
 *
 * `ADVENTURE_FLAG` is a macro that allows you to get the final value from the index and the slot number.
 */

typedef u32 FlagIndex;
enum FlagIndex_ {
    FlagIndex_0  = 0,
    FlagIndex_1  = 1,
    FlagIndex_2  = 2,
    FlagIndex_3  = 3,
    FlagIndex_4  = 4,
    FlagIndex_5  = 5,
    FlagIndex_6  = 6,
    FlagIndex_7  = 7,
    FlagIndex_8  = 8,
    FlagIndex_9  = 9,
    FlagIndex_10 = 10,
    FlagIndex_11 = 11,
    FlagIndex_12 = 12,
    FlagIndex_13 = 13,
    FlagIndex_14 = 14,
    FlagIndex_15 = 15,
    FlagIndex_Max,
};

typedef u32 FlagSlot;
enum FlagSlot_ {
    FlagSlot_0  = 0,
    FlagSlot_1  = 1,
    FlagSlot_2  = 2,
    FlagSlot_3  = 3,
    FlagSlot_4  = 4,
    FlagSlot_5  = 5,
    FlagSlot_6  = 6,
    FlagSlot_7  = 7,
    FlagSlot_8  = 8,
    FlagSlot_9  = 9,
    FlagSlot_10 = 10,
    FlagSlot_11 = 11,
    FlagSlot_12 = 12,
    FlagSlot_13 = 13,
    FlagSlot_14 = 14,
    FlagSlot_15 = 15,
    FlagSlot_16 = 16,
    FlagSlot_17 = 17,
    FlagSlot_18 = 18,
    FlagSlot_19 = 19,
    FlagSlot_20 = 20,
    FlagSlot_21 = 21,
    FlagSlot_22 = 22,
    FlagSlot_23 = 23,
    FlagSlot_24 = 24,
    FlagSlot_25 = 25,
    FlagSlot_26 = 26,
    FlagSlot_27 = 27,
    FlagSlot_28 = 28,
    FlagSlot_29 = 29,
    FlagSlot_30 = 30,
    FlagSlot_31 = 31,
};

#define ADVENTURE_FLAG(index, slot) (((index) << 5) | ((slot) & 0x1F))
#define ADVENTURE_FLAG_CHECK(data, index, slot) (data[index >> 5] & (1 << ((slot) & 0x1F)))
#define ADVENTURE_FLAG_GET(data, flag) (data[flag >> 5] & (1 << ((flag) & 0x1F)))

typedef u32 AdventureFlag;
enum AdventureFlag_ {
    /* 0x0009 */ AdventureFlag_SWSeaChart = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_9),
    /* 0x000A */ AdventureFlag_NWSeaChart = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_10),
    /* 0x000B */ AdventureFlag_SESeaChart = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_11),
    /* 0x000C */ AdventureFlag_NESeaChart = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_12),
    /* 0x0013 */ AdventureFlag_Hourglass  = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_19),
    /* 0x0016 */ AdventureFlag_SunKey     = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_22),
    /* 0x0017 */ AdventureFlag_Unk_23     = ADVENTURE_FLAG(FlagIndex_0, FlagSlot_23),

    /* 0x002B */ AdventureFlag_FishingRod    = ADVENTURE_FLAG(FlagIndex_1, FlagSlot_11),
    /* 0x0030 */ AdventureFlag_Cannon        = ADVENTURE_FLAG(FlagIndex_1, FlagSlot_16),
    /* 0x0033 */ AdventureFlag_RegalNecklace = ADVENTURE_FLAG(FlagIndex_1, FlagSlot_19),

    /* 0x007A */ AdventureFlag_CourageCrest = ADVENTURE_FLAG(FlagIndex_3, FlagSlot_26),
    /* 0x007D */ AdventureFlag_Azurine      = ADVENTURE_FLAG(FlagIndex_3, FlagSlot_29),
    /* 0x007E */ AdventureFlag_Crimsonine   = ADVENTURE_FLAG(FlagIndex_3, FlagSlot_30),
    /* 0x007F */ AdventureFlag_Aquanine     = ADVENTURE_FLAG(FlagIndex_3, FlagSlot_31),

    /* 0x0080 */ AdventureFlag_Unk_128    = ADVENTURE_FLAG(FlagIndex_4, FlagSlot_0),
    /* 0x008C */ AdventureFlag_SalvageArm = ADVENTURE_FLAG(FlagIndex_4, FlagSlot_12),

    /* 0x00A2 */ AdvantureFlag_HerosNewClothes    = ADVENTURE_FLAG(FlagIndex_5, FlagSlot_2),
    /* 0x00A3 */ AdvantureFlag_Kaleidoscope       = ADVENTURE_FLAG(FlagIndex_5, FlagSlot_3),
    /* 0x00A4 */ AdventureFlag_GuardNotebook      = ADVENTURE_FLAG(FlagIndex_5, FlagSlot_4),
    /* 0x00A7 */ AdventureFlag_WoodHeart          = ADVENTURE_FLAG(FlagIndex_5, FlagSlot_7),
    /* 0x00B6 */ AdventureFlag_SpawnFinalPhantoms = ADVENTURE_FLAG(FlagIndex_5, FlagSlot_22),

    /* 0x0126 */ AdventureFlag_ReceivedGoldenChimney  = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_6),
    /* 0x0127 */ AdventureFlag_ReceivedGoldenHandrail = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_7),
    /* 0x0128 */ AdventureFlag_ReceivedGoldenCannon   = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_8),
    /* 0x0129 */ AdventureFlag_ReceivedGoldenHull     = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_9),
    /* 0x0137 */ AdventureFlag_FrogGlyph_MercayIsland = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_23),
    /* 0x0138 */ AdventureFlag_FrogGlyph_MolidaIsland = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_24),
    /* 0x0139 */ AdventureFlag_FrogGlyph_BannanIsland = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_25),
    /* 0x013A */ AdventureFlag_FrogGlyph_DeeEssIsland = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_26),
    /* 0x013B */ AdventureFlag_FrogGlyph_IsleOfFrost  = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_27),
    /* 0x013C */ AdventureFlag_FrogGlyph_NorthEast    = ADVENTURE_FLAG(FlagIndex_9, FlagSlot_28),

    /* 0x0187 */ AdventureFlag_COUNT = ADVENTURE_FLAG(FlagIndex_12, FlagSlot_7),
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
    /* 40 */ u16 mUnk_40;
    /* 42 */ u16 mUnk_42;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ u8 mUnk_48;
    /* 49 */ u8 mUnk_49;
    /* 4a */ u8 mUnk_4a;
    /* 4b */ unk8 mUnk_4b;
    /* 4c */

    ~FlagsUnk();
};

struct FlagsData {
    /* 00 */ u32 data[FlagIndex_Max];
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
