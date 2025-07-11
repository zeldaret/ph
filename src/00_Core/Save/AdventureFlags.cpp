#include "Save/AdventureFlags.hpp"
#include "Cutscene/CutsceneHandler.hpp"
#include "Map/MapManager.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"

extern unk32 data_027e0dbc;
extern "C" void func_ov000_0207ba94(unk32 *, u32);
extern "C" void *func_ov040_021834cc();
extern "C" void *func_ov035_02183200();

extern FlagsUnk data_ov000_020e310c[];
extern FlagsData data_ov000_020eaac4;

ARM bool AdventureFlags::Exists() {
    return gAdventureFlags != NULL;
}

ARM void AdventureFlags::CopyTo(FlagsData *flags) {
    *flags = this->mFlags;
}

ARM void AdventureFlags::func_ov00_02097674() {
    this->mCutsceneHandler->func_ov000_020980f8();
}

ARM s32 AdventureFlags::func_ov00_02097684(unk32 param1, unk32 param2, void **param3) {
    return this->mCutsceneHandler->func_ov000_020980fc(param1, param2, param3);
}

ARM void AdventureFlags::Load() {
    this->mFlags = data_ov000_020eaac4;
}

ARM void AdventureFlags::func_ov00_020976c8() {
    this->mCutsceneHandler->SetFlags(~1);
    this->mCutsceneHandler->func_ov000_02098658();
    this->mUnk_44->func_ov000_02099024();
}

ARM void AdventureFlags::func_ov00_02097700() {
    this->mCutsceneHandler->SetFlags(~1);
    this->mCutsceneHandler->func_ov000_02098658();
    this->mUnk_44->func_ov000_02099024();
}

ARM bool AdventureFlags::func_ov00_02097738() {
    return this->mCutsceneHandler->mFlags1 & 1;
}

ARM bool AdventureFlags::func_ov00_02097750() {
    return gMessageManager.mUnk_04;
}

ARM bool AdventureFlags::Get(AdventureFlag flag) {
    if ((s32) flag >= AdventureFlag_COUNT || (s32) flag <= 0) {
        return false;
    }

    return ADVENTURE_FLAG_GET(this->mFlags.data, flag);
}

ARM void AdventureFlags::Set(AdventureFlag flag, bool value) {
    if ((s32) flag < AdventureFlag_COUNT) {
        if (value) {
            func_ov000_0207ba94(&data_027e0dbc, flag);
        }

        if (value) {
            this->mFlags.data[flag >> 5] |= (1 << (flag & 0x1F));
        } else {
            this->mFlags.data[flag >> 5] &= ~(1 << (flag & 0x1F));
        }
    }
}

ARM void AdventureFlags::func_Ov00_02097810(s32 param1) {}

// non-matching
ARM unk32 AdventureFlags::func_ov00_02097968(unk32 param1) {
    if (this->Get_FlagsUnk_30_Flag(param1)) {
        return -1;
    }

    astruct_23 aStack_c0;
    aStack_c0.mUnk_16 = data_027e0db0.mUnk_04 > 0;

    FlagsUnk2 FStack_d8;
    FStack_d8.mUnk_00.mUnk_00 = 0x47;
    FStack_d8.mUnk_04.mUnk_00 = 0;
    FStack_d8.mUnk_04.mUnk_04 = 0;
    FStack_d8.mUnk_04.mUnk_08 = -2;
    FStack_d8.mUnk_04.mUnk_0c = 0;
    FStack_d8.mUnk_04.mUnk_0e = -1;
    FStack_d8.mUnk_04.mUnk_0f = 0;
    FStack_d8.mUnk_04.mUnk_10 = 0;
    FStack_d8.mUnk_04.mUnk_11 = 0;
    aStack_c0.mUnk_00         = param1;

    aStack_c0.mUnk_0c = AdventureFlags::Get_FlagsUnk_00(param1, &FStack_d8);
    gMapManager->func_ov000_02098d34(&FStack_d8);
}

ARM unk32 AdventureFlags::func_ov00_02097a44(unk32 param1, s32 param2) {}

ARM bool AdventureFlags::func_ov00_02097b9c(s32 param1) {
    return this->mUnk_44->func_ov000_02098c48(param1);
}

