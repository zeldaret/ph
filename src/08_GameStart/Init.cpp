#include "Player/TouchControl.hpp"
#include "Save/SaveItemManager.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_020e9370.hpp"
#include "Unknown/UnkStruct_020ec7dc.hpp"
#include "Unknown/UnkStruct_020ee0a0.hpp"
#include "Unknown/UnkStruct_020ee698.hpp"
#include "Unknown/UnkStruct_020ee6f8.hpp"
#include "Unknown/UnkStruct_020ee734.hpp"
#include "Unknown/UnkStruct_020ee820.hpp"
#include "Unknown/UnkStruct_020eec60.hpp"
#include "Unknown/UnkStruct_020eec68.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"
#include "Unknown/UnkStruct_020eed2c.hpp"
#include "Unknown/UnkStruct_027e0d54.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"
#include "Unknown/UnkStruct_027e0f88.hpp"

extern "C" {
void func_0200a23c();
void func_0200a318(u8 *);
unk32 func_0200dd94();
unk32 func_0200a284(u8 *);
u16 func_ov001_020efdac();
void *NewEXPH(char *id, s32 length, s32 param_3);
unk32 func_ov000_020773c0();
void func_020174a4(u32 *, void *);
void func_0201f378();
void func_0202019c(void *, const char *, u32 *, unk32);
void func_020213f0(u32 *);
void func_02021714(unk32, u32 *);
void func_020209a4(unk32, u32 *);
void func_0201f1ac(u32 *);
void func_0201f96c(unk32, unk32);
void Fill32(unk32, u32 *, unk32);
void Fill(unsigned char *dst, int value, int size);
void func_0200afac();
void func_0200b4dc(unk32);
void func_0200aa20();
void func_02015718();
unk16 func_0200c76c();
void func_020400f4(u16);
void func_02040100(u16);
unk32 func_02040528(unk32);
unk32 func_020400c0();
unk32 func_02040464(unk32, u16 *, unk32, unk32, unk32, unk32, unk32, unk32, unk32);
}

extern unk32 data_ov000_020d8795;
extern u8 data_ov000_020d88b4[24];

#define FRAME_COUNTER (*(u32 *) 0x027ffc3c)

// --- data_027e0d54 ---
ARM UnkStruct_027e0d54::UnkStruct_027e0d54() {
    Fill32(0, this->mUnk_00, sizeof(this->mUnk_00));

    this->mUnk_08 = NULL;
    this->mUnk_0c = 1;
    this->mUnk_0d = 0;
    this->mUnk_0e = 0;
    this->mUnk_0f = 0;
    this->mUnk_10 = 0;
    this->mUnk_14 = 0;
    this->mUnk_16 = 0;
}

ARM void UnkStruct_027e0d54::func_ov008_02112f28() {
    unk16 local_e;
    u16 local_2a; // sp, #0x16
    u16 local_2c; // sp, #0x14
    bool bVar1;
    u16 auStack_28[13];

    UnkStruct_027e0d54_08 *pUnk_00 = new(data_027e0ce0[0], 4) UnkStruct_027e0d54_08();

    if (pUnk_00 != NULL) {
        // why??
        Fill32(0, pUnk_00->mUnk_00, sizeof(pUnk_00));
        Fill32(0, pUnk_00->mUnk_00, sizeof(pUnk_00));
    }

    this->mUnk_08 = pUnk_00;
    this->mUnk_14 = func_0200c76c();
    func_020400f4(this->mUnk_14);

    local_2c = 0x21;
    local_2a = 0;
    local_e  = 0;
    bVar1    = true;

    Fill16(0, auStack_28, sizeof(auStack_28));

    if (func_02040528(0x1302) == 0) {
        this->mUnk_10 = func_020400c0();
    } else {
        if (func_02040464(0x7EA00, &local_2c, 0x20, 0, 0, 0, 6, 1, 0) == 0) {
            this->mUnk_10 = func_020400c0();
        } else {
            unk32 sVar6 = 0xC2E4;
            bool bVar10 = local_2a == 0xC2E4;
            unk32 sVar3 = local_2a;
            // unk16 sVar3;
            // unk32 sVar6;
            // bool bVar1 = false;

            // if (local_2a == 0xC2E4 || local_e != 0x1D3F) {
            //     sVar3 = local_e;
            //     sVar6 = 0x1D3F;
            // }

            if (bVar10) {
                sVar6 = 0x1D3F;
                sVar3 = local_e;
            }

            // bool bVar2 = sVar3 != sVar6;
            // if (!bVar10 || bVar2) {
            //     sVar6 = 0x1;
            // }

            bool uVar4 = 1;
            if (bVar10 && !(sVar3 != 0x1D3F)) {
                uVar4 = 0x0;
            }

            this->mUnk_0c = uVar4;

            if (local_2c != 0x21) {
                bVar1 = false;
            }
        }
    }

    func_02040100(this->mUnk_14);

    if (this->mUnk_10 != 0) {
        this->mUnk_0f = 1;
    }

    if (!this->mUnk_0c && bVar1) {
        this->mUnk_0c = true;
    }
}

