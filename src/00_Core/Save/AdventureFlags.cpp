#include "Save/AdventureFlags.hpp"
#include "Cutscene/CutsceneHandler.hpp"

extern FlagsUnk data_ov000_020e310c[];

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

ARM void AdventureFlags::Load() {}
ARM void AdventureFlags::func_ov00_020976c8() {}
ARM void AdventureFlags::func_ov00_02097700() {}
ARM bool AdventureFlags::func_ov00_02097738() {}
ARM unk8 AdventureFlags::func_ov00_02097750() {}
ARM bool AdventureFlags::Get(AdventureFlag flag) {}
ARM void AdventureFlags::Set(AdventureFlag flag, bool value) {}
ARM void AdventureFlags::func_Ov00_02097810(s32 param1) {}
ARM unk32 AdventureFlags::func_ov00_02097968(unk32 param1) {}
ARM unk32 AdventureFlags::func_ov00_02097a44(unk32 param1, s32 param2) {}
ARM bool AdventureFlags::func_ov00_02097b9c(s32 param1) {}
ARM bool AdventureFlags::func_ov00_02097bac() {}
ARM bool AdventureFlags::func_ov00_02097bbc() {}
ARM bool AdventureFlags::func_ov00_02097bcc() {}
ARM bool AdventureFlags::func_ov00_02097bcc(s32 param2) {}
ARM s32 AdventureFlags::func_ov00_02097c08() {}

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

ARM bool AdventureFlags::Get_FlagsUnk_00(s32 index, FlagsUnk2 *result) {}
ARM bool AdventureFlags::Get_FlagsUnk_18(s32 index, FlagsUnk2 *result) {}

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

ARM unk32 AdventureFlags::func_ov00_02097ecc() {}
ARM void *AdventureFlags::func_ov00_02097f8c() {}
ARM void *AdventureFlags::func_ov00_02097fac() {}
ARM void *AdventureFlags::func_ov00_02097fd0() {}
ARM void AdventureFlags::func_ov00_02097ff4(bool param1, bool param2) {}
ARM unk32 AdventureFlags::func_ov00_02098058() {}
ARM bool AdventureFlags::func_ov00_02098064(unk32 param1) {}
ARM bool AdventureFlags::func_ov00_02098074(unk32 param1, unk16 param2, unk32 param3, unk32 param4, bool param5) {}
ARM bool AdventureFlags::func_ov00_0209809c() {}
ARM bool AdventureFlags::func_ov00_020980ac() {}
ARM void AdventureFlags::func_ov00_020980bc(s32 param1) {}