ARM bool AdventureFlags::func_ov00_02097bac() {
    return this->mUnk_44->func_ov000_02098c68();
}

ARM bool AdventureFlags::func_ov00_02097bbc() {
    return this->mUnk_44->func_ov000_02098d20();
}

ARM bool AdventureFlags::func_ov00_02097bcc(s32 param1) {
    return this->mUnk_44->func_ov000_02098fa4(param1);
}

ARM bool AdventureFlags::func_ov00_02097bcc(astruct_23 *param1) {
    if (this->func_ov00_02097738()) {
        return this->mUnk_44->func_ov000_020990a4(param1);
    }

    return false;
}

ARM s32 AdventureFlags::func_ov00_02097c08() {
    return this->mUnk_44->func_ov000_0209907c();
}

ARM bool AdventureFlags::Get_FlagsUnk_30_Flag(s32 index) {
    return this->Get(this->Get_FlagsUnk_30(index));
}

ARM u8 AdventureFlags::Get_FlagsUnk_49(s32 index) {
    return data_ov000_020e310c[index].mUnk_49;
}

ARM u8 AdventureFlags::Get_FlagsUnk_48(s32 index) {
    return data_ov000_020e310c[index].mUnk_48;
}

ARM u8 AdventureFlags::Get_FlagsUnk_4a(s32 index) {
    return data_ov000_020e310c[index].mUnk_4a;
}

ARM u16 AdventureFlags::Get_FlagsUnk_42(s32 index) {
    return data_ov000_020e310c[index].mUnk_42;
}

ARM u16 AdventureFlags::Get_FlagsUnk_40(s32 index) {
    return data_ov000_020e310c[index].mUnk_40;
}

ARM unk32 AdventureFlags::Get_FlagsUnk_38(s32 index) {
    return data_ov000_020e310c[index].mUnk_38;
}

ARM unk32 AdventureFlags::Get_FlagsUnk_34(s32 index) {
    return data_ov000_020e310c[index].mUnk_34;
}

ARM unk32 AdventureFlags::Get_FlagsUnk_44(s32 index) {
    return data_ov000_020e310c[index].mUnk_44;
}

ARM unk32 AdventureFlags::Get_FlagsUnk_30(s32 index) {
    return data_ov000_020e310c[index].mUnk_30;
}

ARM bool AdventureFlags::Get_FlagsUnk_00(s32 index, FlagsUnk2 *result) {
    result->mUnk_00         = data_ov000_020e310c[index].mUnk_00.mUnk_00;
    result->mUnk_04.mUnk_00 = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_00;
    result->mUnk_04.mUnk_04 = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_04;
    result->mUnk_04.mUnk_08 = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_08;
    result->mUnk_04.mUnk_0c = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_0c;
    result->mUnk_04.mUnk_0e = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_0e;
    result->mUnk_04.mUnk_0f = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_0f;
    result->mUnk_04.mUnk_10 = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_10;
    result->mUnk_04.mUnk_11 = data_ov000_020e310c[index].mUnk_00.mUnk_04.mUnk_11;
    return true;
}

ARM bool AdventureFlags::Get_FlagsUnk_18(s32 index, FlagsUnk2 *result) {
    result->mUnk_00         = data_ov000_020e310c[index].mUnk_18.mUnk_00;
    result->mUnk_04.mUnk_00 = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_00;
    result->mUnk_04.mUnk_04 = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_04;
    result->mUnk_04.mUnk_08 = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_08;
    result->mUnk_04.mUnk_0c = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_0c;
    result->mUnk_04.mUnk_0e = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_0e;
    result->mUnk_04.mUnk_0f = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_0f;
    result->mUnk_04.mUnk_10 = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_10;
    result->mUnk_04.mUnk_11 = data_ov000_020e310c[index].mUnk_18.mUnk_04.mUnk_11;
    return true;
}

ARM FlagsUnk *AdventureFlags::Get_FlagsUnk(s32 index) {
    return &data_ov000_020e310c[index];
}

ARM bool AdventureFlags::func_ov00_02097e6c() {
    return this->mCutsceneHandler->func_ov000_02098114();
}