// --- gTouchControl ---
ARM TouchControl::TouchControl() {
    u8 auStack_10[8];

    this->Init();
    func_0200a23c();

    if (func_0200dd94() != 0) {
        func_0200a318(NULL);
    } else {
        if (func_0200a284(auStack_10) != 0) {
            func_0200a318(auStack_10);
        }
    }
}

// --- data_ov000_020ee698 ---
ARM UnkStruct_020ee698::UnkStruct_020ee698() :
    mUnk_00(0),
    mUnk_02(0),
    mUnk_04(func_ov001_020efdac()),
    mUnk_08(0x0D) {
    void *newHeap = NewEXPH((char *) data_027e0ce0[1], 0x700, 0x20);

    if (func_ov000_020773c0() == 3) {
        this->mUnk_00 = 1;
    }

    func_020174a4(data_027e0ce0[1], newHeap);
}

// --- data_ov000_020ee734 ---
ARM UnkStruct_020ee734::UnkStruct_020ee734() {
    this->mUnk_90 = 0;
    this->mUnk_94 = 1;
    this->mUnk_95 = 0;
    this->mUnk_96 = 0;
    this->mUnk_97 = 0;
    this->mUnk_98 = 0;
    this->mUnk_99 = 0;
    this->mUnk_9a = 0;
    this->mUnk_9c = 0;
    this->mUnk_a0 = 0;
    this->mUnk_a4 = -1;
    this->mUnk_a8 = 0;
    this->mUnk_a9 = 0;

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_ac); i++) {
        this->mUnk_ac[i] = 0;
    }
}

ARM void UnkStruct_020ee734::func_ov008_021131ac() {
    if (func_0200dd94() == 0 && !this->mUnk_98) {
        func_0201f378();
        this->mUnk_90 = data_027e0ce0[3];
        func_0202019c(this, "SoundData/final_sound_data.sdat", data_027e0ce0[3], 0);
        func_020213f0(this->mUnk_90);
        func_02021714(9, this->mUnk_90);
        func_020209a4(1, this->mUnk_90);
        func_0201f1ac(this->mUnk_90);
        this->mUnk_ac[1] = 1;

        data_ov000_020eec68.func_ov008_021132cc();
        data_ov000_020eec9c.func_ov008_0211337c();
        data_ov000_020ee820.func_ov008_021133f0();
        data_ov000_020eec60.func_ov008_02113474();
        data_ov000_020ee820.func_ov000_020d69e4();

        for (s32 i = 0; i < 16; i++) {
            func_0201f96c(i, 0);
        }

        this->mUnk_98 = 1;
    }
}

// --- data_ov000_020eec68 ---
ARM UnkStruct_020eec68::UnkStruct_020eec68() {
    this->mUnk_10 = 0;
    this->mUnk_11 = 0;
    this->mUnk_12 = 0;
    this->mUnk_13 = 0;
    this->mUnk_14 = 0;
    this->mUnk_15 = 0;
    this->mUnk_16 = 0;
    this->mUnk_18 = 0;
    this->mUnk_1c = 0;
    this->mUnk_20 = -1;
    this->mUnk_24 = 0;
    this->mUnk_28 = 0x7FFFFFFF;
    this->mUnk_2c = 0x7F;
}

ARM void UnkStruct_020eec68::func_ov008_021132cc() {
    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_00); i++) {
        this->mUnk_00[i].func_0201f704();
    }

    this->mUnk_0c.func_02021a1c();
    this->mUnk_11 = 1;
    this->mUnk_12 = 0;
    this->mUnk_10 = 1;
}

// --- data_ov000_020eec9c ---
ARM UnkStruct_020eec9c::UnkStruct_020eec9c() {
    this->mUnk_04 = 0;
    this->mUnk_08 = 0;
    this->mUnk_09 = 0;
    this->mUnk_0a = 1;
    this->mUnk_0b = 0;
    this->mUnk_0c = 0;
    this->mUnk_10 = 0;
    this->mUnk_14 = -1;
    this->mUnk_18 = -1;
    this->mUnk_1c = 0;
    this->mUnk_20 = 0;
    this->mUnk_24 = -1;

    UnkStruct_020eec9c_28 *pUnk_28 = &this->mUnk_28[0];
    do {
        pUnk_28->mUnk_00 = 0;
        pUnk_28->mUnk_04 = 0;
        pUnk_28->mUnk_06 = 0;
        pUnk_28->mUnk_07 = 0;
        pUnk_28++;
    } while (pUnk_28 < &this->mUnk_28[ARRAY_LEN(this->mUnk_28)]);

    this->mUnk_88 = 0;
}

ARM void UnkStruct_020eec9c::func_ov008_0211337c() {
    if (func_0200dd94() != 0) {
        return;
    }

    this->mUnk_00.func_0201f704();

    UnkStruct_020eec9c_28 *pUnk_28 = &this->mUnk_28[0];
    for (s32 i = 0; i < 8; i++) {
        pUnk_28->mUnk_08.func_0201f704();
        pUnk_28++;
    }
}

// --- data_ov000_020ee820 ---
ARM UnkStruct_020ee820::UnkStruct_020ee820() {
    this->mUnk_00 = false;
    this->mUnk_01 = 0;
    this->mUnk_02 = 0;
    this->mUnk_20 = -1;
    Fill256(0, this->mUnk_40, sizeof(this->mUnk_40));
}

ARM void UnkStruct_020ee820::func_ov008_021133f0() {
    if (this->mUnk_00) {
        return;
    }

    func_0200aa20();
    this->mUnk_04.mUnk_00 = 0;
    this->mUnk_08         = this->mUnk_40;
    this->mUnk_0c         = sizeof(this->mUnk_40);
    this->mUnk_10         = 0x105D;
    this->mUnk_14         = 1;
    this->mUnk_18         = 0;
    this->mUnk_1c         = 0;
    func_0200afac();
    func_0200b4dc(1);
    this->func_ov000_020d69d4(2);
    this->mUnk_00 = true;
}

// --- data_ov000_020eec60 ---
ARM UnkStruct_020eec60::UnkStruct_020eec60() {
    this->mUnk_00 = false;
    this->mUnk_01 = 0;
    this->mUnk_02 = 0;
}

ARM void UnkStruct_020eec60::func_ov008_02113474() {
    if (data_ov000_020ee820.mUnk_00 && !this->mUnk_00) {
        data_ov000_020ee820.mUnk_04.func_020156b4();
        this->mUnk_00 = true;
    }

    func_02015718();
}