ARM bool AdventureFlags::func_ov00_02097e7c() {
    if (this->func_ov00_02097e6c()) {
        return this->mCutsceneHandler->SkipCutscene(0);
    }

    return false;
}

ARM bool AdventureFlags::func_ov00_02097ea4() {
    if (this->func_ov00_02097e6c()) {
        return this->mCutsceneHandler->SkipCutscene(1);
    }

    return false;
}

ARM unk32 AdventureFlags::func_ov00_02097ecc() {
    u32 *pFlags = (u32 *) data_ov000_020eaac4.data;
    u32 index;

    if (ADVENTURE_FLAG_CHECK(pFlags, FlagIndex_0, FlagSlot_30) && !ADVENTURE_FLAG_CHECK(pFlags, FlagIndex_0, FlagSlot_31)) {
        index = AdventureFlags::Get_FlagsUnk_30(0x20);

        if (!(pFlags[index >> 5] & (1 << (index & 0x1F)))) {
            return 0x20;
        }

        return 0x21;
    }

    if (ADVENTURE_FLAG_CHECK(pFlags, FlagIndex_0, FlagSlot_29) && !ADVENTURE_FLAG_CHECK(pFlags, FlagIndex_0, FlagSlot_30)) {
        index = AdventureFlags::Get_FlagsUnk_30(0x1F);

        if (!(pFlags[index >> 5] & (1 << (index & 0x1F)))) {
            return 0x1F;
        }

        return 0x21;
    }

    // {FlagIndex_0, FlagSlot_9} is AdventureFlag_SWSeaChart
    if (ADVENTURE_FLAG_CHECK(pFlags, FlagIndex_0, FlagSlot_9) && !ADVENTURE_FLAG_CHECK(pFlags, FlagIndex_0, FlagSlot_29)) {
        index = AdventureFlags::Get_FlagsUnk_30(0x1E);

        if (!(pFlags[index >> 5] & (1 << (index & 0x1F)))) {
            return 0x1E;
        }

        return 0x21;
    }

    return 0x21;
}

ARM void *AdventureFlags::func_ov00_02097f8c() {
    if (this->mCutsceneHandler->mUnk_80 != NULL) {
        return func_ov040_021834cc();
    }

    return NULL;
}

// non-matching
ARM void *AdventureFlags::func_ov00_02097fac() {
    void *piVar1 = this->func_ov00_02097f8c();

    if (piVar1 != NULL) {
        return func_ov035_02183200();
    }

    return NULL;
}

// non-matching
ARM void *AdventureFlags::func_ov00_02097fd0() {
    this->func_ov00_02097c08();
    this->func_ov00_02097fac();
}

// non-matching
ARM void AdventureFlags::func_ov00_02097ff4(bool param1, bool param2) {
    u8 pAVar1;
    u32 uVar2;

    if (param1) {
        if (param2) {
            pAVar1 = data_027e0c54;
        }

        data_027e0db0.func_ov000_0207b2f0(0, pAVar1);
    } else {
        data_027e0db0.func_ov000_0207b334(0);
    }

    uVar2 = this->mCutsceneHandler->mFlags2;

    if (param1) {
        uVar2 |= 2;
    } else {
        uVar2 &= ~2;
    }

    this->mCutsceneHandler->mFlags2 = uVar2;
}

ARM unk32 AdventureFlags::func_ov00_02098058() {
    return this->mCutsceneHandler->mCutsceneTimer1;
}

ARM bool AdventureFlags::func_ov00_02098064(unk32 param1) {
    return this->mCutsceneHandler->func_ov000_02098694(param1);
}

ARM bool AdventureFlags::func_ov00_02098074(unk32 param1, unk16 param2, unk32 param3, unk32 param4, bool param5) {
    return this->mCutsceneHandler->func_ov000_020987c4(param1, param2, param3, param4, param5);
}

ARM bool AdventureFlags::func_ov00_0209809c() {
    return this->mCutsceneHandler->func_ov000_02098834();
}

ARM bool AdventureFlags::func_ov00_020980ac() {
    return this->mCutsceneHandler->func_ov000_02098860();
}

ARM void AdventureFlags::func_ov00_020980bc(s32 param1) {
    this->mCutsceneHandler->mFreeze += param1;
}