// --- data_ov000_020ee6f8 ---
ARM UnkStruct_020ee6f8::UnkStruct_020ee6f8() {
    this->mUnk_04 = false;
    this->mUnk_08 = 0x10;
    this->mUnk_0c = 0x10;
    this->mUnk_10 = 0;
    this->mUnk_14 = 0;

    UnkStruct_020ee6f8_18 *pUnk_18 = &this->mUnk_18[0];
    do {
        pUnk_18->mUnk_00 = -1;
        pUnk_18->mUnk_04 = -1;
        pUnk_18++;
    } while (pUnk_18 < &this->mUnk_18[ARRAY_LEN(this->mUnk_18)]);

    this->mUnk_38 = false;
    this->mUnk_00.func_0201f704();
    this->mUnk_38 = true;
}

// --- data_ov000_020ee0a0 ---
ARM UnkStruct_020ee0a0::UnkStruct_020ee0a0() {
    this->mUnk_00 = 0;
    this->mUnk_02 = 0x7FFF;
    this->mUnk_04 = 0;
    this->mUnk_08 = 6;
    this->mUnk_0c = 0xA0;
    this->mUnk_10 = 0x1F;
    this->mUnk_34 = -1;
    this->mUnk_38 = 6;
    this->mUnk_3c = 0xA0;
    this->mUnk_40 = 0x1F;
    this->mUnk_44 = 0;
    this->mUnk_45 = 0x1F;
    this->mUnk_46 = 0x1F;
    this->mUnk_47 = 0x1F;

    s32 uVar5 = 0x0;
    s32 iVar2 = 0x4;
    s32 iVar3 = 0x8;
    s32 iVar4 = 0xc;

    for (s32 iVar6 = 0; iVar6 < ARRAY_LEN(this->mUnk_14); iVar6++) {
        s32 iVar1            = iVar6 * 0x4;
        iVar6                = iVar6 + 0x1;
        this->mUnk_14[iVar1] = uVar5 | iVar2 << 8 | iVar3 << 16 | iVar4 << 24;
        iVar2                = iVar2 + 0x10;
        uVar5                = uVar5 + 0x10;
        iVar3                = iVar3 + 0x10;
        iVar4                = iVar4 + 0x10;
    }
}

ARM void UnkStruct_020ee0a0::func_ov008_021135b8() {}

// --- data_027e0f88 ---
ARM UnkStruct_027e0f88::UnkStruct_027e0f88(u32 *param_1) {
    this->mUnk_00 = 2;
    this->mUnk_0e = 0;
    this->mUnk_10 = 0x1000;
    this->mUnk_12 = 0;

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_04); i++) {
        if (i < this->mUnk_00) {
            this->mUnk_04[i] = new(param_1, 4) UnkStruct_027e0f88_04(i, 0x7FFF, 0x2000, ~0x1FFF, 1);
        } else {
            this->mUnk_04[i] = NULL;
        }

        this->mUnk_04[i]->mUnk_0c = 0;
    }

    this->func_ov000_020a1a3c();
}

ARM void UnkStruct_027e0f88::func_ov008_02113678(u32 *param_1) {
    if (data_027e0f88 != NULL) {
        return;
    }

    data_027e0f88 = new(param_1, 4) UnkStruct_027e0f88(param_1);
}

ARM UnkStruct_027e0f88_04::UnkStruct_027e0f88_04(unk32 param_1, unk16 param_2, unk32 param_3, unk16 param_4, u8 param_5) {
    this->mUnk_00 = param_1;
    this->mUnk_04 = param_5;
    this->mUnk_06 = param_2;
    this->func_ov000_020a1b54(param_4, param_5);
}

// --- data_ov000_020eed2c ---
ARM UnkStruct_020eed2c::UnkStruct_020eed2c() {
    this->mUnk_00 = 0;
    this->mUnk_02 = 0;
}

// --- data_027e0dbc ---
ARM UnkStruct_027e0dbc::UnkStruct_027e0dbc() {
    this->mUnk_1c = 0;
    this->mUnk_20 = FRAME_COUNTER;
    this->mUnk_24 = 0;
    this->func_02042744(&this->mUnk_10);
}

// --- gSaveItemManager ---
ARM SaveItemManager::SaveItemManager() {
    Fill32(0, this->unk_e9c, sizeof(this->unk_e9c));
    Fill32(0, this->unk_ea4, sizeof(this->unk_ea4));
    this->unk_cec.func_ov000_0207a3e4();
    Fill32(0, this->unk_eb0, sizeof(this->unk_eb0));
    Fill32(0, this->unk_eb8, sizeof(this->unk_eb8));
    Fill32(0, this->unk_eb8, sizeof(this->unk_eb8));
    this->func_ov000_0207a418();
    Fill256(0, this->unk_1400, sizeof(this->unk_1400));

    SaveItemManager_2580 *pUnk_2580 = &this->unk_2580[0];
    do {
        Fill16(0, pUnk_2580->mUnk_00, sizeof(pUnk_2580->mUnk_00));
        pUnk_2580++;
    } while (pUnk_2580 < &this->unk_2580[ARRAY_LEN(this->unk_2580)]);

    this->unk_2840.func_ov000_0207a4f0();
    this->unk_2400.func_ov000_0207a5ac();

    UnkStruct_020ec7dc_00 *pUnk_2900 = &this->unk_2900.mUnk_00[0];
    do {
        Fill16(0, pUnk_2900->mUnk_00, sizeof(pUnk_2900->mUnk_00));
        pUnk_2900++;
    } while (pUnk_2900 < &this->unk_2900.mUnk_00[ARRAY_LEN(this->unk_2900.mUnk_00)]);

    this->unk_2900.func_ov000_0207c170();
    Fill32(0, (u32 *) this->unk_2900.mUnk_3c, sizeof(this->unk_2900.mUnk_3c));
    this->unk_2940.func_ov000_0207a6d0();
    this->unk_29c0 = 0;
}

ARM SaveItemManager_d1c::~SaveItemManager_d1c() {}

ARM SaveItemManager_d1c::SaveItemManager_d1c() {}

ARM SaveItemManager_2f8::~SaveItemManager_2f8() {}

ARM SaveItemManager_2f8::SaveItemManager_2f8() {
    Fill32(0, this->mUnk_00, sizeof(this->mUnk_00));
    Fill32(0, this->mUnk_08, sizeof(this->mUnk_08));
    Fill32(0, this->mUnk_00, sizeof(this->mUnk_00));
    Fill32(0, this->mUnk_08, sizeof(this->mUnk_08));
}

ARM SaveItemManager_f8::~SaveItemManager_f8() {}

ARM SaveItemManager_f8::SaveItemManager_f8() {
    Fill32(0, this->mUnk_00, sizeof(this->mUnk_00) / 2); // ?
    Fill32(0, this->mUnk_00, sizeof(this->mUnk_00));
}

// --- data_ov000_020e9370 ---
ARM UnkStruct_020e9370::UnkStruct_020e9370() {
    this->mUnk_900 = 0;
    this->mUnk_904 = 0;
    this->mUnk_908 = 0;
    this->mUnk_90a = 0;
    this->mUnk_90c = 320;
    this->mUnk_910 = 480;
    this->mUnk_914 = 2;
}

// --- data_ov000_020e9360 ---
ARM UnkStruct_020e9360::UnkStruct_020e9360() {
    unk32 val1 = data_ov000_020d8795;
    u8 *val2   = data_ov000_020d88b4;

    this->mUnk_00 = val2;
    this->mUnk_0f = val1;

    Fill(this->mUnk_04, 0, sizeof(this->mUnk_04));

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_04); i++) {
        this->mUnk_04[i] = this->mUnk_00[i * 2 + 1];
    }
}

// --- data_ov000_020ec7dc ---
ARM UnkStruct_020ec7dc::UnkStruct_020ec7dc() {
    UnkStruct_020ec7dc_00 *pUnk_00 = &this->mUnk_00[0];
    do {
        Fill16(0, pUnk_00->mUnk_00, sizeof(pUnk_00->mUnk_00));
        pUnk_00++;
    } while (pUnk_00 < &this->mUnk_00[ARRAY_LEN(this->mUnk_00)]);

    this->func_ov000_0207c170();
    this->mUnk_3c[0] = 0;
}
